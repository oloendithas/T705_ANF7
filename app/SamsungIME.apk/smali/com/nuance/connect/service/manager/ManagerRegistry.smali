.class public Lcom/nuance/connect/service/manager/ManagerRegistry;
.super Ljava/lang/Object;
.source "ManagerRegistry.java"


# instance fields
.field private allManagersStarted:Z

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private currentlyProcessing:Z

.field private idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private final messageHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;",
            ">;>;"
        }
    .end annotation
.end field

.field startOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private validRegistry:Z

.field private valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ManagerRegistry$1;-><init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->startOrderComparator:Ljava/util/Comparator;

    .line 45
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    .line 46
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    .line 47
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-class v1, Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    .line 51
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    .line 151
    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ManagerRegistry$2;-><init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/ManagerRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/ManagerRegistry;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    return-void
.end method

.method private add(Lcom/nuance/connect/service/manager/interfaces/Manager;)Z
    .locals 4
    .param p1, "manager"    # Lcom/nuance/connect/service/manager/interfaces/Manager;

    .prologue
    .line 159
    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManagerRegistry.add(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 165
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addManager(Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    const/4 v0, 0x0

    .line 173
    .local v0, "added":Z
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 174
    const/4 v7, 0x1

    .line 219
    :goto_0
    return v7

    .line 177
    :cond_0
    sget-object v7, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    new-instance v6, Lcom/nuance/connect/service/manager/ConfigurationManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/ConfigurationManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 207
    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :goto_1
    if-eqz v6, :cond_f

    .line 208
    invoke-direct {p0, v6}, Lcom/nuance/connect/service/manager/ManagerRegistry;->add(Lcom/nuance/connect/service/manager/interfaces/Manager;)Z

    .line 209
    invoke-interface {v6}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "deps":[Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 211
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_e

    aget-object v2, v1, v4

    .line 212
    .local v2, "dep":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 179
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "dep":Ljava/lang/String;
    .end local v3    # "deps":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    sget-object v7, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 180
    new-instance v6, Lcom/nuance/connect/service/manager/DeviceManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/DeviceManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto :goto_1

    .line 181
    :cond_2
    sget-object v7, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 182
    new-instance v6, Lcom/nuance/connect/service/manager/SessionManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/SessionManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto :goto_1

    .line 183
    :cond_3
    sget-object v7, Lcom/nuance/connect/service/manager/LanguageManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    new-instance v6, Lcom/nuance/connect/service/manager/LanguageManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/LanguageManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto :goto_1

    .line 185
    :cond_4
    sget-object v7, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 186
    new-instance v6, Lcom/nuance/connect/service/manager/AccountManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/AccountManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto :goto_1

    .line 187
    :cond_5
    sget-object v7, Lcom/nuance/connect/service/manager/AddonManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 188
    new-instance v6, Lcom/nuance/connect/service/manager/AddonManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/AddonManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto :goto_1

    .line 189
    :cond_6
    sget-object v7, Lcom/nuance/connect/service/manager/ReportingManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 190
    new-instance v6, Lcom/nuance/connect/service/manager/ReportingManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/ReportingManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto :goto_1

    .line 191
    :cond_7
    sget-object v7, Lcom/nuance/connect/service/manager/MessageManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 192
    new-instance v6, Lcom/nuance/connect/service/manager/MessageManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/MessageManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 193
    :cond_8
    sget-object v7, Lcom/nuance/connect/service/manager/UpgradeManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 194
    new-instance v6, Lcom/nuance/connect/service/manager/UpgradeManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/UpgradeManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 195
    :cond_9
    sget-object v7, Lcom/nuance/connect/service/manager/DlmSyncManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 196
    new-instance v6, Lcom/nuance/connect/service/manager/DlmSyncManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/DlmSyncManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 197
    :cond_a
    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 198
    new-instance v6, Lcom/nuance/connect/service/manager/CategoryManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/CategoryManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 199
    :cond_b
    sget-object v7, Lcom/nuance/connect/service/manager/ResourcesManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 200
    new-instance v6, Lcom/nuance/connect/service/manager/ResourcesManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/ResourcesManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 201
    :cond_c
    sget-object v7, Lcom/nuance/connect/service/manager/DocumentManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 202
    new-instance v6, Lcom/nuance/connect/service/manager/DocumentManager;

    .end local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/DocumentManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .restart local v6    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 204
    :cond_d
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown manager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 216
    .restart local v3    # "deps":[Ljava/lang/String;
    :cond_e
    const/4 v0, 0x1

    .end local v3    # "deps":[Ljava/lang/String;
    :cond_f
    move v7, v0

    .line 219
    goto/16 :goto_0
.end method

.method private calculateSortOrder()V
    .locals 5

    .prologue
    .line 337
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "calculateSortOrder()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 338
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 339
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V

    goto :goto_0

    .line 341
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->startOrderComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "final order()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 343
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 344
    .restart local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 346
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_1
    return-void
.end method

.method private checkIdle()V
    .locals 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "set":Z
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 95
    .local v1, "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 97
    const/4 v2, 0x1

    .line 101
    .end local v1    # "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_1
    if-nez v2, :cond_2

    .line 102
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 105
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "set":Z
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIdle started="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " idle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private find(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v2, -0x1

    .line 253
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 255
    .local v1, "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    move v2, v0

    .line 260
    .end local v1    # "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    return v2

    .line 253
    .restart local v1    # "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isRegistered(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/connect/service/manager/interfaces/Manager;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 244
    .local v1, "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v2, 0x1

    .line 248
    .end local v1    # "m":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerMessages(Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;[I)V
    .locals 7
    .param p1, "manager"    # Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
    .param p2, "messages"    # [I

    .prologue
    .line 141
    iget-object v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegisterMessages() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 142
    if-eqz p2, :cond_0

    .line 143
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 146
    .local v3, "messageId":I
    iget-object v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "messageId":I
    :cond_0
    return-void
.end method

.method private walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V
    .locals 6
    .param p1, "manager"    # Lcom/nuance/connect/service/manager/interfaces/Manager;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->incrementDependentCount()V

    .line 351
    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "deps":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 353
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 354
    .local v1, "dep":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/ManagerRegistry;->walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dep":Ljava/lang/String;
    .end local v2    # "deps":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 329
    invoke-static {p1}, Lcom/nuance/connect/internal/common/ManagerService;->managerForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "managerName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    .line 333
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public allStarted()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    return v0
.end method

.method public complete()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ManagerRegistry.complete() Currently: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] valid: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 118
    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 137
    :goto_0
    return v3

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "ManagerRegistry.complete(): init happening"

    invoke-interface {v3, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 123
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 124
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->init()V

    .line 125
    instance-of v3, v1, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 126
    check-cast v3, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v3}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->getMessageIDs()[I

    move-result-object v2

    .line 127
    .local v2, "messages":[I
    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->registerMessages(Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;[I)V

    goto :goto_1

    .line 131
    .end local v2    # "messages":[I
    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->calculateSortOrder()V

    .line 134
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    .line 135
    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    move v3, v5

    .line 137
    goto :goto_0
.end method

.method public deregister()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 295
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->deregister()V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->rebind()Z

    .line 299
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 273
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->destroy()V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    return-void
.end method

.method public dispatchReceivedMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V
    .locals 6
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subtopic"    # Ljava/lang/String;
    .param p3, "r"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 379
    iget-object v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 380
    .local v3, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    instance-of v5, v3, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    if-eqz v5, :cond_0

    move-object v0, v3

    .line 381
    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    .line 382
    .local v0, "commandManager":Lcom/nuance/connect/service/manager/interfaces/CommandManager;
    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->getRealTimeSubscriptions()Ljava/util/List;

    move-result-object v4

    .line 383
    .local v4, "topics":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v4, :cond_0

    .line 384
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 385
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    invoke-interface {v0, p3}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 384
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "commandManager":Lcom/nuance/connect/service/manager/interfaces/CommandManager;
    .end local v2    # "idx":I
    .end local v3    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    .end local v4    # "topics":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    return-void
.end method

.method public getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    return-object v0
.end method

.method public getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->find(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 228
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 233
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextPendingManager()Lcom/nuance/connect/service/manager/interfaces/Manager;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    if-nez v3, :cond_0

    move-object v1, v2

    .line 375
    :goto_0
    return-object v1

    .line 365
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 366
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_2

    move-object v1, v2

    .line 368
    goto :goto_0

    .line 369
    :cond_2
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 373
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    .line 374
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    move-object v1, v2

    .line 375
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    .line 318
    .local v0, "manager":Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->onHandleMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x1

    .line 324
    .end local v0    # "manager":Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurrentlyProcessing()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    return v0
.end method

.method public postStart()V
    .locals 3

    .prologue
    .line 265
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 266
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->postStart()V

    goto :goto_0

    .line 268
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    return-void
.end method

.method public postUpgrade()V
    .locals 3

    .prologue
    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 311
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->postUpgrade()V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    return-void
.end method

.method public prepareForUpgrade()V
    .locals 3

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 304
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->prepareForUpgrade()V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_0
    return-void
.end method

.method public rebind()Z
    .locals 3

    .prologue
    .line 281
    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    if-nez v2, :cond_0

    .line 282
    const/4 v2, 0x0

    .line 289
    :goto_0
    return v2

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    .line 286
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->rebind()V

    goto :goto_1

    .line 289
    .end local v1    # "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setup(Lcom/nuance/connect/service/ConnectClient;Z)V
    .locals 2
    .param p1, "connect"    # Lcom/nuance/connect/service/ConnectClient;
    .param p2, "delay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    .line 69
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    .line 70
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    .line 72
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    return-void
.end method
