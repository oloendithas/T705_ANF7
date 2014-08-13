.class public Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;
.super Landroid/os/Handler;
.source "ImsContactEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$1;,
        Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "EAB-ImsContactEventHandler"


# instance fields
.field private mEventCallback:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

.field task:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;)V
    .locals 1
    .param p1, "c"    # Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->task:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->mEventCallback:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    .line 43
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-boolean v0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 194
    const-string v0, "EAB-ImsContactEventHandler"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "rType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 50
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage Entered default state boss  Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->mEventCallback:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    if-eqz v8, :cond_1

    .line 168
    iget-object v8, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->mEventCallback:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;->onContactEvents()V

    .line 169
    :cond_1
    return-void

    .line 52
    :sswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 53
    .local v4, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 55
    new-instance v8, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;

    invoke-direct {v8, p0, v12}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$1;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->task:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;

    .line 56
    iget-object v8, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->task:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v10, [Ljava/lang/String;

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    iput-object v12, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->task:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;

    goto :goto_0

    .line 71
    .end local v4    # "str":Ljava/lang/String;
    :sswitch_1
    const-string v8, "handleMessage msg:IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isVoLTEFeatureEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 73
    const-string v8, "VolteFeatureEnabled is false"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getPublishStatus()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    const-string v8, "Calling Unpublish after VoLTE Off"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->unpublishCapabilityAndAvailablity()V

    .line 78
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setPublishStatus(Z)V

    .line 84
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isPublishRequired()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 86
    const-string v8, "isEABReady is true after registration , now send publish and subscribe"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    .line 90
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartSubscribeForAllContacts(Z)V

    goto/16 :goto_0

    .line 95
    :cond_3
    const-string v8, "Device is not registered or Volte is Disabled"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setRegistrationPublish(Z)V

    .line 103
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/ContactsApplication;->resetPublishParameters()V

    goto/16 :goto_0

    .line 111
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 112
    .local v5, "token":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getImsContactAdapter()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->getTokenRequestType(Ljava/lang/String;)Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "contactlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "uriType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_PRESENCE_ERROR uriType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 119
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8, v11, v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handleError(Ljava/lang/String;ZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 123
    .end local v0    # "contactlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "token":Ljava/lang/String;
    .end local v7    # "uriType":Ljava/lang/String;
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 124
    .restart local v5    # "token":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getImsContactAdapter()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->getTokenRequestType(Ljava/lang/String;)Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    move-result-object v3

    .line 127
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    .restart local v0    # "contactlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v7

    .line 130
    .restart local v7    # "uriType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_PRESENCE_ERROR_403_FORBIDDEN uriType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 132
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8, v10, v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handleError(Ljava/lang/String;ZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 139
    .end local v0    # "contactlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "token":Ljava/lang/String;
    .end local v7    # "uriType":Ljava/lang/String;
    :sswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 140
    .restart local v4    # "str":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "errorCode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage Msg: IMS_INITIALPUBLISH_ERROR  with input variable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handlePublishError(I)V

    goto/16 :goto_0

    .line 147
    .end local v1    # "errorCode":I
    .end local v4    # "str":Ljava/lang/String;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .line 148
    .local v2, "parameter":Lcom/samsung/commonimsinterface/imscommon/IMSParameter;
    const-string v8, "handleMessage Msg: IMS_SUBSCRIBE_ERROR"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handleSubscribeError(Lcom/samsung/commonimsinterface/imscommon/IMSParameter;)V

    goto/16 :goto_0

    .line 154
    .end local v2    # "parameter":Lcom/samsung/commonimsinterface/imscommon/IMSParameter;
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .line 155
    .restart local v2    # "parameter":Lcom/samsung/commonimsinterface/imscommon/IMSParameter;
    const-string v8, "handleMessage Msg: IMS_SUBSCRIBE_ERROR_FOR_SINGLE"

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "token_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "tokenID":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tokenID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;->log(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8, v2, v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handleSubscribeErrorForSingle(Lcom/samsung/commonimsinterface/imscommon/IMSParameter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_5
        0x70 -> :sswitch_6
        0x71 -> :sswitch_7
        0x3de -> :sswitch_2
        0x3e3 -> :sswitch_0
        0x3e4 -> :sswitch_1
        0x3e5 -> :sswitch_3
        0x3e7 -> :sswitch_4
    .end sparse-switch
.end method
