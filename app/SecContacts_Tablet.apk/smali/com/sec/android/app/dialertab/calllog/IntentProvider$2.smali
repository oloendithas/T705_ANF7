.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    .line 92
    .local v1, "numberString":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 97
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "call_from_sec"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    :cond_0
    return-object v0

    .line 95
    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method
