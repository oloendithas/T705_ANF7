.class public Landroid/webkitsec/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkitsec/WebViewFactoryProvider;->getWebViewDatabase(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFormData()V
    .registers 2

    .prologue
    .line 113
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .registers 2

    .prologue
    .line 94
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clearUsernamePassword()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasFormData()Z
    .registers 2

    .prologue
    .line 104
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .registers 2

    .prologue
    .line 83
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasUsernamePassword()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method
