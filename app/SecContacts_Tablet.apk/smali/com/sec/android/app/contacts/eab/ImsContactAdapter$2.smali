.class Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;
.super Ljava/lang/Object;
.source "ImsContactAdapter.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->createSipPresenceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onCapabilityAndAvailabilityPublished(Ljava/lang/String;I)V
    .locals 9
    .param p1, "errorPhrase"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    const/16 v8, 0x193

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 421
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCapabilityAndAvailabilityPublished errorPhrase :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v0, ""

    .line 425
    .local v0, "errorPhraseConverted":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_0
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorPhraseConverted to lower case = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-ne p2, v8, :cond_1

    const-string v3, "not authorized for presence"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/16 v3, 0x3e7

    if-ne p2, v3, :cond_4

    .line 432
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setUserProvisionState(Z)V

    .line 434
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, " user is not provisoned isUserProvisoned set to false "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    const/16 v3, 0x1f7

    if-eq p2, v3, :cond_3

    const/16 v3, 0x198

    if-eq p2, v3, :cond_3

    const/16 v3, 0x25b

    if-eq p2, v3, :cond_3

    const/16 v3, 0x1f4

    if-eq p2, v3, :cond_3

    .line 441
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForPublish()V

    .line 443
    :cond_3
    if-nez p2, :cond_5

    .line 446
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, "Publish Presence Success:"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_1
    return-void

    .line 436
    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setUserProvisionState(Z)V

    .line 438
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, " user is provisoned isUserProvisoned set to true "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_5
    const/16 v3, -0xd

    if-ne p2, v3, :cond_6

    .line 451
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, "Publish Presence FAILED:"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "publisherrorCode":Ljava/lang/String;
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Publish Presence FAILED with ErrorCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v2, :cond_9

    .line 457
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, "Publish Presence FAILED:"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-ne p2, v8, :cond_7

    const-string v3, "user not registered"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 460
    sput-boolean v7, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userNotRegistered:Z

    .line 461
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, " user not registered return from here "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 464
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 465
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Sending message to mClientHandler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 470
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 472
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, "mClientHandler is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 474
    :cond_9
    const-string v3, "EAB-ImsContactAdapter"

    const-string v4, "publisherrorCode is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private onCapabilityAndAvailabilityReceived(Lcom/samsung/commonimsinterface/imscommon/IMSParameter;[Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;)V
    .locals 17
    .param p1, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;
    .param p2, "remoteProfile"    # [Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;

    .prologue
    .line 206
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "onCapabilityAndAvailabilityReceived enter"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez p1, :cond_1

    .line 209
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IMSParameter is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v12, "errorcode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, "errorCode":I
    const-string v12, "reasonphrase"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "reasonHeader":Ljava/lang/String;
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCapabilityAndAvailabilityReceived,  errorcode - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " remoteProfile = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " reasonHeader - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$200(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Ljava/util/Hashtable;

    move-result-object v12

    if-eqz v12, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "notify success"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    aget-object v12, p2, v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    aget-object v12, p2, v12

    invoke-virtual {v12}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$200(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Ljava/util/Hashtable;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 224
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "Invalid Token is returned in the response so not processing the request "

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_2
    if-eqz p2, :cond_12

    .line 232
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "subscribe success"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 235
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "onCapabilityAndAvailabilityReceived,  Subscribe Success executed"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    const/4 v13, 0x0

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetRetryAlarm(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$300(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_3
    if-nez v3, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "notify success"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 243
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCapabilityAndAvailabilityReceived profiles size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p2

    array-length v12, v0

    if-lez v12, :cond_5

    .line 249
    new-instance v6, Lcom/sec/android/app/contacts/eab/ImsParams;

    invoke-direct {v6}, Lcom/sec/android/app/contacts/eab/ImsParams;-><init>()V

    .line 250
    .local v6, "params":Lcom/sec/android/app/contacts/eab/ImsParams;
    const-string v12, "count"

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual {v6, v12, v13}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;I)V

    .line 252
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v4, v12, :cond_4

    .line 253
    aget-object v12, p2, v4

    invoke-virtual {v12}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getCapabilities()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    aget-object v13, p2, v4

    # invokes: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->setParamsForAProfile(Lcom/sec/android/app/contacts/eab/ImsParams;Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;I)V
    invoke-static {v12, v6, v13, v4}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$400(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Lcom/sec/android/app/contacts/eab/ImsParams;Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;I)V

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 258
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3e3

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/eab/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 261
    .local v5, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0xa

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 417
    .end local v4    # "i":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "params":Lcom/sec/android/app/contacts/eab/ImsParams;
    :cond_5
    :goto_2
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "onCapabilityAndAvailabilityReceived exit"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    :cond_6
    const-string v12, "reasonphrase"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "res_phrase":Ljava/lang/String;
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCapabilityAndAvailabilityReceived IIMSConstants.PRESENCE.ERROR :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " res_phrase - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v12, 0x198

    if-eq v3, v12, :cond_7

    const/16 v12, 0x1f7

    if-eq v3, v12, :cond_7

    const/16 v12, 0x25b

    if-ne v3, v12, :cond_c

    .line 275
    :cond_7
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SUBSCRIBE  Failed With ErrorCode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "but remote profile not null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v12, 0x0

    aget-object v12, p2, v12

    invoke-virtual {v12}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, "token":Ljava/lang/String;
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCapabilityAndAvailabilityReceived profiles size with error Code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v10, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$200(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Ljava/util/Hashtable;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    .line 289
    .local v8, "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 291
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForCapabilityPollInterval()V

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x70

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 297
    .restart local v5    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0xa

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 299
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "mClientHandler is null"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 301
    :cond_9
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_SINGLE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 304
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "newURI with Error is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x71

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 311
    .restart local v5    # "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v2, "bundleTokenID":Landroid/os/Bundle;
    const-string v12, "token_key"

    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v5, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0xa

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 317
    .end local v2    # "bundleTokenID":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "mClientHandler is null"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 319
    :cond_b
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN_FOR_VIEW:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 320
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Do Nothing because response for capability and availability fetch with errorCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 334
    .end local v8    # "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    .end local v10    # "token":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    aget-object v12, p2, v12

    invoke-virtual {v12}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v11

    .line 335
    .local v11, "token_uri":Ljava/lang/String;
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "token_uri :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$200(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Ljava/util/Hashtable;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    .line 341
    .restart local v8    # "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "IMS_SVC_EAB_RETURN_RESP_FORBIDDEN or IMS_SVC_EAB_RETURN_RESP_USR_NOT_FOUND"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v12, 0x194

    if-ne v3, v12, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 362
    :cond_d
    const/16 v1, 0x3e5

    .line 363
    .local v1, "ERROR_CONST":I
    const/16 v12, 0x193

    if-ne v3, v12, :cond_f

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "forbidden"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "not authorized for presence"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 365
    :cond_e
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "Subscribe RESP_403 FORBIDEN"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/16 v1, 0x3e7

    .line 367
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setVoLTEEnableInMobileNetwork(I)V

    .line 380
    :goto_3
    if-eqz v11, :cond_11

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 382
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "IMS_SVC_EAB_RETURN_RESP_FORBIDDEN - Sending Handle"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v1, v13, v14, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 386
    .restart local v5    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0xa

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 368
    .end local v5    # "msg":Landroid/os/Message;
    :cond_f
    const/16 v12, 0x193

    if-ne v3, v12, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "user not registered"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 372
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "Subscribe RESP_403 USER NOT REGISTERED"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v1, 0x3e7

    .line 374
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userNotRegistered:Z

    goto :goto_3

    .line 376
    :cond_10
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "Subscribe RESP setting ERROR_CONST AS : Constants.MSG_PRESENCE_ERROR"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v1, 0x3e5

    goto :goto_3

    .line 389
    :cond_11
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "mImsEventListener - IMS_SVC_EAB_RETURN_RESP_FORBIDDEN - Data is NULL"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 395
    .end local v1    # "ERROR_CONST":I
    .end local v8    # "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    .end local v9    # "res_phrase":Ljava/lang/String;
    .end local v11    # "token_uri":Ljava/lang/String;
    :cond_12
    if-nez v3, :cond_13

    .line 398
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "SUBSCRIBE  Success:"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->PostEventTomContactListHandler()V

    goto/16 :goto_2

    .line 400
    :cond_13
    const/16 v12, -0xd

    if-ne v3, v12, :cond_5

    .line 403
    const-string v12, "EAB-ImsContactAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SUBSCRIBE  Failed With ErrorCode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "and remote profile null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_14

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x70

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 410
    .restart local v5    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0xa

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 412
    .end local v5    # "msg":Landroid/os/Message;
    :cond_14
    const-string v12, "EAB-ImsContactAdapter"

    const-string v13, "mClientHandler is null"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    .line 187
    packed-switch p2, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "profileparams"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelableArray(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;

    check-cast v0, [Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->onCapabilityAndAvailabilityReceived(Lcom/samsung/commonimsinterface/imscommon/IMSParameter;[Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;)V

    goto :goto_0

    .line 196
    :pswitch_1
    const-string v0, "reasonphrase"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorcode"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;->onCapabilityAndAvailabilityPublished(Ljava/lang/String;I)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
