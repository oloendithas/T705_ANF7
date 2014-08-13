.class public Lcom/touchtype/personalizer/service/GmailPersonalizer;
.super Lcom/touchtype/personalizer/Personalizer;
.source "GmailPersonalizer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/Personalizer;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public static createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;
    .locals 2
    .param p0, "authToken"    # Ljava/lang/String;
    .param p1, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/touchtype_fluency/service/util/PostParams;

    invoke-direct {v0}, Lcom/touchtype_fluency/service/util/PostParams;-><init>()V

    .line 20
    .local v0, "params":Lcom/touchtype_fluency/service/util/PostParams;
    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p0}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "token_secret"

    invoke-virtual {v0, v1, p1}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "pref_personalize_gmail"

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "Gmail"

    return-object v0
.end method

.method public getServicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "gmail"

    return-object v0
.end method

.method public startPersonalization(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/GmailPersonalizer;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/GmailPersonalizer;->getServiceId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    return-void
.end method
