.class Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;
.super Ljava/lang/Object;
.source "PersonalizationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollRunnable"
.end annotation


# instance fields
.field private m_delayIndex:I

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizationRequest;


# direct methods
.method public constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest;I)V
    .locals 0
    .param p2, "delayIndex"    # I

    .prologue
    .line 215
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->m_delayIndex:I

    .line 217
    return-void
.end method

.method private pollLater()V
    .locals 5

    .prologue
    .line 226
    iget v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->m_delayIndex:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    iget v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->m_delayIndex:I

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->DELAYS:[I
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$800()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 232
    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->DELAYS:[I
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$800()[I

    move-result-object v1

    iget v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->m_delayIndex:I

    aget v1, v1, v2

    mul-int/lit16 v0, v1, 0x3e8

    .line 236
    .local v0, "delay":I
    :goto_1
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$900(Lcom/touchtype/personalizer/PersonalizationRequest;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    iget v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->m_delayIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;I)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 234
    .end local v0    # "delay":I
    :cond_1
    const v0, 0xea60

    .restart local v0    # "delay":I
    goto :goto_1
.end method

.method private startDownload()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$900(Lcom/touchtype/personalizer/PersonalizationRequest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;Lcom/touchtype/personalizer/PersonalizationRequest$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method private updateProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "progress"    # Ljava/lang/String;
    .param p2, "progressMax"    # Ljava/lang/String;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype/personalizer/PersonalizationListener;->serverProgress(II)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 245
    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Polling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;
    invoke-static {v6}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$600(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/service/util/UrlManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$600(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/service/util/UrlManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrl()Ljava/net/URL;

    move-result-object v4

    # invokes: Lcom/touchtype/personalizer/PersonalizationRequest;->addRandToUrl(Ljava/net/URL;)Ljava/net/URL;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$1100(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v3

    .line 248
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 252
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 253
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 254
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 255
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 257
    .local v2, "response":I
    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Polled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for language model, got response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sparse-switch v2, :sswitch_data_0

    .line 276
    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unrecognised response from personalization server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    .line 293
    .end local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "response":I
    :goto_0
    return-void

    .line 263
    .restart local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "response":I
    :sswitch_0
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->startDownload()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    .end local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "response":I
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$1200(Lcom/touchtype/personalizer/PersonalizationRequest;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 283
    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # operator++ for: Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$1208(Lcom/touchtype/personalizer/PersonalizationRequest;)I

    .line 285
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->pollLater()V

    .line 286
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "response":I
    :sswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0

    .line 271
    :sswitch_2
    const-string v4, "X-progress"

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "X-max-progress"

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->updateProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->pollLater()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 289
    .end local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "response":I
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_2
        0x12d -> :sswitch_0
        0x199 -> :sswitch_1
    .end sparse-switch
.end method
