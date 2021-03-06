.class Landroid/webkitsec/WebViewClassic$Factory;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkitsec/WebViewFactoryProvider$Statics;
.implements Landroid/webkitsec/WebViewFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)Landroid/webkitsec/WebViewProvider;
    .registers 4
    .param p1, "webView"    # Landroid/webkitsec/WebView;
    .param p2, "privateAccess"    # Landroid/webkitsec/WebView$PrivateAccess;

    .prologue
    .line 3259
    new-instance v0, Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;-><init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)V

    return-object v0
.end method

.method public findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 3243
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieManager()Landroid/webkitsec/CookieManager;
    .registers 2

    .prologue
    .line 3269
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3289
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/webkitsec/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocationPermissions()Landroid/webkitsec/GeolocationPermissions;
    .registers 2

    .prologue
    .line 3264
    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;
    .registers 1

    .prologue
    .line 3255
    return-object p0
.end method

.method public getWebIconDatabase()Landroid/webkitsec/WebIconDatabase;
    .registers 2

    .prologue
    .line 3274
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->getInstance()Landroid/webkitsec/WebIconDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebStorage()Landroid/webkitsec/WebStorage;
    .registers 2

    .prologue
    .line 3279
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewDatabase(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3284
    invoke-static {p1}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public setPlatformNotificationsEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 3247
    if-eqz p1, :cond_6

    .line 3248
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->enablePlatformNotifications()V

    .line 3252
    :goto_5
    return-void

    .line 3250
    :cond_6
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->disablePlatformNotifications()V

    goto :goto_5
.end method
