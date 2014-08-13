.class public Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;
.super Ljava/lang/Object;
.source "CategorySubmanagerChineseAddon.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;


# static fields
.field private static final MESSAGES_HANDLED:[I


# instance fields
.field private final categoriesManaged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private enabled:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;

.field private final typesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->MESSAGES_HANDLED:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;)V
    .locals 3
    .param p1, "parent"    # Lcom/nuance/connect/service/manager/CategoryManager;
    .param p2, "client"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 35
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->typesSupported:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    .line 53
    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 54
    return-void
.end method

.method private chineseCatDbReset()V
    .locals 11

    .prologue
    .line 154
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chineseCatDbReset() enabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 155
    iget-boolean v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    if-nez v8, :cond_1

    .line 189
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 160
    .local v6, "steps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, "catDb":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, v0}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v5

    .line 162
    .local v5, "step":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 165
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "FILE_LOCATION"

    invoke-virtual {v8, v0, v9}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "location":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "SUBSCRIBED"

    invoke-virtual {v8, v0, v9}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 169
    .local v7, "subscribed":Z
    const/4 v8, 0x5

    if-ge v5, v8, :cond_4

    .line 170
    if-eqz v7, :cond_3

    .line 171
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 174
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v8, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v1, "data":Landroid/os/Bundle;
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v8, "filePath"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v9, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v8, v9, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_5
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 89
    return-void
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public init(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 77
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    .line 78
    return-void
.end method

.method install(Ljava/lang/String;)Z
    .locals 6
    .param p1, "catId"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "typeId":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "location":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chinese Addon Dictionary - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "filePath"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 135
    const/4 v3, 0x1

    .line 137
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "location":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "handled":Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 67
    return v0
.end method

.method declared-synchronized processNextCategory(I)V
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chinese.processNextCategory() - state: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - enabled: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 143
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processNextCategory() -- completed "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendChineseAddonDictionaries()V
    .locals 15

    .prologue
    const/4 v14, 0x7

    .line 192
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendChineseAddonDictionaries() enabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 193
    iget-boolean v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    if-nez v11, :cond_0

    .line 239
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "data":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v2, "dictionaries":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "dict":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v10, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "PROP_NAME"

    iget-object v12, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v13, "16"

    invoke-virtual {v12, v1, v13}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v11, "PROP_DESCRIPTION"

    iget-object v12, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v13, "18"

    invoke-virtual {v12, v1, v13}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v11, "PROP_LANGUAGE"

    iget-object v12, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v13, "13"

    invoke-virtual {v12, v1, v13}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v11, "PROP_ID"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v11, "PROP_CATEGORY_ID"

    iget-object v12, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v13, "78"

    invoke-virtual {v12, v1, v13}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v11, v1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v9

    .line 214
    .local v9, "step":I
    const-string v8, "STATUS_AVAILABLE"

    .line 215
    .local v8, "status":Ljava/lang/String;
    if-ge v9, v14, :cond_3

    if-lez v9, :cond_3

    .line 216
    const-string v8, "STATUS_DOWNLOADING"

    .line 231
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v11, v1, v12}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 232
    const-string v8, "STATUS_CANCELED"

    .line 234
    :cond_2
    const-string v11, "PROP_INSTALLEDSTATUS"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_status"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_1

    .line 217
    :cond_3
    if-ne v9, v14, :cond_1

    .line 218
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "LAST_UPDATE_FETCHED"

    invoke-virtual {v11, v1, v12}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 220
    .local v6, "lastFetched":J
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v11, v1, v12}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 223
    .local v4, "lastAvailable":J
    cmp-long v11, v6, v4

    if-gtz v11, :cond_4

    .line 224
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getNextCategory() has update -- key: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] lastFetched: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "lastAvailable: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 226
    const-string v8, "STATUS_INSTALLED_WITH_UPDATE"

    goto :goto_2

    .line 228
    :cond_4
    const-string v8, "STATUS_INSTALLED"

    goto :goto_2

    .line 237
    .end local v1    # "dict":Ljava/lang/String;
    .end local v4    # "lastAvailable":J
    .end local v6    # "lastFetched":J
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "step":I
    .end local v10    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v11, "DictionaryList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v11, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v12, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DICTIONARIES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v11, v12, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Enabling Chinese Dictionary Downloads"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->chineseCatDbReset()V

    .line 102
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    .line 104
    :cond_1
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->enabled:Z

    .line 105
    return-void
.end method

.method setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 5
    .param p1, "data"    # Lcom/nuance/connect/util/InstallMetadata;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "setInstallMetadata()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 109
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    .line 110
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "catDb":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->typesSupported:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "catDb":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->chineseCatDbReset()V

    .line 119
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    .line 121
    :cond_2
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->chineseCatDbReset()V

    .line 83
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    .line 85
    :cond_0
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->managerState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 86
    return-void
.end method
