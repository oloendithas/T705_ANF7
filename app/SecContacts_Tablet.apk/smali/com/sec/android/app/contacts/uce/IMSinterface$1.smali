.class Lcom/sec/android/app/contacts/uce/IMSinterface$1;
.super Ljava/lang/Object;
.source "IMSinterface.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/uce/IMSinterface;->createSipPresenceListener()Lcom/samsung/commonimsinterface/imscommon/IIMSListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/uce/IMSinterface;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onCapabilityAndAvailabilityReceived(I[Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "remoteProfile"    # [Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;

    .prologue
    const/16 v9, -0xd

    const/4 v8, 0x0

    .line 122
    const-string v5, "IMSinterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mjs Volte onCapabilityAndAvailabilityReceived,  errorcode - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remoteProfile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    # getter for: Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/contacts/uce/IMSinterface;->access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1

    .line 126
    const-string v5, "IMSinterface"

    const-string v6, "mjs Video Capability event listener is null, return"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eqz p2, :cond_7

    .line 131
    if-nez p1, :cond_5

    .line 132
    const-string v5, "IMSinterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mjs onCapabilityAndAvailabilityReceived profiles size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    array-length v5, p2

    if-lez v5, :cond_4

    .line 137
    const-string v5, "IMSinterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCapabilityAndAvailabilityReceived UserName:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v8

    invoke-virtual {v7}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v1, "capabilities":Landroid/os/Bundle;
    aget-object v5, p2, v8

    invoke-virtual {v5}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getCapabilities()Landroid/os/Bundle;

    move-result-object v1

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "avail_HDVideo":I
    const-string v5, "videocall"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "savail_HDVideo":Ljava/lang/String;
    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    const/4 v0, 0x0

    .line 148
    :cond_2
    const-string v5, "full"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_3
    const-string v5, "IMSinterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCapabilityAndAvailabilityReceived  avail_HDVideo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getAvailability()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v8

    invoke-virtual {v7}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getAvailability()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    aget-object v5, p2, v8

    invoke-virtual {v5}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getAvailability()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 156
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    # getter for: Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/contacts/uce/IMSinterface;->access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    .end local v0    # "avail_HDVideo":I
    .end local v1    # "capabilities":Landroid/os/Bundle;
    .end local v4    # "savail_HDVideo":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    # getter for: Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/contacts/uce/IMSinterface;->access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 162
    :cond_5
    if-ne p1, v9, :cond_0

    .line 163
    aget-object v5, p2, v8

    invoke-virtual {v5}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "data":Ljava/lang/String;
    const-string v5, "IMSinterface"

    const-string v6, "mjs IMS_SVC_EAB_RETURN_RESP_FORBIDDEN or IMS_SVC_EAB_RETURN_RESP_USR_NOT_FOUND"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v2, :cond_6

    .line 167
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    # getter for: Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/contacts/uce/IMSinterface;->access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e5

    invoke-virtual {v5, v6, v8, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 169
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    # getter for: Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/contacts/uce/IMSinterface;->access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 173
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->this$0:Lcom/sec/android/app/contacts/uce/IMSinterface;

    # getter for: Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/contacts/uce/IMSinterface;->access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 171
    :cond_6
    const-string v5, "IMSinterface"

    const-string v6, "mjs mImsEventListener - IMS_SVC_EAB_RETURN_RESP_FORBIDDEN - Data is NULL"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    .end local v2    # "data":Ljava/lang/String;
    :cond_7
    if-nez p1, :cond_8

    .line 177
    const-string v5, "IMSinterface"

    const-string v6, "mjs SUBSCRIBE  Success:"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_8
    if-ne p1, v9, :cond_0

    .line 179
    const-string v5, "IMSinterface"

    const-string v6, "mjs SUBSCRIBE  Failure:"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCapabilityAndAvailabilityReceived(I[Lcom/samsung/commonimsinterface/imscommon/IMSUserProfile;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "remoteProfile"    # [Lcom/samsung/commonimsinterface/imscommon/IMSUserProfile;

    .prologue
    .line 186
    return-void
.end method

.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const-string v0, "errorcode"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "profileparams"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelableArray(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;

    check-cast v0, [Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->onCapabilityAndAvailabilityReceived(I[Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;)V

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "errorcode"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/uce/IMSinterface$1;->onCapabilityAndAvailabilityPublished(I)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
