.class public Lcom/touchtype/personalizer/service/TwitterAuthenticator;
.super Ljava/lang/Object;
.source "TwitterAuthenticator.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConsumer:Loauth/signpost/OAuthConsumer;

.field private mParent:Lcom/touchtype/personalizer/PersonalizerActivity;

.field private mProvider:Loauth/signpost/OAuthProvider;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 1
    .param p1, "parentContext"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/touchtype/personalizer/PersonalizerActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mParent:Lcom/touchtype/personalizer/PersonalizerActivity;

    .line 28
    invoke-direct {p0}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->askOAuth()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Loauth/signpost/OAuthConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/touchtype/personalizer/service/TwitterAuthenticator;Loauth/signpost/OAuthConsumer;)Loauth/signpost/OAuthConsumer;
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    .param p1, "x1"    # Loauth/signpost/OAuthConsumer;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Loauth/signpost/OAuthProvider;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    return-object v0
.end method

.method static synthetic access$102(Lcom/touchtype/personalizer/service/TwitterAuthenticator;Loauth/signpost/OAuthProvider;)Loauth/signpost/OAuthProvider;
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    .param p1, "x1"    # Loauth/signpost/OAuthProvider;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    return-object p1
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Lcom/touchtype/personalizer/PersonalizerActivity;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mParent:Lcom/touchtype/personalizer/PersonalizerActivity;

    return-object v0
.end method

.method private askOAuth()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;-><init>(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)V

    .line 60
    .local v0, "retrieveRequestTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method


# virtual methods
.method public getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "verificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Twitter verification code \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0, v1, p1}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
