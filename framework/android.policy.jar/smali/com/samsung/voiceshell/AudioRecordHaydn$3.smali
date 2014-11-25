.class Lcom/samsung/voiceshell/AudioRecordHaydn$3;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 273
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 276
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_0

    .line 425
    :catch_1a
    move-exception v13

    .line 426
    .local v13, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception error in Enroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_39
    return-void

    .line 280
    :cond_3a
    const/4 v10, 0x0

    .line 281
    .local v10, "iResult":I
    const/4 v15, 0x0

    .line 282
    .local v15, "vResult":I
    const/4 v14, 0x0

    .line 285
    .local v14, "uResult":I
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$402(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d7

    .line 328
    :cond_9f
    :goto_9f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-lez v1, :cond_300

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_300

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v1, :cond_10f

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v1 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotPipe(J[SJJ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: phrasespotPipe consoleResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_10f
    :goto_10f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->computeEnergyFrame([SII)I

    move-result v12

    .line 355
    .local v12, "rms":I
    const-wide v1, 0x3ff3333333333333L

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x400dc28f5c28f5c3L

    sub-double/2addr v1, v3

    double-to-int v12, v1

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-le v12, v1, :cond_3ad

    .line 358
    const-wide v1, 0x3feccccccccccccdL

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v12, v1

    .line 362
    :goto_17a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v1, v12}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1202(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_194

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v12}, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmsSendHandlerMessage(I)V

    .line 370
    :cond_194
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-ge v11, v1, :cond_3cd

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1300()[S

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa0

    invoke-static {v1, v11, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_1af} :catch_1a

    .line 374
    :try_start_1af
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1300()[S

    move-result-object v2

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1400()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->getSpectrum([S[I)I
    :try_end_1c0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1af .. :try_end_1c0} :catch_3c3
    .catch Ljava/lang/Throwable; {:try_start_1af .. :try_end_1c0} :catch_1a

    .line 378
    :goto_1c0
    :try_start_1c0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1400()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->spectrumSendHandlerMessage([I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v11, v1

    goto :goto_195

    .line 294
    .end local v11    # "index":I
    .end local v12    # "rms":I
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_29f

    .line 297
    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    if-nez v1, :cond_234

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->processEnroll([SI)I

    move-result v14

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processEnroll uResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x2

    if-ne v14, v1, :cond_9f

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secMM: isPipeRecogEnrollSuccess = true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 309
    :cond_234
    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9f

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9f

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v4, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->processVerify([SILjava/lang/String;[S)I

    move-result v10

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer iResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CommandType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v4, 0x0

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 320
    :cond_29f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v4, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v6, v6, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/voiceshell/VoiceEngine;->processBuffer([SILjava/lang/String;[S[S)I

    move-result v10

    .line 321
    if-eqz v10, :cond_9f

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer iResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CommandType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v4, 0x0

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 336
    :cond_300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v1, :cond_375

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v1 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotPipe(J[SJJ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: phrasespotPipe consoleResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 345
    :cond_375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->ProcessShortArray([SI)I

    move-result v15

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer vResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 360
    .restart local v12    # "rms":I
    :cond_3ad
    const-wide/high16 v1, 0x3fd0000000000000L

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe8000000000000L

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v12, v1

    goto/16 :goto_17a

    .line 375
    .restart local v11    # "index":I
    :catch_3c3
    move-exception v9

    .line 376
    .local v9, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "test_engine"

    const-string v2, "old Binary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c0

    .line 381
    .end local v9    # "e":Ljava/lang/NoSuchMethodError;
    :cond_3cd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    iput-short v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    if-eqz v1, :cond_3f6

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    goto/16 :goto_0

    .line 388
    :cond_3f6
    const/4 v1, 0x1

    if-ne v15, v1, :cond_415

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_40b

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 393
    :cond_40b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 395
    :cond_415
    const/4 v1, 0x1

    if-ne v10, v1, :cond_444

    .line 398
    const/4 v1, 0x2

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$702(I)I

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v10}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setAdaptation(I)I

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_43a

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 405
    :cond_43a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 407
    :cond_444
    const/4 v1, -0x3

    if-ne v10, v1, :cond_46c

    .line 410
    const/4 v1, 0x2

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$702(I)I

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_462

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 415
    :cond_462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 417
    :cond_46c
    const/16 v1, -0xc

    if-ne v10, v1, :cond_0

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V
    :try_end_487
    .catch Ljava/lang/Throwable; {:try_start_1c0 .. :try_end_487} :catch_1a

    goto/16 :goto_0
.end method
