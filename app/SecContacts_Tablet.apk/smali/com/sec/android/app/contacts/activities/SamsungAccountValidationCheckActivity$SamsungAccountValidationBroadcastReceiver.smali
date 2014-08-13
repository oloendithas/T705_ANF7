.class public Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungAccountValidationCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungAccountValidationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    const-string v2, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "Get result of validation check"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$100(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$100(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$100(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$102(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 346
    :cond_0
    const-string v2, "result_code"

    const/16 v3, -0x3e7

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 349
    .local v18, "resultCode":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 350
    :try_start_0
    const-string v2, "validation_result"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 352
    .local v20, "validationResult":Ljava/lang/Boolean;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 353
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "Validation is OK"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->writeValidationSamsungAccountToPreference()V
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$200(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$300(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    .line 426
    .end local v18    # "resultCode":I
    .end local v20    # "validationResult":Ljava/lang/Boolean;
    :cond_1
    :goto_0
    return-void

    .line 357
    .restart local v18    # "resultCode":I
    .restart local v20    # "validationResult":Ljava/lang/Boolean;
    :cond_2
    const-string v2, "check_list"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 360
    .local v15, "checklist":I
    const/4 v13, 0x2

    .line 362
    .local v13, "MASK_REQUIRE_TNC":I
    const/4 v12, 0x4

    .line 364
    .local v12, "MASK_REQUIRE_NAME":I
    const/16 v10, 0x8

    .line 369
    .local v10, "MASK_REQUIRE_EMAIL":I
    const/16 v11, 0x10

    .line 371
    .local v11, "MASK_REQUIRE_MANDATORY":I
    and-int/lit8 v2, v15, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 372
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "require Tnc Agreement"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_3
    and-int/lit8 v2, v15, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 375
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "require Name Verification"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_4
    and-int/lit8 v2, v15, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 378
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "require  E-mail Certificate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    and-int/lit8 v2, v15, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    .line 381
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "need to fill out required fields"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_6
    if-lez v15, :cond_1

    .line 385
    const-string v2, "REQUIRED_PROCESS_ACTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 387
    .local v17, "processAction":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "Request to validate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    .end local v10    # "MASK_REQUIRE_EMAIL":I
    .end local v11    # "MASK_REQUIRE_MANDATORY":I
    .end local v12    # "MASK_REQUIRE_NAME":I
    .end local v13    # "MASK_REQUIRE_TNC":I
    .end local v15    # "checklist":I
    .end local v17    # "processAction":Ljava/lang/String;
    .end local v20    # "validationResult":Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    throw v2

    .line 393
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    .line 394
    :try_start_1
    const-string v2, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 395
    .local v16, "errorMessage":Ljava/lang/String;
    const-string v2, "SamsungAccountValidationCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get validation info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    .line 399
    .local v14, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v14}, Lcom/android/contacts/model/AccountTypeManager;->getSamsungAccountsWithDataSet()Ljava/util/List;

    move-result-object v19

    .line 400
    .local v19, "samsungAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_8

    .line 401
    new-instance v8, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;)V

    .line 409
    .local v8, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.osp.app.signin"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 416
    .end local v8    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$000(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;I)V

    goto/16 :goto_0

    .line 414
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const v3, 0x7f0e048b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 418
    .end local v14    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v16    # "errorMessage":Ljava/lang/String;
    .end local v19    # "samsungAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_9
    const-string v2, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 419
    .restart local v16    # "errorMessage":Ljava/lang/String;
    const-string v2, "SamsungAccountValidationCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const v3, 0x7f0e048b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$000(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
