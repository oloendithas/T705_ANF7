.class Lcom/android/server/sec/InternalClipboardExService$5;
.super Landroid/os/Handler;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1295
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1392
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "ClipboardServiceEx"

    const-string v11, "handler msg : default"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1395
    :cond_1
    :goto_0
    return-void

    .line 1302
    :pswitch_0
    const/4 v8, 0x0

    .line 1303
    .local v8, "isClearDialogShown":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1305
    const/4 v8, 0x1

    .line 1306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 1308
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->enabledDismissIntent(Z)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 1312
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v11, Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I
    invoke-static {v15}, Lcom/android/server/sec/InternalClipboardExService;->access$900(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/sec/clipboard/ClipboardExManager;-><init>(Landroid/content/Context;I)V

    invoke-direct {v11, v12, v13}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10, v11}, Lcom/android/server/sec/InternalClipboardExService;->access$702(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 1315
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v11}, Lcom/android/server/sec/InternalClipboardExService;->access$1000(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v12}, Lcom/android/server/sec/InternalClipboardExService;->access$1100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    .line 1324
    if-eqz v8, :cond_1

    .line 1325
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 1326
    .local v7, "handler":Landroid/os/Handler;
    new-instance v10, Lcom/android/server/sec/InternalClipboardExService$5$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/sec/InternalClipboardExService$5$1;-><init>(Lcom/android/server/sec/InternalClipboardExService$5;)V

    const-wide/16 v11, 0x32

    invoke-virtual {v7, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1341
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v8    # "isClearDialogShown":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1342
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v11}, Lcom/android/server/sec/InternalClipboardExService;->access$1000(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v12}, Lcom/android/server/sec/InternalClipboardExService;->access$1100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto/16 :goto_0

    .line 1346
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1347
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "ClipboardServiceEx"

    const-string v11, "mCBPickerDialog enter case. MSG_DISMISS_DIALOG"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 1350
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v10, v11}, Lcom/android/server/sec/InternalClipboardExService;->access$702(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    goto/16 :goto_0

    .line 1354
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1355
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1356
    const-string v10, "deletePath"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1357
    .local v6, "filePath":Ljava/lang/String;
    const-string v10, "extraDataPath"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1359
    .local v5, "extraFilePath":Ljava/lang/String;
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "ClipboardServiceEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete intent will be called. filePath :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", extraFilePath :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_6
    const/4 v4, 0x0

    .line 1361
    .local v4, "deleteIntent":Landroid/content/Intent;
    if-eqz v6, :cond_8

    const-string v10, "data/data1/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1362
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v10, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .restart local v4    # "deleteIntent":Landroid/content/Intent;
    :goto_1
    const/16 v10, 0x20

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1367
    const-string v10, "deletePath"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 1369
    const-string v10, "extraDataPath"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1364
    :cond_8
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "deleteIntent":Landroid/content/Intent;
    const-string v10, "com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "deleteIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1376
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "extraFilePath":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1377
    .local v2, "bundleUri":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1378
    const-string/jumbo v10, "uriPath"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1379
    .local v9, "uriPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1380
    .local v3, "copyIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$900(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 1381
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "copyIntent":Landroid/content/Intent;
    const-string/jumbo v10, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_COPY_URI_RECEIVER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .restart local v3    # "copyIntent":Landroid/content/Intent;
    :goto_2
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1386
    const-string/jumbo v10, "uriPath"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1383
    :cond_9
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "copyIntent":Landroid/content/Intent;
    const-string v10, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_URI_RECEIVER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "copyIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
