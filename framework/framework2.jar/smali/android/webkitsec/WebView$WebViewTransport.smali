.class public Landroid/webkitsec/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field private mWebview:Landroid/webkitsec/WebView;

.field final synthetic this$0:Landroid/webkitsec/WebView;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebView;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Landroid/webkitsec/WebView$WebViewTransport;->this$0:Landroid/webkitsec/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Landroid/webkitsec/WebView;
    .registers 2

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebView$WebViewTransport;->mWebview:Landroid/webkitsec/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Landroid/webkitsec/WebView;)V
    .registers 3
    .param p1, "webview"    # Landroid/webkitsec/WebView;

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkitsec/WebView$WebViewTransport;->mWebview:Landroid/webkitsec/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 294
    monitor-exit p0

    return-void

    .line 293
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
