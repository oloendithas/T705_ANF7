.class public Lcom/touchtype/personalizer/PersonalizerActivity;
.super Landroid/app/Activity;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLoadingFinished:Z

.field private isRedirectedUrl:Z

.field private mContext:Landroid/content/Context;

.field private mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

.field private mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    .line 324
    return-void
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    return-void
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;
    .param p1, "x1"    # Lcom/touchtype_fluency/service/util/PostParams;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    return v0
.end method

.method static synthetic access$602(Lcom/touchtype/personalizer/PersonalizerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    return v0
.end method

.method static synthetic access$702(Lcom/touchtype/personalizer/PersonalizerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    return p1
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/WeiboAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    return-object v0
.end method

.method public static extractParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v2, ""

    .line 192
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "paramNameIndex":I
    const/16 v3, 0x26

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 195
    .local v1, "paramValueEndIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 200
    .end local v0    # "paramNameIndex":I
    .end local v1    # "paramValueEndIndex":I
    :cond_1
    return-object v2
.end method

.method private finishFail()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 184
    return-void
.end method

.method private finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    .locals 3
    .param p1, "params"    # Lcom/touchtype_fluency/service/util/PostParams;

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "params"

    invoke-virtual {p1}, Lcom/touchtype_fluency/service/util/PostParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 180
    return-void
.end method

.method private getVerifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private start(Landroid/content/Intent;)V
    .locals 7
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 141
    const-string v4, "service"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 142
    .local v3, "serviceId":I
    packed-switch v3, :pswitch_data_0

    .line 172
    :pswitch_0
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 174
    :goto_0
    return-void

    .line 144
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startFacebook(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startWeibo(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startGmail(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startTwitter(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 161
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 166
    .end local v1    # "intent2":Landroid/content/Intent;
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v2, "intent3":Landroid/content/Intent;
    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private startFacebook(Landroid/content/Intent;)V
    .locals 8
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "Enable"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 73
    .local v2, "enable":Z
    const-string v4, "UseSSO"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 74
    .local v3, "useSSO":Z
    if-eqz v2, :cond_2

    .line 75
    if-eqz v3, :cond_1

    .line 76
    const-string v4, "AccessToken"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->createParamsForSSO(Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V

    .line 95
    .end local v0    # "accessToken":Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    .restart local v0    # "accessToken":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    goto :goto_0

    .line 84
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;

    invoke-direct {v5, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 86
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "340440709365233"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&display=touch&redirect_uri=http%3A%2F%2Fwww.touchtype-online.com%2Flogin_success.html&scope=user_about_me,user_notes,user_status,read_mailbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startGmail(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype/personalizer/PersonalizerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    .line 115
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 117
    new-instance v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/touchtype/personalizer/service/GmailAuthenticator;-><init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

    .line 118
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 119
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerActivity$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$1;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private startTwitter(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 107
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    new-instance v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;-><init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    .line 109
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 110
    return-void
.end method

.method private startWeibo(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    new-instance v0, Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/touchtype/personalizer/service/WeiboAuthenticator;-><init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    .line 101
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 102
    return-void
.end method


# virtual methods
.method public loadWebView(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x2

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 45
    const v1, 0x7f0300a9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 46
    const v1, 0x7f0800d8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    .line 47
    const v1, 0x7f0d01f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f0800d9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 52
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 53
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 54
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 55
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 56
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->freeMemory()V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->start(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    const-string v2, "CookieManager not initialised. onDestroy called before onCreate?"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
