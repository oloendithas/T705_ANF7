.class Lcom/android/server/sec/ClippedDataPickerDialog$8;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$currentMode:I

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V
    .locals 0

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$currentMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1306
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 1307
    .local v3, "mFileHelper":Landroid/sec/clipboard/util/FileHelper;
    const/4 v1, 0x0

    .line 1308
    .local v1, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1309
    .local v0, "bitData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1311
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1313
    .local v2, "imageIntent":Landroid/content/Intent;
    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$currentMode:I

    if-nez v5, :cond_1

    .line 1314
    invoke-virtual {v3}, Landroid/sec/clipboard/util/FileHelper;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 1315
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "imageIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.clipboardsaveservice.CLIPBOARD_SAVE_RECEIVER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    .restart local v2    # "imageIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1322
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1323
    const-string v5, "copyPath"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const-string v5, "pastePath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Clipboard/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string v5, "darkTheme"

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1326
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1328
    :cond_0
    return-void

    .line 1317
    :cond_1
    const-string v1, "/mnt/sdcard"

    .line 1318
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "imageIntent":Landroid/content/Intent;
    const-string/jumbo v5, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_SAVE_RECEIVER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "imageIntent":Landroid/content/Intent;
    goto :goto_0
.end method
