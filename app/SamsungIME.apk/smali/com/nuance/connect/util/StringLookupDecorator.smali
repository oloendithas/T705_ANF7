.class public Lcom/nuance/connect/util/StringLookupDecorator;
.super Ljava/lang/Object;
.source "StringLookupDecorator.java"

# interfaces
.implements Lcom/nuance/connect/util/StringDecorator;


# instance fields
.field private decorated:Lcom/nuance/connect/util/StringDecorator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/nuance/connect/util/UndecoratedString;

    invoke-direct {v0, p2, p1}, Lcom/nuance/connect/util/UndecoratedString;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/util/StringDecorator;)V
    .locals 0
    .param p1, "decorator"    # Lcom/nuance/connect/util/StringDecorator;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    .line 10
    return-void
.end method

.method private findResourceById(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, ""

    .line 29
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v1}, Lcom/nuance/connect/util/StringDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v2}, Lcom/nuance/connect/util/StringDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    iget-object v4, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v4}, Lcom/nuance/connect/util/StringDecorator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public decorate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v0}, Lcom/nuance/connect/util/StringDecorator;->decorate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/util/StringLookupDecorator;->findResourceById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v0}, Lcom/nuance/connect/util/StringDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/connect/util/StringLookupDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/util/StringLookupDecorator;->findResourceById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
