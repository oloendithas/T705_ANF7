.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$CallType:I

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$number:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$CallType:I

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$number:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "sip"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$number:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v2, "LGT_RAD_TEMP"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$CallType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v2, "SMS_CALL"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const-string v3, "LGT_RAD_TEMP"

    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isAutoDial(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    return-object v0

    .line 133
    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v2, "tel"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$number:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 140
    .restart local v0    # "callIntent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x2

    goto :goto_1
.end method
