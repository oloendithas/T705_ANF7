.class public Lcom/nuance/connect/service/manager/ResourcesManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/ResourcesManager$1;
    }
.end annotation


# static fields
.field public static final ALARM_UNIQUE_ID:I = 0x34940a1

.field public static final COMMAND_DOWNLOAD_IMAGE:Ljava/lang/String; = "downloadImage"

.field public static final COMMAND_DOWNLOAD_TEXT:Ljava/lang/String; = "downloadText"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_VERSION:I = 0x1

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->MANAGER_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_GET_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_GET_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 5
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 33
    sget-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 34
    iput v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 35
    sget-object v0, Lcom/nuance/connect/service/manager/ResourcesManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 38
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadText"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 39
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadImage"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 40
    return-void
.end method

.method private getImageResource(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string v1, "downloadImage"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 112
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 113
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 114
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 115
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 116
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 118
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 119
    return-void
.end method

.method private getTextResource(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v1, "downloadText"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 123
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 124
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 125
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 126
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 127
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 129
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 130
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 73
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public init()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "KEY"

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v4, v4, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    .line 52
    .local v1, "id":Lcom/nuance/connect/internal/common/InternalMessages;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v4, "downloadText"

    invoke-virtual {v3, v4, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    .line 54
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "value":Ljava/lang/String;
    const-string v3, "VALUE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 60
    return-void

    .line 57
    :cond_0
    const-string v3, "VALUE"

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 85
    const/4 v1, 0x1

    .line 86
    .local v1, "handled":Z
    sget-object v3, Lcom/nuance/connect/service/manager/ResourcesManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 104
    const/4 v1, 0x0

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 88
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ResourcesManager;->getImageResource(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .restart local v0    # "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 98
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .restart local v2    # "url":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ResourcesManager;->getTextResource(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 44
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECT_RESOURCES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 67
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 68
    return-void
.end method
