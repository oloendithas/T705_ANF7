.class public Lcom/diotek/ime/implement/setting/WebviewActivity;
.super Landroid/app/Activity;
.source "WebviewActivity.java"


# static fields
.field public static _instance:Lcom/diotek/ime/implement/setting/WebviewActivity;


# instance fields
.field wb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Webview activity called"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    const v2, 0x7f0300a8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 20
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x7f0800d7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/WebviewActivity;->wb:Landroid/webkit/WebView;

    .line 21
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "authUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/WebviewActivity;->wb:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 23
    sput-object p0, Lcom/diotek/ime/implement/setting/WebviewActivity;->_instance:Lcom/diotek/ime/implement/setting/WebviewActivity;

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/implement/setting/WebviewActivity;->_instance:Lcom/diotek/ime/implement/setting/WebviewActivity;

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 32
    return-void
.end method

.method protected plsDie()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/diotek/ime/implement/setting/WebviewActivity;->_instance:Lcom/diotek/ime/implement/setting/WebviewActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/implement/setting/WebviewActivity;->_instance:Lcom/diotek/ime/implement/setting/WebviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/diotek/ime/implement/setting/WebviewActivity;->_instance:Lcom/diotek/ime/implement/setting/WebviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    :cond_0
    return-void
.end method
