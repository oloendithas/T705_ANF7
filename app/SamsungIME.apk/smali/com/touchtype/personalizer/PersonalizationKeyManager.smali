.class public Lcom/touchtype/personalizer/PersonalizationKeyManager;
.super Ljava/lang/Object;
.source "PersonalizationKeyManager.java"


# static fields
.field private static sKeymanager:Lcom/touchtype/personalizer/PersonalizationKeyManager;


# instance fields
.field private mApiKey:Ljava/lang/String;

.field private mDeleteLoadBalanceUrl:Ljava/lang/String;

.field private mLoadBalanceUrl:Ljava/lang/String;

.field private mPartnerTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->sKeymanager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "ca2760a9ec95dab713e5471f76ddad36f7cd35c5"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mApiKey:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mLoadBalanceUrl:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mDeleteLoadBalanceUrl:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mPartnerTag:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->sKeymanager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizationKeyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->sKeymanager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->sKeymanager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteLoadBalanceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mDeleteLoadBalanceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadBalanceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mLoadBalanceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mPartnerTag:Ljava/lang/String;

    return-object v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "375898912469864"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "com_samsung_n2"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mPartnerTag:Ljava/lang/String;

    .line 67
    const-string v0, "62f7b22d151cd781e599dc85e0791cd1ff94ec81"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mApiKey:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_2
    const-string v0, "456506484371985"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const-string v0, "com_samsung_s3"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mPartnerTag:Ljava/lang/String;

    .line 73
    const-string v0, "8ef62dd1390568522d5ce2a16703bddecb4c81b2"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mApiKey:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "311659368932617"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-string v0, "com_samsung_s1"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mPartnerTag:Ljava/lang/String;

    .line 79
    const-string v0, "f2c20cde492ba0db9d0b35ca8be58e100fe8024c"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mApiKey:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "406744956065504"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "com_samsung_j0"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mPartnerTag:Ljava/lang/String;

    .line 85
    const-string v0, "46056998fb864f2dfa29d865cf9818e7de54de1a"

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationKeyManager;->mApiKey:Ljava/lang/String;

    goto :goto_0
.end method
