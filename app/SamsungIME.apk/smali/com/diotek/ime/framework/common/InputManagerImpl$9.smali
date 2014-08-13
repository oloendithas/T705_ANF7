.class Lcom/diotek/ime/framework/common/InputManagerImpl$9;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
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
    .line 8610
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8614
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8615
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 8672
    :cond_0
    :goto_0
    return-void

    .line 8619
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 8620
    .local v1, "data":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 8621
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 8625
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 8626
    if-eqz v2, :cond_0

    .line 8630
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->containsOCRPackageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8632
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8639
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->scanPackageInfo(Landroid/content/Context;)V

    .line 8640
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->isInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8641
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->getOCRPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3602(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    .line 8642
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8644
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOcrSIPTextReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsRegisteredOcrSIPTextReceiver:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8646
    const-string v3, "SamsungIME"

    const-string v4, "OCR Package Added or Replaced. Register OcrSIP TextReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8648
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->registerOcrSIPTextReceiver()V

    .line 8655
    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8657
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v4, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsRegisteredOcrSIPTextReceiver:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3802(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 8658
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v4, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3602(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    .line 8659
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->unregisterOcrSIPTextReceiver()V

    .line 8660
    const-string v3, "SamsungIME"

    const-string v4, "OCR Package Removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8662
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8665
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->scanPackageInfo(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 8670
    :cond_4
    const-string v3, "SamsungIME"

    const-string v4, "mOCRHelper is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
