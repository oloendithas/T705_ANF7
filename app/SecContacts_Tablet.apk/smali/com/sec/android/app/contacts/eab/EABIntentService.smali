.class public Lcom/sec/android/app/contacts/eab/EABIntentService;
.super Landroid/app/IntentService;
.source "EABIntentService.java"


# static fields
.field public static final KEY_SEND_ALL_CONTACTS:Ljava/lang/String; = "sendSubscribetoContacts"

.field public static final KEY_SEND_FRESH_CONTACTS:Ljava/lang/String; = "sendSubscribetoFreshContacts"

.field public static final KEY_SEND_RETRY_PUBLISH:Ljava/lang/String; = "sendRetryFullPublish"

.field public static final KEY_SEND_RETRY_PUBLISH_FOR_EXPIRY:Ljava/lang/String; = "sendRetryFullPublishForPublishTimePst"

.field public static final KEY_SEND_RETRY_SUBSCRIBE_FOR_SINGLE:Ljava/lang/String; = "sendSubscribeForSingleContact"

.field public static final LOG_TAG:Ljava/lang/String; = "EABIntentService"

.field public static final PARAM_IN_MSG:Ljava/lang/String; = "imsg"

.field public static final PARAM_OUT_MSG:Ljava/lang/String; = "omsg"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "EABIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const-string v3, "imsg"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v0

    .line 51
    .local v0, "daemon":Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    const-string v3, "EABIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "sendSubscribetoContacts"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const-string v3, "EABIntentService"

    const-string v4, "onHandleIntent KEY_SEND_ALL_CONTACTS called "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribetoContacts()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v3, "sendSubscribetoFreshContacts"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    const-string v3, "EABIntentService"

    const-string v4, "onHandleIntent KEY_SEND_FRESH_CONTACTS called "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribetoFreshContacts()V

    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "sendRetryFullPublish"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    const-string v3, "EABIntentService"

    const-string v4, "onHandleIntent KEY_SEND_RETRY_PUBLISH called "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v3, "sendRetryFullPublishForPublishTimePst"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    const-string v3, "EABIntentService"

    const-string v4, "onHandleIntent KEY_SEND_RETRY_PUBLISH_FOR_EXPIRY called "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethodForExpiry()V

    goto :goto_0

    .line 67
    :cond_4
    const-string v3, "sendSubscribeForSingleContact"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "token_key"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "tokenKey":Ljava/lang/String;
    const-string v3, "EABIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent KEY_SEND_RETRY_SUBSCRIBE_FOR_SINGLE called with tokenKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartSubcribeMethodForSingle(Ljava/lang/String;)V

    goto :goto_0
.end method
