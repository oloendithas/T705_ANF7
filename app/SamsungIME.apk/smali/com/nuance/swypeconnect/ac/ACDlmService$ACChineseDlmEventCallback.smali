.class public final Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;
.super Ljava/lang/Object;
.source "ACDlmService.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDlmService$ACDlmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDlmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ACChineseDlmEventCallback"
.end annotation


# static fields
.field protected static final CORE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method


# virtual methods
.method public onChineseDlmEvent([BZ)V
    .locals 6
    .param p1, "rawEvent"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 321
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "event":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMService;->onDlmEvent(ILjava/lang/String;JZ)V

    .line 323
    return-void
.end method

.method public onReset(Z)V
    .locals 2
    .param p1, "userCategory"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACChineseDlmEventCallback.resume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/api/DLMService;->onReset(IZ)V

    .line 353
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACChineseDlmEventCallback.resume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->resume(I)V

    .line 341
    return-void
.end method

.method public yield()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACChineseDlmEventCallback.yield"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->yield(I)V

    .line 332
    return-void
.end method
