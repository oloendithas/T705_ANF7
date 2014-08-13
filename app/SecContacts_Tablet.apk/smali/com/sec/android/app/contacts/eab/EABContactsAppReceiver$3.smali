.class Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$3;
.super Ljava/lang/Object;
.source "EABContactsAppReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 306
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 307
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->phnnumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getNumberTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->phnnumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getServicenumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "VoLTEMDN":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "currenttime":Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current date is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz v0, :cond_0

    const-string v9, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 319
    :cond_0
    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 323
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->access$000(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "AvailCacheExp"

    const-string v11, "AvailCacheExp"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "availtime":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 328
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 330
    .local v4, "deftime":J
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    .line 331
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9, v8, v3, v4, v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getSeconds(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 336
    .local v6, "time":J
    sget-object v9, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "diif in time is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, "availExp":I
    int-to-long v9, v1

    cmp-long v9, v6, v9

    if-lez v9, :cond_1

    .line 341
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->phnnumber:Ljava/lang/String;

    invoke-virtual {v9, v10, v13, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    .line 346
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 366
    .end local v1    # "availExp":I
    .end local v2    # "availtime":Ljava/lang/String;
    .end local v4    # "deftime":J
    .end local v6    # "time":J
    :cond_1
    :goto_0
    return-void

    .line 349
    .restart local v2    # "availtime":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->phnnumber:Ljava/lang/String;

    invoke-virtual {v9, v10, v13, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    .line 353
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 356
    .end local v2    # "availtime":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->phnnumber:Ljava/lang/String;

    invoke-virtual {v9, v10, v13, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    .line 359
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 362
    :cond_4
    const-string v9, "ContactsAppReceiver"

    const-string v10, "IMS_SUBSCRIBE - non-VoLTE MDN Detected"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
