.class public Lcom/nuance/connect/util/StatusBarNotification$Builder;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/StatusBarNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private extras:Landroid/os/Bundle;

.field private flagMultiline:Z

.field private id:I

.field private message:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private notification:Lcom/nuance/connect/util/StatusBarNotification;

.field private replaceText:Ljava/lang/String;

.field private replaceTextDecorator:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private titleId:Ljava/lang/String;

.field private titleReplaceText:Ljava/lang/String;

.field private titleReplaceTextDecorator:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 1
    .param p1, "client"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->id:I

    .line 49
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 50
    return-void
.end method


# virtual methods
.method public create()Lcom/nuance/connect/util/StatusBarNotification;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lcom/nuance/connect/util/StatusBarNotification;

    invoke-direct {v0}, Lcom/nuance/connect/util/StatusBarNotification;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    .line 274
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    iget-object v1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->client:Lcom/nuance/connect/service/ConnectClient;

    # setter for: Lcom/nuance/connect/util/StatusBarNotification;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0, v1}, Lcom/nuance/connect/util/StatusBarNotification;->access$002(Lcom/nuance/connect/util/StatusBarNotification;Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/ConnectClient;

    .line 276
    iget v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->id:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    iget v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageId"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "replaceText"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->replaceText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "replaceTextDecorator"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->replaceTextDecorator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "titleId"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->titleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "titleReplaceText"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->titleReplaceText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "titleReplaceTextDecorator"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->titleReplaceTextDecorator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "target"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->target:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "flagMultiline"

    iget-boolean v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->flagMultiline:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # getter for: Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extras"

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    return-object v0
.end method

.method public send()Lcom/nuance/connect/util/StatusBarNotification;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->create()Lcom/nuance/connect/util/StatusBarNotification;

    .line 301
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    # invokes: Lcom/nuance/connect/util/StatusBarNotification;->send()V
    invoke-static {v0}, Lcom/nuance/connect/util/StatusBarNotification;->access$200(Lcom/nuance/connect/util/StatusBarNotification;)V

    .line 302
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->notification:Lcom/nuance/connect/util/StatusBarNotification;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->action:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->extras:Landroid/os/Bundle;

    .line 264
    return-object p0
.end method

.method public setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "flagMultiline"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->flagMultiline:Z

    .line 239
    return-object p0
.end method

.method public setId(I)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->id:I

    .line 269
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->message:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->messageId:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setReplaceText(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "replaceText"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->replaceText:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "replaceTextDecorator"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->replaceTextDecorator:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->target:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public setTitleId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "titleId"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->titleId:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setTitleReplaceText(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "titleReplaceText"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->titleReplaceText:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setTitleReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "titleReplaceTextDecorator"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->titleReplaceTextDecorator:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->type:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification$Builder;->url:Ljava/lang/String;

    .line 185
    return-object p0
.end method
