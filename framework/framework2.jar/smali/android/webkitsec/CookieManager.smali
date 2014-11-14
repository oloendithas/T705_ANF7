.class public Landroid/webkitsec/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .registers 1

    .prologue
    .line 180
    invoke-static {}, Landroid/webkitsec/CookieManager;->getInstance()Landroid/webkitsec/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/CookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Landroid/webkitsec/CookieManager;
    .registers 2

    .prologue
    .line 46
    const-class v1, Landroid/webkitsec/CookieManager;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getCookieManager()Landroid/webkitsec/CookieManager;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .registers 2
    .param p0, "accept"    # Z

    .prologue
    .line 204
    invoke-static {}, Landroid/webkitsec/CookieManager;->getInstance()Landroid/webkitsec/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkitsec/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    .line 205
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .registers 2

    .prologue
    .line 189
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flushCookieStore()V
    .registers 2

    .prologue
    .line 168
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/WebAddress;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "privateBrowsing"    # Z

    .prologue
    .line 105
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getCookieNumber()I
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getCookieSize()I
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized hasCookies()Z
    .registers 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .registers 3
    .param p1, "privateBrowsing"    # Z

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .registers 2

    .prologue
    .line 133
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public removeExpiredCookie()V
    .registers 2

    .prologue
    .line 159
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public removeSessionCookie()V
    .registers 2

    .prologue
    .line 126
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .registers 3
    .param p1, "accept"    # Z

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .registers 3
    .param p1, "accept"    # Z

    .prologue
    .line 213
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method
