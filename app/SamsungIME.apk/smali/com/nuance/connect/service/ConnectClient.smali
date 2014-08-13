.class public Lcom/nuance/connect/service/ConnectClient;
.super Landroid/app/Service;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/ConnectClient$10;,
        Lcom/nuance/connect/service/ConnectClient$MessageHandler;,
        Lcom/nuance/connect/service/ConnectClient$ResponseListener;
    }
.end annotation


# static fields
.field public static final ALARM_CLASS:Ljava/lang/String; = "ALARM_CLASS"

.field public static final ALARM_TYPE:Ljava/lang/String; = "ALARM_TYPE"

.field public static final CONNECTION_TYPE:Ljava/lang/String; = "CONNECTION_TYPE"

.field public static final DEFAULT_MESSAGE_DELAY:I = 0x5dc

.field protected static final DELAY_NOTIFY_TASKS_COMPLETE:I = 0xbb8

.field public static final DEVICE_FIRST_TIMESTARTUP_PREFERENCE:Ljava/lang/String; = "DeviceFirstTimeStartup"

.field public static final INITIAL_STARTUP_ALARM:Ljava/lang/String; = "INITIAL_STARTUP_ALARM"

.field public static final MAJOR_VERSION:Ljava/lang/String; = "6"

.field private static final MINIMUM_DELAY:I = 0x2710

.field private static final START_ALARM_MANAGER_NAME:Ljava/lang/String; = "MANAGER_NAME"


# instance fields
.field private accountListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/AccountListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private activeLocale:Ljava/util/Locale;

.field protected alarmUniqueId:I

.field private bindCount:I

.field private boolListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected buildProperties:Lcom/nuance/connect/util/BuildProperties;

.field private clientStartComplete:Z

.field private commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

.field private connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

.field private connectivity:Lcom/nuance/connect/system/Connectivity;

.field private datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

.field private defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

.field private idleStatus:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private languageCoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private languageListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/LanguageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lastIdleSnoozeAt:J

.field private lastMessageProcessed:J

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private mHostMessenger:Landroid/os/Messenger;

.field protected final messenger:Landroid/os/Messenger;

.field protected msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

.field private oemIdListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field protected registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

.field private sendStopMessage:Ljava/lang/Runnable;

.field private taskToProcess:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private triggerTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 77
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    .line 93
    iput-wide v2, p0, Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J

    .line 96
    iput-wide v2, p0, Lcom/nuance/connect/service/ConnectClient;->lastIdleSnoozeAt:J

    .line 114
    const v0, 0x42f48590

    iput v0, p0, Lcom/nuance/connect/service/ConnectClient;->alarmUniqueId:I

    .line 119
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    .line 120
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->messenger:Landroid/os/Messenger;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    .line 133
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$1;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->oemIdListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 141
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$2;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 151
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$3;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 160
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$4;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->idleStatus:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    .line 173
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$5;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    .line 650
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$9;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/ConnectClient$9;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/ConnectClient;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->reconfigureLogger(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/ConnectClient;)J
    .locals 2
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/comm/CommandQueue;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method private getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;
    .locals 5
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 516
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 517
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v0, "data":Landroid/os/Bundle;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 519
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 531
    return-object v1

    .line 520
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 521
    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 522
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 523
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 524
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 525
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 527
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageToHost("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Error attaching Object, unsupported type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private reconfigureLogger(ZI)V
    .locals 2
    .param p1, "developerLogEnabled"    # Z
    .param p2, "logLevel"    # I

    .prologue
    .line 985
    sget-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/nuance/connect/util/Logger;->configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V

    .line 986
    return-void
.end method

.method private sendMessageToHost(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 461
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    goto :goto_0
.end method

.method private setStartAlarm(JLjava/lang/String;)V
    .locals 5
    .param p1, "triggerAtTime"    # J
    .param p3, "managerName"    # Ljava/lang/String;

    .prologue
    .line 815
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Delaying start of Connect, this is the first time its started on this device"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 817
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 818
    .local v1, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "MANAGER_NAME"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v2, Lcom/nuance/connect/util/Alarm$Builder;

    const-class v3, Lcom/nuance/connect/service/ConnectClient;

    const-string v4, "INITIAL_STARTUP_ALARM"

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/connect/util/Alarm$Builder;->extras(Ljava/util/Map;)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    .line 824
    .local v0, "alarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    .line 825
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartAlarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 826
    return-void
.end method

.method private startClientAfterAlarm(Ljava/lang/String;)V
    .locals 4
    .param p1, "managerName"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarm Complete, starting Connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    .line 809
    .local v0, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v1, v2, :cond_0

    .line 810
    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/Manager;->start()V

    .line 812
    :cond_0
    return-void
.end method


# virtual methods
.method public addAlarm(J)V
    .locals 4
    .param p1, "triggerTime"    # J

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm trigger in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 787
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V
    .locals 2
    .param p1, "l"    # Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1178
    return-void
.end method

.method public addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 2
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 1234
    return-void
.end method

.method public addListener(Lcom/nuance/connect/service/manager/interfaces/AccountListener;)V
    .locals 2
    .param p1, "accountListener"    # Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1144
    return-void
.end method

.method public addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1229
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 1230
    return-void
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 944
    const-string v1, "INITIAL_STARTUP_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    const-string v1, "MANAGER_NAME"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "managerName":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INITIAL_STARTUP_ALARM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 948
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->startClientAfterAlarm(Ljava/lang/String;)V

    .line 950
    .end local v0    # "managerName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    .prologue
    .line 1249
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBuildProps()Lcom/nuance/connect/util/BuildProps;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->buildProperties:Lcom/nuance/connect/util/BuildProperties;

    return-object v0
.end method

.method public getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    return-object v0
.end method

.method public getConnectVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1106
    const-string v1, "0"

    .line 1107
    .local v1, "minorVersion":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "buildVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "6"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1112
    .local v2, "version":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getConnectivity()Lcom/nuance/connect/system/Connectivity;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    return-object v0
.end method

.method public getCoreForLanguage(I)I
    .locals 3
    .param p1, "language"    # I

    .prologue
    const/4 v0, 0x0

    .line 1216
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    .line 1195
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    return-object v0
.end method

.method public getDataStore()Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 969
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DeviceManager;

    .line 970
    .local v0, "deviceManager":Lcom/nuance/connect/service/manager/DeviceManager;
    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 973
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    return-object v0
.end method

.method public getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;
    .locals 1
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 977
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v2, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager;

    .line 978
    .local v0, "sessionManager":Lcom/nuance/connect/service/manager/SessionManager;
    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 981
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 893
    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 895
    .local v4, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCommand() action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 897
    if-eqz v0, :cond_1

    const-string v7, ".RefreshConnect"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 898
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 899
    .local v3, "b":Landroid/os/Bundle;
    const-string v7, "DEFAULT_KEY"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 900
    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v7, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 935
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 901
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "extras":Landroid/os/Bundle;
    :cond_1
    if-eqz v0, :cond_2

    const-string v7, "com.nuance.swype.input.Upgrade"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 902
    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v7}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto :goto_0

    .line 903
    :cond_2
    if-eqz v0, :cond_3

    const-string v7, "com.nuance.swype.input.InstallALM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 904
    iget-object v7, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MESSAGE_CLIENT_ALM_INSTALL extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 905
    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ALM_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v7, v4}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 906
    :cond_3
    if-eqz v0, :cond_5

    const-string v7, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 907
    const-string v6, "SETTINGS"

    .line 908
    .local v6, "settingsPage":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 909
    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 911
    :cond_4
    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACTIVITY_REDIRECT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v7, v6}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 912
    .end local v6    # "settingsPage":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    .line 913
    const-string v7, "ALARM_CLASS"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "alarmClass":Ljava/lang/String;
    const-string v7, "ALARM_TYPE"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "alarmType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 917
    const-class v7, Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 918
    invoke-virtual {p0, v2, v4}, Lcom/nuance/connect/service/ConnectClient;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 921
    :cond_6
    const-class v7, Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 922
    iget-object v7, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v7, v2, v4}, Lcom/nuance/connect/system/Connectivity;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 924
    :cond_7
    iget-object v7, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v7, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v5

    .line 925
    .local v5, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    if-eqz v5, :cond_8

    instance-of v7, v5, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    if-eqz v7, :cond_8

    move-object v7, v5

    .line 926
    check-cast v7, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    invoke-interface {v7, v2, v4}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 927
    iget-object v7, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarm handled by: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 929
    :cond_8
    iget-object v7, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find reference for alarm. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 263
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v8, p2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->handleMessage(Landroid/os/Message;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-object v8, Lcom/nuance/connect/service/ConnectClient$10;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v9, p2, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_CLIENT_REGISTER_CLIENT"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 277
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Registering with service"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 278
    iget v8, p0, Lcom/nuance/connect/service/ConnectClient;->bindCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/nuance/connect/service/ConnectClient;->bindCount:I

    .line 279
    const/4 v5, 0x0

    .line 281
    .local v5, "servicesList":Ljava/lang/String;
    iget-object v8, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    .line 282
    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 283
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 284
    .local v1, "data":Landroid/os/Bundle;
    const-string v8, "SERVICES_LIST"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "list":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 287
    move-object v5, v3

    .line 290
    :cond_2
    sget-object v8, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BROADCAST_RESPONSE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const-string v9, "ENABLE_BROADCAST_RESPONSE"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    .line 292
    sget-object v8, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    const-string v9, "DEVELOPER_LOG_ENABLED"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    .line 294
    const-string v8, "DEFAULT_DELAY"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 295
    .local v2, "delay":I
    if-lez v2, :cond_3

    .line 296
    sget-object v8, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    .line 300
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "delay":I
    .end local v3    # "list":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 301
    invoke-virtual {p0, v5}, Lcom/nuance/connect/service/ConnectClient;->registerServices(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 302
    sget-object v8, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_INVALID_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 310
    :cond_4
    sget-object v8, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 318
    :cond_5
    iget v8, p0, Lcom/nuance/connect/service/ConnectClient;->bindCount:I

    if-le v8, v11, :cond_6

    .line 319
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v8}, Lcom/nuance/connect/service/manager/ManagerRegistry;->rebind()Z

    .line 322
    :cond_6
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v8}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isValid()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 323
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    goto/16 :goto_0

    .line 325
    :cond_7
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "There are no managers registered!!!"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 326
    const-wide/16 v8, 0x5dc

    invoke-virtual {p0, p2, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 332
    .end local v5    # "servicesList":Ljava/lang/String;
    :pswitch_1
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_CLIENT_UNREGISTER_CLIENT"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 333
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    goto/16 :goto_0

    .line 338
    :pswitch_2
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_CLIENT_START_IMMEDIDATELY"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v8

    const-string v9, "DeviceFirstTimeStartup"

    invoke-interface {v8, v9, v11}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 343
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    goto/16 :goto_0

    .line 347
    :pswitch_3
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_HOST_DEREGISTER"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 348
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v8}, Lcom/nuance/connect/service/manager/ManagerRegistry;->deregister()V

    .line 349
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    .line 350
    sget-object v8, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v9, 0x5dc

    invoke-virtual {p0, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    goto/16 :goto_0

    .line 355
    :pswitch_4
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_CLIENT_PROCESS_RESPONSE_DELAYED"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "subject"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "topic":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "body"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "subtopic":Ljava/lang/String;
    iget-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/connect/service/comm/Response;

    .line 359
    .local v4, "r":Lcom/nuance/connect/service/comm/Response;
    invoke-virtual {p0, v7, v6, v4}, Lcom/nuance/connect/service/ConnectClient;->processReceivedServerMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V

    goto/16 :goto_0

    .line 363
    .end local v4    # "r":Lcom/nuance/connect/service/comm/Response;
    .end local v6    # "subtopic":Ljava/lang/String;
    .end local v7    # "topic":Ljava/lang/String;
    :pswitch_5
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_CLIENT_UPDATE_CONFIGURATION"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 364
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Configuring Connect"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "configuration":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    if-eqz v8, :cond_0

    .line 367
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    sget-object v9, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v8, v0, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->updateFromString(Ljava/lang/String;Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)Z

    goto/16 :goto_0

    .line 373
    .end local v0    # "configuration":Ljava/lang/String;
    :pswitch_6
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "MESSAGE_CLIENT_UPDATE_CONFIGURATION"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 374
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Retrying Connection"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 375
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    if-eqz v8, :cond_0

    .line 376
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v8}, Lcom/nuance/connect/service/comm/CommandQueue;->retryConnection()V

    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public idleSnooze()V
    .locals 2

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    .line 206
    return-void
.end method

.method public idleSnooze(J)V
    .locals 8
    .param p1, "milliseconds"    # J

    .prologue
    const-wide/16 v6, 0x2710

    .line 209
    const-wide/16 v4, 0x2

    mul-long/2addr v4, p1

    add-long/2addr v4, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 210
    .local v0, "delay":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v2, v4, v0

    .line 212
    .local v2, "delayTill":J
    iget-wide v4, p0, Lcom/nuance/connect/service/ConnectClient;->lastIdleSnoozeAt:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 213
    iput-wide v2, p0, Lcom/nuance/connect/service/ConnectClient;->lastIdleSnoozeAt:J

    .line 214
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 217
    :cond_0
    return-void
.end method

.method public invalidAccount()V
    .locals 4

    .prologue
    .line 1147
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1148
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/AccountListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    .line 1149
    .local v1, "listener":Lcom/nuance/connect/service/manager/interfaces/AccountListener;
    if-eqz v1, :cond_0

    .line 1150
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/AccountListener;->onInvalidated()V

    goto :goto_0

    .line 1153
    .end local v1    # "listener":Lcom/nuance/connect/service/manager/interfaces/AccountListener;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/AccountListener;>;"
    :cond_1
    return-void
.end method

.method public isAccountLinked()Z
    .locals 3

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    sget-object v2, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/AccountManager;

    .line 1166
    .local v0, "manager":Lcom/nuance/connect/service/manager/AccountManager;
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AccountManager;->isAccountLinked()Z

    move-result v1

    .line 1169
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMQTTEnabled()Z
    .locals 1

    .prologue
    .line 1124
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public linkedAccount()V
    .locals 4

    .prologue
    .line 1156
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->accountListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1157
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/AccountListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    .line 1158
    .local v1, "listener":Lcom/nuance/connect/service/manager/interfaces/AccountListener;
    if-eqz v1, :cond_0

    .line 1159
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/AccountListener;->onLinked()V

    goto :goto_0

    .line 1162
    .end local v1    # "listener":Lcom/nuance/connect/service/manager/interfaces/AccountListener;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/AccountListener;>;"
    :cond_1
    return-void
.end method

.method public managerStartComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "managerName"    # Ljava/lang/String;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "managerStartComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 838
    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->startNextManager()V

    .line 845
    return-void
.end method

.method public notifyPossibleUpgrade()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "notifyPossibleUpgrade()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 797
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_POSSIBLE_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 798
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onBind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p0, v0}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    .line 666
    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    .line 667
    new-instance v0, Lcom/nuance/connect/util/BuildProperties;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/BuildProperties;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->buildProperties:Lcom/nuance/connect/util/BuildProperties;

    .line 668
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->reconfigureLogger(ZI)V

    .line 671
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->oemIdListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 672
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 673
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 675
    new-instance v0, Lcom/nuance/connect/system/Connectivity;

    invoke-direct {v0, p0}, Lcom/nuance/connect/system/Connectivity;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    .line 676
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    .line 681
    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-direct {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    .line 682
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->idleStatus:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 684
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->start()V

    .line 686
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 688
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 689
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->stop()V

    .line 727
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->destroy()V

    .line 728
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->stop()V

    .line 729
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->destroy()V

    .line 730
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->destroy()V

    .line 731
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 732
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onLowMemory() called"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 737
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 739
    return-void
.end method

.method public onPostUpgrade()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->postUpgrade()V

    .line 1121
    return-void
.end method

.method public onPrepareForUpgrade()V
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->prepareForUpgrade()V

    .line 1117
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRebind i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 711
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 712
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/ConnectClient;->handleCommand(Landroid/content/Intent;)V

    .line 720
    const/4 v0, 0x2

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 744
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 746
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 703
    .local v0, "r":Z
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 704
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbind() return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 705
    return v0
.end method

.method public performTask(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "task"    # Ljava/lang/String;
    .param p2, "sendAck"    # Z

    .prologue
    .line 1046
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .local v1, "data":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 1049
    const-string v3, "ACKNOWLEDGEMENT"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    const-string v3, "MESSAGE_AVAILABLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1053
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1090
    :cond_1
    :goto_0
    return-void

    .line 1054
    :cond_2
    const-string v3, "UPDATE_LICENSE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1055
    const-string v3, "DEFAULT_KEY"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LICENSE_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 1057
    :cond_3
    const-string v3, "UPGRADE_AVAILABLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1058
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CHECK_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 1059
    :cond_4
    const-string v3, "SEND_REPORTING"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1060
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_SEND_REPORTING_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 1061
    :cond_5
    const-string v3, "TIMERS_UPDATED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1062
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REQUEST_TIMERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 1063
    :cond_6
    const-string v3, "DLM_BACKUP_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1065
    :try_start_0
    const-string v3, "DLM_BACKUP_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1066
    .local v0, "category":I
    const-string v3, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DLM_BACKUP_REQUIRED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    .end local v0    # "category":I
    :catch_0
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLM_BACKUP_ Could not parse task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 1071
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v3, "DLM_SYNC_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1073
    :try_start_1
    const-string v3, "DLM_SYNC_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1074
    .restart local v0    # "category":I
    const-string v3, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PULL_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1076
    .end local v0    # "category":I
    :catch_1
    move-exception v2

    .line 1077
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLM_SYNC_ Could not parse task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1079
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string v3, "GET_CONFIG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1080
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_CONFIG:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1081
    :cond_9
    const-string v3, "CDB_LIST_UPDATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1082
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1083
    :cond_a
    const-string v3, "CDB_AVAILABLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1084
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1085
    :cond_b
    const-string v3, "TASK_UPDATE_DOCS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1086
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_UPDATE_DOCS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1087
    :cond_c
    const-string v3, "LANGUAGE_LIST_UPDATED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGAUGE_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public performTasks(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "tasks"    # Lorg/json/JSONArray;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 996
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "CDB_AVAILABLE"

    aput-object v4, v3, v5

    const-string v4, "CDB_LIST_UPDATE"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "LANGUAGE_LIST_UPDATED"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 999
    .local v1, "reportBackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1002
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, "taskString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1005
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->performTask(Ljava/lang/String;Z)V

    .line 1006
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 999
    .end local v2    # "taskString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    .restart local v2    # "taskString":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->performTask(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1011
    .end local v2    # "taskString":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1015
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1017
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 1019
    :cond_2
    return-void
.end method

.method public postMessage(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 565
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    return-void
.end method

.method public postMessage(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 620
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 622
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 624
    :cond_0
    return-void
.end method

.method public postMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    return-void
.end method

.method public postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 3
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 512
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 513
    return-void
.end method

.method public postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    .locals 1
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 536
    return-void
.end method

.method public postMessageDelayed(IJ)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "millis"    # J

    .prologue
    .line 575
    invoke-virtual {p0, p2, p3}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    .line 576
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 578
    return-void
.end method

.method public postMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "millis"    # J

    .prologue
    .line 548
    invoke-virtual {p0, p2, p3}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    .line 549
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 550
    return-void
.end method

.method public postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    .locals 3
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "millis"    # J

    .prologue
    .line 539
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    .line 541
    return-void
.end method

.method public postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;J)V
    .locals 1
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "millis"    # J

    .prologue
    .line 544
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->getMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    .line 545
    return-void
.end method

.method public postMessageWithInt(II)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "value"    # I

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 588
    .local v1, "msg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 592
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 594
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public postMessageWithString(ILjava/lang/String;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 604
    .local v1, "msg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 608
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 610
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public processMQTTCommand(Lcom/nuance/connect/service/comm/Command;)Z
    .locals 1
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 1128
    const/4 v0, 0x0

    .line 1135
    .local v0, "sent":Z
    return v0
.end method

.method public processReceivedServerMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subtopic"    # Ljava/lang/String;
    .param p3, "r"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/connect/service/manager/ManagerRegistry;->dispatchReceivedMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V

    .line 966
    return-void
.end method

.method public registerServices(Ljava/lang/String;)Z
    .locals 7
    .param p1, "servicesList"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 753
    iget-object v5, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "registerServices()"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, "registrationComplete":Z
    iput-boolean v4, p0, Lcom/nuance/connect/service/ConnectClient;->clientStartComplete:Z

    .line 758
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 782
    :cond_0
    :goto_0
    return v4

    .line 763
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isCurrentlyProcessing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 764
    const/4 v4, 0x1

    goto :goto_0

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "DeviceFirstTimeStartup"

    invoke-interface {v5, v6, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 770
    .local v0, "hasRunFirstTime":Z
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4, p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->setup(Lcom/nuance/connect/service/ConnectClient;Z)V

    .line 772
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 774
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "token":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4, v3}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addService(Ljava/lang/String;)Z

    goto :goto_1

    .line 778
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/connect/service/manager/ManagerRegistry;->complete()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 779
    const/4 v1, 0x1

    :cond_4
    move v4, v1

    .line 782
    goto :goto_0
.end method

.method public removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 2
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    return-void
.end method

.method public sendCommand(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 957
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 958
    return-void
.end method

.method public sendMessageToHost(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 394
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, "send":Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 396
    return-void
.end method

.method public sendMessageToHost(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 424
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 425
    .local v0, "send":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 426
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 427
    return-void
.end method

.method public sendMessageToHost(ILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 412
    .local v1, "send":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 415
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 416
    return-void
.end method

.method public sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 3
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;

    .prologue
    .line 435
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, "send":Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 437
    return-void
.end method

.method public sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V
    .locals 5
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 440
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 441
    .local v1, "send":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v0, "data":Landroid/os/Bundle;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 443
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 457
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 458
    return-void

    .line 444
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 445
    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 446
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 447
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 448
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 449
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 450
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 451
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 453
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageToHost("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Error attaching Object, unsupported type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendMessageToHostDelayed(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "delayMillis"    # I

    .prologue
    .line 478
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$6;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/ConnectClient$6;-><init>(Lcom/nuance/connect/service/ConnectClient;I)V

    .line 484
    .local v0, "r":Ljava/lang/Runnable;
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    .line 485
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 486
    return-void
.end method

.method public sendMessageToHostDelayed(Landroid/os/Message;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # I

    .prologue
    .line 500
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$8;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/ConnectClient$8;-><init>(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V

    .line 506
    .local v0, "r":Ljava/lang/Runnable;
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    .line 507
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    return-void
.end method

.method public sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V
    .locals 4
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "delayMillis"    # I

    .prologue
    .line 489
    new-instance v0, Lcom/nuance/connect/service/ConnectClient$7;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/ConnectClient$7;-><init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 495
    .local v0, "r":Ljava/lang/Runnable;
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze(J)V

    .line 496
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    return-void
.end method

.method public sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/nuance/connect/service/comm/Transaction;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    .line 962
    return-void
.end method

.method public declared-synchronized setCurrentLanguageInfo([I[I)V
    .locals 4
    .param p1, "languageIds"    # [I
    .param p2, "coreIds"    # [I

    .prologue
    .line 1181
    monitor-enter p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1182
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1183
    .local v1, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/LanguageListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    .line 1184
    .local v2, "listener":Lcom/nuance/connect/service/manager/interfaces/LanguageListener;
    if-eqz v2, :cond_0

    .line 1185
    invoke-interface {v2, p1, p2}, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;->onLanguageUpdate([I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1181
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/LanguageListener;>;"
    .end local v2    # "listener":Lcom/nuance/connect/service/manager/interfaces/LanguageListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1189
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setCurrentLocaleInfo(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1199
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1200
    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient;->activeLocale:Ljava/util/Locale;

    .line 1202
    iget-object v3, p0, Lcom/nuance/connect/service/ConnectClient;->languageListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1203
    .local v1, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/LanguageListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    .line 1204
    .local v2, "listener":Lcom/nuance/connect/service/manager/interfaces/LanguageListener;
    if-eqz v2, :cond_0

    .line 1205
    invoke-interface {v2, p1}, Lcom/nuance/connect/service/manager/interfaces/LanguageListener;->onLocaleUpdate(Ljava/util/Locale;)V

    goto :goto_0

    .line 1209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/service/manager/interfaces/LanguageListener;>;"
    .end local v2    # "listener":Lcom/nuance/connect/service/manager/interfaces/LanguageListener;
    :cond_1
    return-void
.end method

.method public setLanguageCoreMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "languageCoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient;->languageCoreMap:Ljava/util/HashMap;

    .line 1213
    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    .line 1238
    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    .line 1242
    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method protected startNextManager()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 848
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "startNextManager()"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 850
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getNextPendingManager()Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v1

    .line 851
    .local v1, "manager":Lcom/nuance/connect/service/manager/interfaces/Manager;
    if-eqz v1, :cond_2

    .line 852
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNextManager() -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 854
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->delayFirstStart()J

    move-result-wide v2

    .line 856
    .local v2, "triggerAtTime":J
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v4

    const-string v5, "DeviceFirstTimeStartup"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 858
    .local v0, "hasRunFirstTime":Z
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 860
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->setStartAlarm(JLjava/lang/String;)V

    .line 861
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delaying start of next manager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " until: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 880
    .end local v0    # "hasRunFirstTime":Z
    .end local v2    # "triggerAtTime":J
    :cond_0
    :goto_0
    return-void

    .line 864
    .restart local v0    # "hasRunFirstTime":Z
    .restart local v2    # "triggerAtTime":J
    :cond_1
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting next manager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 865
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->start()V

    goto :goto_0

    .line 868
    .end local v0    # "hasRunFirstTime":Z
    .end local v2    # "triggerAtTime":J
    :cond_2
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/nuance/connect/service/ConnectClient;->clientStartComplete:Z

    if-nez v4, :cond_0

    .line 869
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "All managers started. Notifying host."

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 870
    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CLIENT_START_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 873
    invoke-virtual {p0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v4

    const-string v5, "DeviceFirstTimeStartup"

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 875
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/connect/service/manager/ManagerRegistry;->postStart()V

    .line 877
    iput-boolean v6, p0, Lcom/nuance/connect/service/ConnectClient;->clientStartComplete:Z

    .line 878
    iget-object v4, p0, Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "ConnectClient started"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public taskCompletedAcknowledgement(Ljava/lang/String;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    .line 1028
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1031
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient;->taskToProcess:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    .line 1036
    :cond_0
    return-void
.end method
