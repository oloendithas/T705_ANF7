.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x4

    const/4 v11, -0x1

    .line 422
    :goto_3
    :try_start_3
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 423
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 425
    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_3

    .line 606
    :catch_19
    move-exception v6

    .line 608
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception error in Enroll : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_36
    return-void

    .line 429
    :cond_37
    const/4 v2, 0x0

    .line 430
    .local v2, "iResult":I
    const/4 v5, 0x0

    .line 431
    .local v5, "recResult":I
    const/4 v0, 0x0

    .line 432
    .local v0, "ReENROLL":Z
    const/4 v7, 0x4

    :try_start_3b
    new-array v4, v7, [S

    .line 435
    .local v4, "probINDEX":[S
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeEnroll()I

    .line 437
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x65

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    if-ge v1, v12, :cond_14c

    .line 441
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_1b8

    .line 443
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryProcessEnroll()I

    .line 445
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v7, :cond_70

    .line 447
    if-nez v0, :cond_179

    .line 449
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    add-int/lit8 v8, v1, 0x1

    int-to-short v8, v8

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v5

    .line 458
    :cond_70
    :goto_70
    if-nez v5, :cond_1ac

    .line 460
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_79

    .line 462
    const/4 v2, -0x1

    .line 479
    :cond_79
    :goto_79
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "secMM: ProcessEnroll.result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-ne v2, v12, :cond_124

    .line 483
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x66

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 485
    const/4 v3, 0x0

    .line 487
    .local v3, "ii":I
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_1c0

    .line 489
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_bc

    .line 491
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    invoke-virtual {v7, v8, v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->consistencyCheckEnroll(S[S)I

    move-result v3

    .line 502
    :cond_bc
    :goto_bc
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consistencyCheckEnroll.result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-ne v3, v12, :cond_110

    .line 506
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_1d6

    .line 508
    const/4 v0, 0x0

    .line 510
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_110

    .line 512
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "secMM: Start doEnroll"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v7, :cond_105

    .line 515
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 517
    :cond_105
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "secMM: End doEnroll"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_110
    :goto_110
    const/4 v7, 0x5

    if-ne v3, v7, :cond_116

    .line 533
    add-int/lit8 v1, v1, -0x1

    .line 534
    const/4 v0, 0x1

    .line 536
    :cond_116
    const/4 v7, 0x6

    if-lt v3, v7, :cond_11c

    .line 540
    const/4 v1, -0x1

    .line 541
    const/4 v2, -0x3

    .line 542
    const/4 v0, 0x0

    .line 545
    :cond_11c
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x67

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 548
    .end local v3    # "ii":I
    :cond_124
    if-ne v2, v11, :cond_1ef

    .line 550
    add-int/lit8 v1, v1, -0x1

    .line 571
    :cond_128
    :goto_128
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_21b

    .line 573
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_140

    if-ne v5, v13, :cond_140

    .line 575
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x65

    add-int/lit8 v9, v1, 0x1

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 583
    :cond_140
    :goto_140
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_227

    .line 585
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v7, :cond_227

    .line 594
    :cond_14c
    :goto_14c
    const/4 v7, -0x3

    if-ne v2, v7, :cond_230

    .line 596
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v8, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v7, v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 597
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pause to enroll, isRunning_enroll : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 453
    :cond_179
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    const/4 v8, 0x0

    aget-short v8, v4, v8

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v5

    .line 454
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VSG: ReENROLL for index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-short v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 465
    :cond_1ac
    if-ne v5, v13, :cond_1b2

    .line 467
    add-int/lit8 v2, v1, 0x1

    goto/16 :goto_79

    .line 469
    :cond_1b2
    const/4 v7, 0x2

    if-ne v5, v7, :cond_79

    .line 471
    const/4 v2, -0x3

    goto/16 :goto_79

    .line 476
    :cond_1b8
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ProcessEnroll()I

    move-result v2

    goto/16 :goto_79

    .line 496
    .restart local v3    # "ii":I
    :cond_1c0
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v7, :cond_bc

    .line 498
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/samsung/voiceshell/VoiceEngine;->consistencyCheckEnroll(Ljava/lang/String;S)I

    move-result v3

    goto/16 :goto_bc

    .line 522
    :cond_1d6
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/VoiceEngine;->setModelStatus(Ljava/lang/String;IS)I

    .line 523
    sget-object v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    const/4 v9, 0x1

    aput v9, v7, v8

    goto/16 :goto_110

    .line 552
    .end local v3    # "ii":I
    :cond_1ef
    const/4 v7, -0x2

    if-ne v2, v7, :cond_1f6

    .line 554
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_128

    .line 556
    :cond_1f6
    const/4 v7, -0x3

    if-eq v2, v7, :cond_14c

    .line 560
    const/4 v7, -0x4

    if-ne v2, v7, :cond_20d

    .line 562
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x68

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    const/4 v10, 0x0

    aget-short v9, v9, v10

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_14c

    .line 565
    :cond_20d
    const/4 v7, -0x5

    if-ne v2, v7, :cond_128

    .line 567
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x69

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_14c

    .line 580
    :cond_21b
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x65

    add-int/lit8 v9, v1, 0x1

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_140

    .line 591
    :cond_227
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4c

    .line 601
    :cond_230
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 603
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v8, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v7, v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    :try_end_23b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_23b} :catch_19

    goto/16 :goto_3
.end method
