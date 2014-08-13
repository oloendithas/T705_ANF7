.class public Lcom/nuance/connect/service/manager/CategorySubmanagerResources;
.super Ljava/lang/Object;
.source "CategorySubmanagerResources.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategorySubmanagerResources$1;
    }
.end annotation


# static fields
.field private static final MESSAGES_HANDLED:[I


# instance fields
.field private autoSubscribe:Z

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
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_GET_AVAILABLE_RESOURCES_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->MESSAGES_HANDLED:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;)V
    .locals 3
    .param p1, "parent"    # Lcom/nuance/connect/service/manager/CategoryManager;
    .param p2, "client"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->typesSupported:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoriesManaged:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    .line 49
    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 50
    return-void
.end method

.method private subscribeToResources(Ljava/util/Locale;)V
    .locals 16
    .param p1, "requestedLocale"    # Ljava/util/Locale;

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v13, v13, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v13, v13, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "currentLocale":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v13, v13, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v13, v13, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "variant":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "subscribeToResources() for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v13}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v13

    sget-object v14, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v13}, Lcom/nuance/connect/util/InstallMetadata;->hasPackages()Z

    move-result v13

    if-nez v13, :cond_4

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "subscribeToResources() - none exist. done."

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 216
    :cond_1
    :goto_2
    return-void

    .line 163
    .end local v2    # "currentLocale":Ljava/lang/String;
    .end local v12    # "variant":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 164
    .restart local v2    # "currentLocale":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 174
    .restart local v12    # "variant":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->enabled:Z

    if-nez v13, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "subscribeToResources() - resources not enabled"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2

    .line 179
    :cond_5
    const/4 v1, 0x0

    .line 180
    .local v1, "bestMatch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 181
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "98"

    invoke-virtual {v13, v5, v14}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, "locale":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found resources match for locale: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " id:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 185
    move-object v1, v5

    .line 195
    .end local v5    # "id":Ljava/lang/String;
    .end local v10    # "locale":Ljava/lang/String;
    :cond_7
    :goto_4
    if-eqz v1, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "SUBSCRIBED"

    invoke-virtual {v13, v1, v14}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 197
    .local v11, "subscribed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v3

    .line 199
    .local v3, "downloading":Z
    if-eqz v11, :cond_b

    if-nez v3, :cond_b

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "LAST_UPDATE_FETCHED"

    invoke-virtual {v13, v1, v14}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 202
    .local v8, "lastFetched":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v13, v1, v14}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 205
    .local v6, "lastAvailable":J
    cmp-long v13, v8, v6

    if-gtz v13, :cond_a

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Getting resources id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v13, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->get(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 187
    .end local v3    # "downloading":Z
    .end local v6    # "lastAvailable":J
    .end local v8    # "lastFetched":J
    .end local v11    # "subscribed":Z
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v10    # "locale":Ljava/lang/String;
    :cond_8
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 188
    move-object v1, v5

    .line 189
    goto :goto_4

    .line 190
    :cond_9
    if-nez v1, :cond_6

    .line 191
    move-object v1, v5

    goto/16 :goto_3

    .line 209
    .end local v5    # "id":Ljava/lang/String;
    .end local v10    # "locale":Ljava/lang/String;
    .restart local v3    # "downloading":Z
    .restart local v6    # "lastAvailable":J
    .restart local v8    # "lastFetched":J
    .restart local v11    # "subscribed":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "Already have most recent version of resource"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 211
    .end local v6    # "lastAvailable":J
    .end local v8    # "lastFetched":J
    :cond_b
    if-nez v11, :cond_1

    if-nez v3, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Subscribing resources id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v13, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 87
    return-void
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public init(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

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

    .line 80
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->enabled:Z

    .line 81
    return-void
.end method

.method install(Ljava/lang/String;)Z
    .locals 6
    .param p1, "catId"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, "typeId":I
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->typesSupported:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "location":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Resources - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "filePath"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "PROP_LANGUAGE"

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "98"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "PROP_CATEGORY_ID"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_RESOURCES_FOR_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 152
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v4, 0x7

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 153
    const/4 v3, 0x1

    .line 155
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "location":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "handled":Z
    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerResources$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-ne v1, v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->sendResourcesList()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method processNextCategory(I)V
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNextCategory() - state: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - enabled: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 128
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->enabled:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->autoSubscribe:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->subscribeToResources(Ljava/util/Locale;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processNextCategory() -- completed "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method sendResourcesList()V
    .locals 6

    .prologue
    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v2, "catIdToLocale":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "catDb":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "98"

    invoke-virtual {v4, v1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    .end local v1    # "catDb":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 121
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_AVAILABLE_RESOURCES_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v4, v5, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->enabled:Z

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Enabling resources"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 5
    .param p1, "data"    # Lcom/nuance/connect/util/InstallMetadata;

    .prologue
    .line 101
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "setInstallMetadata()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 102
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    .line 103
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

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

    .line 105
    .local v0, "catDb":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->typesSupported:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "catDb":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->sendResourcesList()V

    .line 111
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
