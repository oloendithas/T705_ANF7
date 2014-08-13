.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;
.super Ljava/lang/Object;
.source "ACChineseDictionaryDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field started:Z

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
    .locals 1

    .prologue
    .line 467
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->started:Z

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .locals 1
    .param p1, "zipFile"    # Ljava/io/File;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->downloadStarted()V

    .line 490
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downloadFailed(I)V
    .locals 1
    .param p1, "reasonCode"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadFailed(I)V

    .line 507
    :cond_0
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->downloadStarted()V

    .line 482
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadPercentage(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public downloadStarted()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->started:Z

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadStarted()V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->started:Z

    .line 476
    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 1
    .param p1, "reasonCode"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadStopped(I)V

    .line 500
    :cond_0
    return-void
.end method
