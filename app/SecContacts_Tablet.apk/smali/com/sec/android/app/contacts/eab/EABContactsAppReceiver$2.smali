.class Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;
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

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;

    iput-object p2, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "num_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;->val$id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getTelnumbers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 189
    const/4 v8, 0x0

    .line 190
    .local v8, "timelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;->val$id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getTelnumbersTime(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "servicelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;->val$id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getService(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 196
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "currenttime":Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current date is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 202
    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sending single subscribe for number:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 216
    :cond_0
    if-eqz v8, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 220
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$2;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->access$000(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "AvailCacheExp"

    const-string v11, "AvailCacheExp"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "availtime":Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AVAILIBILITY_CACHE_EXPIRATION"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v1, :cond_2

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 227
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v10, v9, v2, v11, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getSeconds(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 234
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

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "availExp":I
    int-to-long v9, v0

    cmp-long v9, v6, v9

    if-lez v9, :cond_1

    .line 239
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    .line 201
    .end local v0    # "availExp":I
    .end local v1    # "availtime":Ljava/lang/String;
    .end local v6    # "time":J
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 246
    .restart local v1    # "availtime":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    goto :goto_1

    .line 254
    .end local v1    # "availtime":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    goto :goto_1

    .line 260
    :cond_4
    const-string v9, "onListItemClick"

    const-string v10, " non-VoLTE MDN Detected"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 266
    return-void
.end method
