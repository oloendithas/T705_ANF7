.class public Lcom/nuance/connect/util/ReplaceTextDecorator;
.super Ljava/lang/Object;
.source "ReplaceTextDecorator.java"

# interfaces
.implements Lcom/nuance/connect/util/StringDecorator;


# instance fields
.field private decorated:Lcom/nuance/connect/util/StringDecorator;

.field private replaceText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "replaceText"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/nuance/connect/util/UndecoratedString;

    invoke-direct {v0, p2, p1}, Lcom/nuance/connect/util/UndecoratedString;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    .line 16
    iput-object p3, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->replaceText:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/util/StringDecorator;Ljava/lang/String;)V
    .locals 0
    .param p1, "decorator"    # Lcom/nuance/connect/util/StringDecorator;
    .param p2, "replaceText"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    .line 11
    iput-object p2, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->replaceText:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "replaceText"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, ""

    .line 37
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public decorate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v0}, Lcom/nuance/connect/util/StringDecorator;->decorate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->replaceText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/ReplaceTextDecorator;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/connect/util/ReplaceTextDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v0}, Lcom/nuance/connect/util/StringDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/nuance/connect/util/ReplaceTextDecorator;->decorate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
