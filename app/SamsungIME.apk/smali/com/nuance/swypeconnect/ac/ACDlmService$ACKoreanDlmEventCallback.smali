.class public final Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;
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
    name = "ACKoreanDlmEventCallback"
.end annotation


# static fields
.field protected static final CORE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method


# virtual methods
.method public onKoreanDlmEvent([BZ)V
    .locals 6
    .param p1, "rawEvent"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    const/4 v1, 0x2

    .line 263
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v3, "onKoreanDlmEvent"

    invoke-interface {v0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 264
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "event":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMService;->onDlmEvent(ILjava/lang/String;JZ)V

    .line 266
    return-void
.end method

.method public onReset(Z)V
    .locals 3
    .param p1, "userCategory"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKoreanDlmEvent.onReset userCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/api/DLMService;->onReset(IZ)V

    .line 296
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onKoreanDlmEvent.resume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->resume(I)V

    .line 284
    return-void
.end method

.method public yield()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onKoreanDlmEvent.yield"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->yield(I)V

    .line 275
    return-void
.end method
