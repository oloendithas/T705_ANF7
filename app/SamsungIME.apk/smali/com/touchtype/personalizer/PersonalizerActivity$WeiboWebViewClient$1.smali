.class Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;
.super Ljava/lang/Thread;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$900(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->val$oauthVerifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/service/WeiboAuthenticator;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$900(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype/personalizer/service/WeiboAuthenticator;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "tokenSecret":Ljava/lang/String;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-static {v0, v2}, Lcom/touchtype/personalizer/service/WeiboPersonalizer;->createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;

    move-result-object v4

    # invokes: Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    invoke-static {v3, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$500(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "tokenSecret":Ljava/lang/String;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Loauth/signpost/exception/OAuthException;
    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weibo OAuth exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # invokes: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$400(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0
.end method
