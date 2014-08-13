.class public Lcom/nuance/connect/service/manager/MessageManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/MessageManager$1;,
        Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET_NEXT:Ljava/lang/String; = "getNext"

.field public static final COMMAND_VERSION:I = 0x3

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/MessageManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/nuance/connect/service/manager/MessageManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/MessageManager;->MANAGER_NAME:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/MessageManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 5
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 68
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 73
    sget-object v0, Lcom/nuance/connect/service/manager/MessageManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/nuance/connect/service/manager/MessageManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 77
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getNext"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 80
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 83
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 86
    return-void
.end method

.method private doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "com.nuance.swype.input.MessagesActivity"

    .line 308
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 311
    const-string v2, "UPGRADE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const-string v0, "com.nuance.swype.input.Upgrade"

    .line 327
    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessage(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setTarget(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setUrl(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 333
    return-void

    .line 313
    :cond_1
    const-string v2, "PRIVACY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    .line 315
    const-string v2, "DEFAULT_KEY"

    const-string v3, "PRIVACY"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v2, "SETTINGS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    goto :goto_0

    .line 318
    :cond_3
    const-string v2, "SETTINGS_CONNECT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    .line 320
    const-string v2, "DEFAULT_KEY"

    const-string v3, "CONNECT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_4
    const-string v2, "SETTINGS_UPGRADE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    .line 323
    const-string v2, "DEFAULT_KEY"

    const-string v3, "UPDATES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method private messageFromResponse(Lcom/nuance/connect/service/comm/Response;)Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
    .locals 14
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "38"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, "subject":Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "39"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    .local v3, "body":Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "41"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nuance/connect/service/manager/MessageManager;->translateTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "target":Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "42"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, "messageId":Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "11"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 229
    .local v7, "language":Ljava/lang/String;
    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    .line 231
    .local v8, "url":Ljava/lang/String;
    new-instance v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v0, "message":Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    Message=["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "] messageId=["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "]"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "url["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "]"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 235
    :try_start_0
    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v6, "40"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    .line 236
    .local v11, "modes":Lorg/json/JSONArray;
    if-eqz v11, :cond_0

    .line 237
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    .line 238
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v10, v5, :cond_1

    .line 239
    iget-object v5, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v5, v10

    .line 238
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 242
    .end local v10    # "i":I
    :cond_0
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v11    # "modes":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-object v0

    .line 244
    :catch_0
    move-exception v9

    .line 245
    .local v9, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private processAckMessageResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 258
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    :goto_0
    return-void

    .line 262
    :cond_0
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    if-eqz v2, :cond_1

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    aget v1, v2, v0

    .line 266
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 263
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DISPLAY_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_2

    .line 272
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAckMessageResponse lastMessage.url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v3, v3, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/connect/service/manager/MessageManager;->doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 278
    .end local v0    # "i":I
    .end local v1    # "mode":I
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->savePreferences()V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1fe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processMessageResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 197
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Inbox message handling functionality removed."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method

.method private processNextMessageResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Received Message Response from Server"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->messageFromResponse(Lcom/nuance/connect/service/comm/Response;)Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    .line 217
    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/MessageManager;->ackMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method private translateTargetId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 346
    const/16 v0, 0x1fd

    .line 347
    .local v0, "target":I
    const-string v1, "NONE"

    .line 350
    .local v1, "translated":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 355
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 382
    :pswitch_0
    const-string v1, "NONE"

    .line 386
    :goto_1
    return-object v1

    .line 357
    :pswitch_1
    const-string v1, "UPGRADE"

    .line 358
    goto :goto_1

    .line 361
    :pswitch_2
    const-string v1, "PRIVACY"

    .line 362
    goto :goto_1

    .line 365
    :pswitch_3
    const-string v1, "URL"

    .line 366
    goto :goto_1

    .line 369
    :pswitch_4
    const-string v1, "SETTINGS"

    .line 370
    goto :goto_1

    .line 373
    :pswitch_5
    const-string v1, "SETTINGS_CONNECT"

    .line 374
    goto :goto_1

    .line 377
    :pswitch_6
    const-string v1, "SETTINGS_UPGRADE"

    .line 378
    goto :goto_1

    .line 351
    :catch_0
    move-exception v2

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1fa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public ackMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgID"    # Ljava/lang/String;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Attempting to acknowledge a null message"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "42"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "ack"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 170
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 171
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 189
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->savePreferences()V

    .line 107
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 108
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/connect/internal/common/ManagerService;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 99
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgID"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "42"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "get"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 139
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 140
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    .line 141
    return-void
.end method

.method public getNextMessage()V
    .locals 4

    .prologue
    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "getNext"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 150
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 151
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 152
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    .line 153
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    .line 90
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "handled":Z
    sget-object v1, Lcom/nuance/connect/service/manager/MessageManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_0
    return v0

    .line 119
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MessageManager.onHandleMessage(MESSAGE_COMMAND_RETRIEVE_MESSAGE)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/MessageManager;->getNextMessage()V

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->processMessageResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getNext"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->processNextMessageResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->processAckMessageResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unknown command sent to MessageManager"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 94
    return-void
.end method
