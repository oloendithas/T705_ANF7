.class Lcom/diotek/ime/framework/common/InputManagerImpl$2;
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
    .line 1354
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x25

    const/4 v4, 0x0

    .line 1357
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1417
    :goto_0
    return-void

    .line 1359
    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mCountOfTriedInputOCR:I
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v2, v2, Lcom/diotek/ime/framework/common/InputManagerImpl;->mStringfromOcr:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v2, v2, Lcom/diotek/ime/framework/common/InputManagerImpl;->mStringfromOcr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1361
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setGetOcrString(Z)V

    .line 1362
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mCountOfTriedInputOCR:I
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$202(Lcom/diotek/ime/framework/common/InputManagerImpl;I)I

    goto :goto_0

    .line 1366
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1367
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_3

    const-string v2, "com.sec.android.app.ocr"

    iget-object v3, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sec.android.app.ocrlite"

    iget-object v3, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sec.android.app.ocr3"

    iget-object v3, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1369
    :cond_2
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOcrHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$300()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1370
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # operator++ for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mCountOfTriedInputOCR:I
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$208(Lcom/diotek/ime/framework/common/InputManagerImpl;)I

    goto :goto_0

    .line 1374
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1375
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v2, v2, Lcom/diotek/ime/framework/common/InputManagerImpl;->mStringfromOcr:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->isGetOcrString:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1382
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v2, v2, Lcom/diotek/ime/framework/common/InputManagerImpl;->mStringfromOcr:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1394
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setGetOcrString(Z)V

    .line 1395
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mCountOfTriedInputOCR:I
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$202(Lcom/diotek/ime/framework/common/InputManagerImpl;I)I

    goto/16 :goto_0

    .line 1383
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsDisableLoopOfOcr:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1387
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOcrHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$300()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1388
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$2;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # operator++ for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mCountOfTriedInputOCR:I
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$208(Lcom/diotek/ime/framework/common/InputManagerImpl;)I

    goto/16 :goto_0

    .line 1357
    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method
