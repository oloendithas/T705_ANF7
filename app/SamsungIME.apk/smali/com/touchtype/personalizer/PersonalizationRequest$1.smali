.class Lcom/touchtype/personalizer/PersonalizationRequest$1;
.super Ljava/lang/Thread;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizationRequest;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizationRequest;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 304
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 305
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;
    invoke-static {v3, v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$902(Lcom/touchtype/personalizer/PersonalizationRequest;Landroid/os/Handler;)Landroid/os/Handler;

    .line 306
    const/4 v2, 0x0

    .line 309
    .local v2, "loopCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 312
    :try_start_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # invokes: Lcom/touchtype/personalizer/PersonalizationRequest;->makeInitialRequest()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$1300(Lcom/touchtype/personalizer/PersonalizationRequest;)V

    .line 313
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype/personalizer/PersonalizationListener;->generating()V
    :try_end_0
    .catch Lcom/touchtype_fluency/service/util/ServerBusyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/service/util/ServerApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$900(Lcom/touchtype/personalizer/PersonalizationRequest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 337
    :goto_1
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Lcom/touchtype_fluency/service/util/ServerBusyException;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype/personalizer/PersonalizationListener;->busy()V

    goto :goto_1

    .line 318
    .end local v0    # "e":Lcom/touchtype_fluency/service/util/ServerBusyException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Lcom/touchtype_fluency/service/util/ServerApiException;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_1

    .line 321
    .end local v0    # "e":Lcom/touchtype_fluency/service/util/ServerApiException;
    :catch_2
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$1;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_1

    .line 328
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 330
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 309
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :catch_3
    move-exception v3

    goto :goto_2
.end method
