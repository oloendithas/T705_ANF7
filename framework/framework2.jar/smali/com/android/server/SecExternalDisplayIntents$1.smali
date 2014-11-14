.class Lcom/android/server/SecExternalDisplayIntents$1;
.super Landroid/content/BroadcastReceiver;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayIntents;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayIntents;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    const/4 v13, -0x1

    .line 248
    .local v13, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "action":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    # getter for: Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/SecExternalDisplayIntents;->access$000(Lcom/android/server/SecExternalDisplayIntents;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 251
    .local v1, "IntentInfo":I
    const-string v14, "SecExternalDisplayIntents_Java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Intent Recieved ..  -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "BroadCast Map value - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v14, Lcom/android/server/SecExternalDisplayIntents$2;->$SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    invoke-static {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_308

    .line 407
    .end local v1    # "IntentInfo":I
    :cond_48
    :goto_48
    return-void

    .line 256
    .restart local v1    # "IntentInfo":I
    :pswitch_49
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_54

    .line 257
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered HDMI Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_54
    const-string/jumbo v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 259
    .local v7, "bStatus":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14, v7}, Lcom/android/server/SecExternalDisplayService;->handleHDMIConnection(Z)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_67} :catch_68

    goto :goto_48

    .line 403
    .end local v1    # "IntentInfo":I
    .end local v7    # "bStatus":Z
    :catch_68
    move-exception v9

    .line 405
    .local v9, "e":Ljava/lang/Exception;
    const-string v14, "SecExternalDisplayIntents_Java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception at :: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 263
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "IntentInfo":I
    :pswitch_82
    :try_start_82
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_8d

    .line 264
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered rear camera Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_8d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v15, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->handleCameraConnection(I)Z

    goto :goto_48

    .line 269
    :pswitch_9b
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_a6

    .line 270
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered Front Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_a6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v15, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->handleCameraConnection(I)Z

    goto :goto_48

    .line 275
    :pswitch_b4
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_bf

    .line 276
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered Camera Stop Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_bf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v15, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->handleCameraConnection(I)Z

    goto/16 :goto_48

    .line 281
    :pswitch_ce
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_d9

    .line 282
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered RVF Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_d9
    const-string/jumbo v14, "running"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 284
    .local v6, "bRVFStatus":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v14, v6}, Lcom/android/server/SecExternalDisplayOrientation;->handleRVFConnection(Z)Z

    goto/16 :goto_48

    .line 288
    .end local v6    # "bRVFStatus":Z
    :pswitch_ec
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_f7

    .line 289
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered WFD Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_f7
    const-string/jumbo v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 291
    .local v4, "bAllShareCastConnectedFlag":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14, v4}, Lcom/android/server/SecExternalDisplayService;->handleWFDConnection(I)Z

    goto/16 :goto_48

    .line 297
    .end local v4    # "bAllShareCastConnectedFlag":I
    :pswitch_10c
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_117

    .line 298
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered Camera Start Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_48

    .line 305
    :pswitch_123
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_12e

    .line 306
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered Camera Stop Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_12e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_48

    .line 311
    :pswitch_13a
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_145

    .line 312
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered SideSync Connected Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->handleSideSyncConnection(Z)Z

    goto/16 :goto_48

    .line 317
    :pswitch_14f
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_15a

    .line 318
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered SideSync DC Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_15a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->handleSideSyncConnection(Z)Z

    goto/16 :goto_48

    .line 324
    :pswitch_164
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_16f

    .line 325
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered ScreenRecorder Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_16f
    const/4 v2, 0x0

    .line 327
    .local v2, "SRState":Ljava/lang/String;
    const-string v14, "IsRunning"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    const-string v14, "SecExternalDisplayIntents_Java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ScreenRecorder State is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string/jumbo v14, "run"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1ac

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v15, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_48

    .line 332
    :cond_1ac
    const-string/jumbo v14, "stop"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v15, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_48

    .line 337
    .end local v2    # "SRState":Ljava/lang/String;
    :pswitch_1c8
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_1d3

    .line 338
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered SmartDock Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1d3
    const-string v14, "android.intent.extra.device_state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 340
    .local v5, "bMouseDockedFlag":I
    const-string v14, "SecExternalDisplayIntents_Java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14, v5}, Lcom/android/server/SecExternalDisplayService;->handleSmartDockConnection(I)Z

    goto/16 :goto_48

    .line 345
    .end local v5    # "bMouseDockedFlag":I
    :pswitch_1ff
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_20a

    .line 346
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered ScreenLock Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_20a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    goto/16 :goto_48

    .line 351
    :pswitch_214
    sget-boolean v14, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v14, :cond_21f

    .line 352
    const-string v14, "SecExternalDisplayIntents_Java"

    const-string v15, "entered Screen Unlocked Case"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_21f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v15, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v14

    if-nez v14, :cond_243

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v15, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 355
    :cond_243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    goto/16 :goto_48

    .line 359
    :pswitch_24d
    const-string/jumbo v14, "value"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-static {v13}, Lcom/android/server/SecExternalDisplayService;->setAidDim(I)V

    goto/16 :goto_48

    .line 364
    :pswitch_262
    const-string/jumbo v14, "value"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-static {v13}, Lcom/android/server/SecExternalDisplayService;->setEnableDualScanMode(I)V

    goto/16 :goto_48

    .line 369
    :pswitch_277
    const-string/jumbo v14, "value"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14, v13}, Lcom/android/server/SecExternalDisplayService;->acquireCpuMinLock(I)V

    goto/16 :goto_48

    .line 374
    :pswitch_28c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14}, Lcom/android/server/SecExternalDisplayService;->releaseCpuMinLock()V

    goto/16 :goto_48

    .line 378
    :pswitch_297
    const-string/jumbo v14, "value"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14, v13}, Lcom/android/server/SecExternalDisplayService;->acquireGpuMinLock(I)V

    goto/16 :goto_48

    .line 383
    :pswitch_2ac
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14}, Lcom/android/server/SecExternalDisplayService;->releaseGpuMinLock()V

    goto/16 :goto_48

    .line 387
    :pswitch_2b7
    const-string/jumbo v14, "value"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-static {v13}, Lcom/android/server/SecExternalDisplayService;->setHmtOn(I)V

    goto/16 :goto_48

    .line 392
    :pswitch_2cc
    const-string v14, "esd"

    const v15, 0x3d27ef9e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    .line 393
    .local v10, "esd":F
    const-string v14, "lsd"

    const v15, 0x3d4ccccd

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v12

    .line 394
    .local v12, "lsd":F
    const-string v14, "ipd"

    const v15, 0x3d83126f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v11

    .line 395
    .local v11, "ipd":F
    const-string v14, "distortion"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v8

    .line 396
    .local v8, "distK":[F
    if-nez v8, :cond_2fd

    .line 397
    const/4 v14, 0x4

    new-array v8, v14, [F

    .end local v8    # "distK":[F
    fill-array-data v8, :array_342

    .line 399
    .restart local v8    # "distK":[F
    :cond_2fd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v14, v14, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v14, v10, v12, v11, v8}, Lcom/android/server/SecExternalDisplayService;->setHMTParams(FFF[F)Z
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_306} :catch_68

    goto/16 :goto_48

    .line 253
    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_49
        :pswitch_82
        :pswitch_9b
        :pswitch_b4
        :pswitch_ce
        :pswitch_ec
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_13a
        :pswitch_14f
        :pswitch_164
        :pswitch_164
        :pswitch_1c8
        :pswitch_1ff
        :pswitch_214
        :pswitch_24d
        :pswitch_262
        :pswitch_277
        :pswitch_28c
        :pswitch_297
        :pswitch_2ac
        :pswitch_2b7
        :pswitch_2cc
    .end packed-switch

    .line 397
    :array_342
    .array-data 4
        0x3f800000
        0x3d3851ec
        0x3d8f5c29
        0x0
    .end array-data
.end method
