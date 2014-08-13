.class Lcom/diotek/ime/framework/common/InputManagerImpl$4;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1463
    .local v21, "sp":Landroid/content/SharedPreferences;
    const/4 v8, 0x0

    .line 1464
    .local v8, "isFirstExecution":Z
    const/4 v5, 0x0

    .line 1465
    .local v5, "isAnotherPopupShowing":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v17

    .line 1466
    .local v17, "mIsSwiftKeySDK":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "SETTINGS_USE_STANDARD_DATA"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v18

    .line 1467
    .local v18, "mIsUseStandardData":Z
    const/4 v7, 0x0

    .line 1468
    .local v7, "isDLMEnable":Z
    const/4 v13, 0x0

    .line 1469
    .local v13, "isPredictionOn":Z
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1471
    .local v20, "salesCode":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1665
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1473
    :pswitch_1
    const-string v22, "first_pinch_zoom_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowZoomPinchGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_1

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_1

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showPinchZoomGuideDialog()V

    goto :goto_0

    .line 1478
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1482
    :pswitch_2
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v22

    const-string v23, "clipboardEx"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/ClipboardExManager;

    .line 1483
    .local v3, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    const/4 v6, 0x0

    .line 1484
    .local v6, "isClipBoardShowing":Z
    if-eqz v3, :cond_2

    .line 1485
    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v6

    .line 1487
    :cond_2
    const-string v22, "first_trace_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowTraceGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_3

    if-eqz v8, :cond_3

    if-nez v5, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "SETTINGS_DEFAULT_TRACE"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_3

    if-nez v6, :cond_3

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTraceGuideDialog()V

    goto/16 :goto_0

    .line 1500
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1504
    .end local v3    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    .end local v6    # "isClipBoardShowing":Z
    :pswitch_3
    const-string v22, "first_swiftkey_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1505
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    .line 1506
    .local v11, "isPersonalizedDataDefaultOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v23

    const-string v24, "SETTINGS_USE_STANDARD_DATA"

    if-nez v11, :cond_4

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v18

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateSetupWizardState()V
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    .line 1508
    const-string v23, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SwiftKey guide popup condition 1 : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v22

    if-nez v22, :cond_5

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEnabledMagnification()Z

    move-result v22

    if-nez v22, :cond_6

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEnabledMagnification()Z

    move-result v22

    if-nez v22, :cond_0

    .line 1510
    const-string v23, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SwiftKey guide popup condition 2 : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v25, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_7

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v22

    if-nez v22, :cond_8

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isTalkbackEnabled()Z

    move-result v22

    if-nez v22, :cond_9

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_a

    const/16 v22, 0x1

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    const/16 v22, 0x1

    :goto_8
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-eqz v22, :cond_c

    const-string v22, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v23, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v22

    if-nez v22, :cond_c

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isTalkbackEnabled()Z

    move-result v22

    if-nez v22, :cond_c

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showSwiftkeyGuideDialog()V

    goto/16 :goto_0

    .line 1506
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1508
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1510
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_5

    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 1533
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsKorMode:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_0

    goto/16 :goto_0

    .line 1542
    .end local v11    # "isPersonalizedDataDefaultOff":Z
    :pswitch_4
    const-string v22, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1543
    const-string v22, "first_xt9_9_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "XT9_DLM_ENABLE"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_d

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v22

    if-nez v22, :cond_d

    if-eqz v8, :cond_d

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowXt9PersonalizerConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_d

    const-string v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showXt9PersonalizerAttentionDialog()V

    goto/16 :goto_0

    .line 1554
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1558
    :pswitch_5
    const-string v22, "first_trace_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "SETTINGS_DEFAULT_TRACE"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v16, 0x1

    .line 1562
    .local v16, "isTraceGuideDisply":Z
    :goto_9
    const-string v22, "first_one_handed_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    .line 1565
    .local v4, "inputMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_LANDSCAPE"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    .line 1566
    .local v9, "isLandscape":Z
    if-nez v9, :cond_10

    if-nez v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowOneHandedGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_10

    if-eqz v8, :cond_10

    if-eqz v4, :cond_e

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v22

    if-eqz v22, :cond_10

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showOneHandedGuideDialog()V

    goto/16 :goto_0

    .line 1558
    .end local v4    # "inputMethod":I
    .end local v9    # "isLandscape":Z
    .end local v16    # "isTraceGuideDisply":Z
    :cond_f
    const/16 v16, 0x0

    goto :goto_9

    .line 1571
    .restart local v4    # "inputMethod":I
    .restart local v9    # "isLandscape":Z
    .restart local v16    # "isTraceGuideDisply":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1575
    .end local v4    # "inputMethod":I
    .end local v9    # "isLandscape":Z
    .end local v16    # "isTraceGuideDisply":Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showPenDetectionGuideDialog()V

    goto/16 :goto_0

    .line 1578
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/input/InputController;->predictionWord()Z

    goto/16 :goto_0

    .line 1581
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/input/InputController;->recaptureWordXT9()V

    goto/16 :goto_0

    .line 1584
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lcom/diotek/ime/framework/input/InputController;->previewTrace(I)V

    goto/16 :goto_0

    .line 1587
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v22

    const/16 v23, 0x9

    invoke-interface/range {v22 .. v23}, Lcom/diotek/ime/framework/input/InputController;->previewTrace(I)V

    goto/16 :goto_0

    .line 1590
    :pswitch_b
    const-string v22, "first_pinch_zoom_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1591
    .local v12, "isPinchFirstExecution":Z
    const-string v22, "first_trace_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 1592
    .local v15, "isTraceFirstExecution":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowZoomPinchGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_11

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_11

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showPinchZoomGuideDialog()V

    goto/16 :goto_0

    .line 1595
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowTraceGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_12

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "SETTINGS_DEFAULT_TRACE"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTraceGuideDialog()V

    goto/16 :goto_0

    .line 1602
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1606
    .end local v12    # "isPinchFirstExecution":Z
    .end local v15    # "isTraceFirstExecution":Z
    :pswitch_c
    const-string v22, "first_swiftkey_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1607
    .local v14, "isSwiftFirstExecution":Z
    const-string v22, "first_one_handed_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1608
    .local v10, "isOneHandFirstExecution":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v22

    if-nez v22, :cond_16

    .line 1609
    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_13

    if-eqz v14, :cond_13

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTipsSwiftkeyGuideDialog()V

    goto/16 :goto_0

    .line 1617
    :cond_13
    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowOneHandedGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemHandAdaptableOperationSettingValue()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsOrientationLandscape:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTipsOneHandedGuideDialog()V

    goto/16 :goto_0

    .line 1623
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isTipsDialogDismissed()Z

    move-result v22

    if-nez v22, :cond_15

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTipsDialogByIndex()V

    goto/16 :goto_0

    .line 1627
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1631
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1635
    .end local v10    # "isOneHandFirstExecution":Z
    .end local v14    # "isSwiftFirstExecution":Z
    :pswitch_d
    const-string v22, "fist_hwr_execution"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v19

    .line 1637
    .local v19, "recogMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowGestureGuideConsecutively:Z
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v22

    if-nez v22, :cond_17

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v22

    if-eqz v22, :cond_17

    if-nez v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v22

    if-eqz v22, :cond_17

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/view/ViewController;->showGestureGuideDialog()V

    goto/16 :goto_0

    .line 1643
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    const-string v23, "IS_POPUP_SHOW"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1647
    .end local v19    # "recogMode":I
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/input/InputController;->updateSuggestionForSwiftKey()V

    goto/16 :goto_0

    .line 1650
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/view/ViewController;->showSymbolPopupKeyboard()V

    goto/16 :goto_0

    .line 1653
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateCandidates()V
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2800(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_0

    .line 1656
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->buildSuggestions()V
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2900(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_0

    .line 1659
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1662
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManagerImpl;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    .line 1471
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method
