.class public Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;
.super Ljava/lang/Object;
.source "LanguageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/LanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LdbFlavorInfo"
.end annotation


# instance fields
.field final flavor:Ljava/lang/String;

.field final version:I

.field final xt9LangId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "xt9LangId"    # I
    .param p2, "version"    # I
    .param p3, "flavor"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->xt9LangId:I

    .line 27
    iput p2, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->version:I

    .line 28
    iput-object p3, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->flavor:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getFlavor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->version:I

    return v0
.end method

.method public getXT9LanguageId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->xt9LangId:I

    return v0
.end method
