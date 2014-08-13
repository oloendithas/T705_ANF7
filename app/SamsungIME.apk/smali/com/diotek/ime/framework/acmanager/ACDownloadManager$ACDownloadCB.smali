.class Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ACDownloadCB"
.end annotation


# instance fields
.field private mId:I

.field private mIsUpdateDownload:Z

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 1

    .prologue
    .line 436
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mIsUpdateDownload:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .param p2, "x1"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .locals 9
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d7

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    move v5, v4

    move v6, v4

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    .line 463
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$100(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$100(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$300(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$300(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$200(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$200(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    iget-boolean v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mIsUpdateDownload:Z

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDownloadLanguage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$800(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IZ)V

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->extractFiles(Ljava/io/File;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->deleteCacheTempFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 494
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;->updated(I)V

    .line 494
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 483
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 484
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 491
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 497
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    .line 500
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$900(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateLdbList()V

    .line 502
    return v3
.end method

.method public downloadFailed(I)V
    .locals 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x0

    .line 552
    const-string v0, "ACDownloadManager"

    const-string v1, "downloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d9

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    .line 555
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 8
    .param p1, "arg0"    # I

    .prologue
    const/16 v5, 0x64

    .line 518
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPercentage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    # setter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$1002(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;I)I

    .line 525
    if-eq p1, v5, :cond_1

    .line 526
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;->updated(I)V

    .line 526
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 531
    .end local v7    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d9

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$1000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, p1

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    goto :goto_0
.end method

.method public downloadStarted()V
    .locals 3

    .prologue
    .line 537
    const-string v0, "ACDownloadManager"

    const-string v1, "downloadStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadStarted before mAppointedDownloadLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 547
    :cond_1
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadStarted after mAppointedDownloadLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public downloadStopped(I)V
    .locals 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x0

    .line 562
    const-string v0, "ACDownloadManager"

    const-string v1, "downloadStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d9

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    .line 564
    return-void
.end method

.method public dummyDownloadComplete()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d7

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    .line 510
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;->updated(I)V

    .line 510
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    return v0
.end method

.method public register(Ljava/util/List;I)V
    .locals 0
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "listenerList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    .line 444
    iput p2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    .line 445
    return-void
.end method

.method public setCurrentUpdateState(Z)V
    .locals 0
    .param p1, "isUpdate"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mIsUpdateDownload:Z

    .line 457
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    .line 449
    return-void
.end method
