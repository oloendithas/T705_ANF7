.class public final Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;
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
    name = "ACAlphaDlmEventCallback"
.end annotation


# static fields
.field protected static final CORE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method


# virtual methods
.method public onAlphaDlmEvent([BZ)V
    .locals 6
    .param p1, "rawEvent"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onAlphaDlmEvent"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 206
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "event":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMService;->onDlmEvent(ILjava/lang/String;JZ)V

    .line 208
    return-void
.end method

.method public onReset(Z)V
    .locals 3
    .param p1, "userCategory"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACAlphaDlmEventCallback.onReset userCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/api/DLMService;->onReset(IZ)V

    .line 238
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACAlphaDlmEventCallback.resume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->resume(I)V

    .line 226
    return-void
.end method

.method public yield()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACAlphaDlmEventCallback.yield"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->yield(I)V

    .line 217
    return-void
.end method
