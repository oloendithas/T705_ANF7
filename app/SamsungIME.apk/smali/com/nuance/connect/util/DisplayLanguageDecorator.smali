.class public Lcom/nuance/connect/util/DisplayLanguageDecorator;
.super Ljava/lang/Object;
.source "DisplayLanguageDecorator.java"

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

    iput-object v0, p0, Lcom/nuance/connect/util/DisplayLanguageDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

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
    iput-object p1, p0, Lcom/nuance/connect/util/DisplayLanguageDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    .line 10
    return-void
.end method

.method private getLanguageDisplayNameString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public decorate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/connect/util/DisplayLanguageDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v0}, Lcom/nuance/connect/util/StringDecorator;->decorate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/util/DisplayLanguageDecorator;->getLanguageDisplayNameString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/util/DisplayLanguageDecorator;->decorated:Lcom/nuance/connect/util/StringDecorator;

    invoke-interface {v0}, Lcom/nuance/connect/util/StringDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/nuance/connect/util/DisplayLanguageDecorator;->decorate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
