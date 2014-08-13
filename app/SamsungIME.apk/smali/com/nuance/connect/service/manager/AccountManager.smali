.class public Lcom/nuance/connect/service/manager/AccountManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/AccountManager$2;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIRST_START:Ljava/lang/String;

.field public static final ACCOUNT_PREF:Ljava/lang/String;

.field private static final ACCOUNT_REGISTRATION_ALARM:Ljava/lang/String;

.field public static final ALARM_TYPE_REGISTRATION_ALERT:Ljava/lang/String; = "REGISTRATION_ALERT"

.field public static final COMMAND_ACCOUNT:Ljava/lang/String; = "account"

.field public static final COMMAND_ACCOUNT_CHECK:Ljava/lang/String; = "accountCheck"

.field public static final COMMAND_DELETE_ACCOUNT:Ljava/lang/String; = "deleteAccount"

.field public static final COMMAND_DEVICE_LIST:Ljava/lang/String; = "deviceList"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_NAME_DEVICE:Ljava/lang/String; = "nameDevice"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_REVERIFY:Ljava/lang/String; = "reverify"

.field public static final COMMAND_UNLINK_DEVICE:Ljava/lang/String; = "unlinkDevice"

.field public static final COMMAND_VERIFY:Ljava/lang/String; = "verify"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String;

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final NOTIFICATION_ID:I = 0x3491992

.field private static final REGISTRATION_ALARM_DELAY:I = 0x7


# instance fields
.field private final accountList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount;",
            ">;"
        }
    .end annotation
.end field

.field private accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

.field private activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private deviceTypeString:Ljava/lang/String;

.field private firstStart:Z

.field private isDevBuild:Z

.field private isPrefsLoaded:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/nuance/connect/service/manager/AccountManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FIRST_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_FIRST_START:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DEVICE_TYPE_STRING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_REGISTRATION_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_REGISTRATION_ALARM:Ljava/lang/String;

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_ANDROID_ACCOUNTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REVERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_DELETE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DEVICE_NAME:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_SET_DELAYED_REGISTRATION_ALERT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/AccountManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 160
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 104
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->firstStart:Z

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    .line 128
    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/AccountManager;->isDevBuild:Z

    .line 133
    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/AccountManager;->isPrefsLoaded:Z

    .line 137
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 143
    new-instance v0, Lcom/nuance/connect/service/manager/AccountManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/AccountManager$1;-><init>(Lcom/nuance/connect/service/manager/AccountManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    .line 161
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "[AccountManager] AccountManager()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 162
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 163
    sget-object v0, Lcom/nuance/connect/service/manager/AccountManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/nuance/connect/service/manager/AccountManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 166
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "account"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 171
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 176
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "accountCheck"

    new-array v2, v4, [I

    aput v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 180
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "verify"

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 185
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "reverify"

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 190
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unlinkDevice"

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 195
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "nameDevice"

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 200
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deviceList"

    new-array v2, v4, [I

    aput v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 204
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deleteAccount"

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 208
    return-void

    .line 166
    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    .line 171
    :array_1
    .array-data 4
        0x1
        0xf
    .end array-data

    .line 180
    :array_2
    .array-data 4
        0x1
        0xf
    .end array-data

    .line 185
    :array_3
    .array-data 4
        0x1
        0xf
    .end array-data

    .line 190
    :array_4
    .array-data 4
        0x1
        0x0
    .end array-data

    .line 195
    :array_5
    .array-data 4
        0x1
        0x0
    .end array-data

    .line 204
    :array_6
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/AccountManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/AccountManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendAccount()V

    return-void
.end method

.method private addAccount(Lcom/nuance/connect/internal/common/ConnectAccount;)V
    .locals 2
    .param p1, "account"    # Lcom/nuance/connect/internal/common/ConnectAccount;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :cond_0
    return-void
.end method

.method private addAccounts([Ljava/lang/String;)V
    .locals 8
    .param p1, "accounts"    # [Ljava/lang/String;

    .prologue
    .line 960
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "AccountManager.addAccounts() "

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 961
    if-eqz p1, :cond_1

    .line 962
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 963
    .local v0, "account":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountManager.addAccounts() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 964
    new-instance v4, Lcom/nuance/connect/internal/common/ConnectAccount;

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/AccountManager;->addAccount(Lcom/nuance/connect/internal/common/ConnectAccount;)V

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    .end local v0    # "account":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 971
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-void

    .line 969
    :cond_1
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "addAccounts() list is null"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private buildDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v1

    const-string v2, "MODEL"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cleanHouse()V
    .locals 5

    .prologue
    .line 939
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 940
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 941
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 943
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 944
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getCreationMethod()Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 945
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->reset()V

    goto :goto_0

    .line 950
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_1
    return-void
.end method

.method private containsAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-static {p1}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private deleteActiveAccount(ZZ)V
    .locals 2
    .param p1, "permanently"    # Z
    .param p2, "sendStatus"    # Z

    .prologue
    .line 1241
    if-eqz p1, :cond_2

    .line 1242
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V

    .line 1248
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 1249
    if-eqz p2, :cond_1

    .line 1250
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 1252
    :cond_1
    return-void

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    goto :goto_0
.end method

.method private deleteDevice(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "permanently"    # Z

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/service/manager/AccountManager;->deleteActiveAccount(ZZ)V

    .line 1226
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 1227
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 1228
    return-void

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDeviceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempting to Delete a device on an inactive account, ignoring."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 1219
    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    if-eqz p2, :cond_4

    .line 1221
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1223
    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->markAsDeleted()V

    goto :goto_0
.end method

.method private findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 6

    .prologue
    .line 1074
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1075
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 1076
    .local v0, "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1078
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1079
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 1084
    .end local v0    # "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishAccountActivation(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->getAccount(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    .line 1046
    .local v0, "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->verify()V

    .line 1048
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeviceList()V

    .line 1049
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 1050
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendAccount()V

    .line 1054
    new-instance v1, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v2, "com_nuance_connect_notification_account_created_description"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const v2, 0x3491992

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com_nuance_connect_notification_account_created_title"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 1060
    return-void
.end method

.method private finishRegisterAccount(Ljava/lang/String;I)V
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1096
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1097
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/ConnectAccount;->reset()V

    goto :goto_0

    .line 1099
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->containsAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1100
    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-direct {v0, v3, p1, p2, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V

    .line 1102
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AccountManager;->addAccount(Lcom/nuance/connect/internal/common/ConnectAccount;)V

    .line 1104
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->getAccount(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 1105
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    .line 1106
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 1107
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-static {p1}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    return-object v0
.end method

.method private getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com_nuance_connect_tablet_label"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com_nuance_connect_mobile_label"

    goto :goto_0
.end method

.method private getDeviceTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    return-object v0
.end method

.method private getRegisteringAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 5

    .prologue
    .line 1029
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1030
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 1031
    .local v0, "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1035
    .end local v0    # "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 4

    .prologue
    .line 1152
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v2

    const-string v3, "SCREENLAYOUT_SIZE"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1153
    .local v1, "screenLayoutSize":I
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v2

    const-string v3, "SCREEN_DENSITY"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1154
    .local v0, "dpi":I
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 907
    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->isPrefsLoaded:Z

    if-nez v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_FIRST_START:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->firstStart:Z

    .line 909
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/AccountManager;->DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    .line 911
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 913
    .local v0, "savedAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    if-eqz v0, :cond_0

    .line 914
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 915
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 917
    :cond_0
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/AccountManager;->isPrefsLoaded:Z

    .line 919
    .end local v0    # "savedAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_1
    return-void
.end method

.method private onResponseAccount(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 440
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onResponseAccount()"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 441
    iget v8, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 442
    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "71"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "accountId":Ljava/lang/String;
    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "72"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "identifier":Ljava/lang/String;
    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "25"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 445
    .local v7, "type":I
    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "73"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 446
    .local v2, "deviceCount":I
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 447
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 450
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 451
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 454
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Account type returned from the server does not match stored account type"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 459
    :cond_0
    const/4 v6, 0x0

    .line 460
    .local v6, "sendLinkNotification":Z
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v8

    sget-object v9, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 462
    :cond_1
    const/4 v6, 0x1

    .line 466
    :cond_2
    iput-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 467
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountId(Ljava/lang/String;)V

    .line 468
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8, v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->setDeviceCount(I)V

    .line 469
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->verify()V

    .line 471
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v9, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v8, v9, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 473
    if-eqz v6, :cond_3

    .line 475
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->linkedAccount()V

    .line 477
    :cond_3
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeviceList()V

    goto :goto_0

    .line 480
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v6    # "sendLinkNotification":Z
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->reset()V

    goto :goto_0

    .line 483
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_5
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V

    .line 492
    .end local v1    # "accountId":Ljava/lang/String;
    .end local v2    # "deviceCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "identifier":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 493
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 494
    return-void

    .line 484
    :cond_7
    iget v8, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-nez v8, :cond_6

    .line 487
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v8

    sget-object v9, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 488
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V

    .line 489
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendAccountCheck()V

    goto :goto_1
.end method

.method private onResponseAccountCheck(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 595
    iget-object v7, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "[AccountManager] onResponseAccountCheck()"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 596
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v6, "validAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v8, "74"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 598
    .local v3, "jsAccounts":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 601
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 602
    .local v4, "o":Lorg/json/JSONObject;
    const-string v7, "72"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 603
    const-string v7, "72"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AccountManager] JSONException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_1

    .line 611
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 612
    .local v5, "recognizedAccount":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/AccountManager;->getAccount(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->setExistsOnServer(Z)V

    goto :goto_2

    .line 614
    .end local v5    # "recognizedAccount":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 615
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 616
    return-void
.end method

.method private onResponseDeleteAccount(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v2, 0x1

    .line 892
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "[AccountManager] onResponseDeleteAccount()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 893
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v2, :cond_0

    .line 894
    invoke-direct {p0, v2, v2}, Lcom/nuance/connect/service/manager/AccountManager;->deleteActiveAccount(ZZ)V

    .line 895
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V

    .line 897
    :cond_0
    return-void
.end method

.method private onResponseDeviceList(Lcom/nuance/connect/service/comm/Response;)V
    .locals 14
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 806
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AccountManager] onResponseDeviceList() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 807
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v8, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;>;"
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 809
    .local v7, "deviceId":Ljava/lang/String;
    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 810
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "75"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONArray;

    .line 811
    .local v12, "jsDevices":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AccountManager] count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 812
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v11, v3, :cond_4

    .line 814
    :try_start_0
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 815
    .local v13, "o":Lorg/json/JSONObject;
    const-string v3, "16"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "tmpName":Ljava/lang/String;
    const-string v3, "5"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "tmpDeviceId":Ljava/lang/String;
    sget-object v6, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    .line 820
    .local v6, "type":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->buildDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/service/manager/AccountManager;->sendNameDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 826
    :cond_0
    :try_start_1
    const-string v3, "com_nuance_connect_tablet_label"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 827
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "com_nuance_connect_tablet_label"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 829
    sget-object v6, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->TABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 843
    :cond_1
    :goto_1
    :try_start_2
    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    const-string v3, "76"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V

    .line 846
    .local v0, "device":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 812
    .end local v0    # "device":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    .end local v1    # "tmpDeviceId":Ljava/lang/String;
    .end local v2    # "tmpName":Ljava/lang/String;
    .end local v6    # "type":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .end local v13    # "o":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 830
    .restart local v1    # "tmpDeviceId":Ljava/lang/String;
    .restart local v2    # "tmpName":Ljava/lang/String;
    .restart local v6    # "type":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .restart local v13    # "o":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    const-string v3, "com_nuance_connect_mobile_label"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 831
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "com_nuance_connect_mobile_label"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 833
    sget-object v6, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    goto :goto_1

    .line 834
    :cond_3
    const-string v3, "TV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "TV"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 837
    sget-object v6, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->TV:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 839
    :catch_0
    move-exception v10

    .line 840
    .local v10, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting the name for device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 849
    .end local v1    # "tmpDeviceId":Ljava/lang/String;
    .end local v2    # "tmpName":Ljava/lang/String;
    .end local v6    # "type":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .end local v10    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v13    # "o":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 850
    .local v9, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Json exception reading device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 853
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 854
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v3, v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->addDevices(Ljava/util/List;)V

    .line 856
    :cond_5
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 857
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 859
    .end local v11    # "i":I
    .end local v12    # "jsDevices":Lorg/json/JSONArray;
    :cond_6
    return-void
.end method

.method private onResponseNameDevice(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "[AccountManager] onResponseNameDevice()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 776
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 779
    :cond_0
    return-void
.end method

.method private onResponseRegister(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 530
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "[AccountManager] onResponseRegister()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 531
    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 533
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v3, v3, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "72"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, "identifier":Ljava/lang/String;
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v3, v3, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "25"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 535
    .local v2, "type":I
    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/service/manager/AccountManager;->finishRegisterAccount(Ljava/lang/String;I)V

    .line 536
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 537
    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->isDevBuild:Z

    if-eqz v3, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendAccount()V

    .line 541
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    const-string v4, "CONNECT_ACTIVATION"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v3, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v3, v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v4, "com_nuance_connect_notification_activation_code_description"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const v4, 0x3491992

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const-string v4, "com_nuance_connect_activation_code"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const-string v4, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 554
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "identifier":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_1
    :goto_0
    return-void

    .line 551
    :cond_2
    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method private onResponseReverify(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 692
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "[AccountManager] onResponseReverify()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 693
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 695
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    const-string v2, "CONNECT_ACTIVATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v1, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v2, "com_nuance_connect_notification_activation_code_description"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const v2, 0x3491992

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com_nuance_connect_activation_code"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 706
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private onResponseUnlinkDevice(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v3, 0x1

    .line 735
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "[AccountManager] onResponseUnlinkDevice()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 736
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v1, v3, :cond_1

    .line 737
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    .local v0, "deviceId":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/nuance/connect/service/manager/AccountManager;->deleteDevice(Ljava/lang/String;Z)V

    .line 741
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->invalidAccount()V

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendPoll()V

    .line 747
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onResponseVerify(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 648
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "[AccountManager] onResponseVerify()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 649
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 650
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "72"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .local v0, "identifier":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AccountManager;->finishAccountActivation(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string v3, "SUCCESS"

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 662
    .end local v0    # "identifier":Ljava/lang/String;
    :goto_0
    return-void

    .line 654
    :cond_0
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    .line 655
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->cleanHouse()V

    .line 656
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    goto :goto_0

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string v3, "FAILURE"

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_FIRST_START:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->firstStart:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 926
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 931
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_PREF:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendAccount()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "[AccountManager] sendAccount()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 422
    const-string v1, "account"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 423
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 424
    return-void
.end method

.method private sendAccountCheck()V
    .locals 8

    .prologue
    .line 566
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "[AccountManager] sendAccountCheck()"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 567
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 568
    .local v3, "jsonAccounts":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 569
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 571
    .local v4, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "72"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v6, "25"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v6

    goto :goto_0

    .line 577
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 578
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 579
    .local v5, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "74"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v6, "accountCheck"

    sget-object v7, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v6, v7, v5}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    .line 581
    .local v1, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v6, v1}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 583
    .end local v1    # "command":Lcom/nuance/connect/service/comm/Command;
    .end local v5    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private sendDeleteAccount(Z)V
    .locals 6
    .param p1, "deleteData"    # Z

    .prologue
    const/4 v5, 0x1

    .line 869
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AccountManager] sendDeleteAccount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 870
    const-string v2, "deleteAccount"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 871
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    if-eqz p1, :cond_0

    .line 872
    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "94"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 876
    const/4 v2, 0x0

    invoke-direct {p0, v2, v5}, Lcom/nuance/connect/service/manager/AccountManager;->deleteActiveAccount(ZZ)V

    .line 877
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 879
    .local v1, "nm":Landroid/app/NotificationManager;
    const v2, 0x3491992

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 880
    return-void
.end method

.method private sendDeviceList()V
    .locals 3

    .prologue
    .line 790
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "[AccountManager] sendDeviceList()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 791
    const-string v1, "deviceList"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 792
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 793
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 794
    return-void
.end method

.method private sendNameDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "[AccountManager] sendNameDevice()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 758
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 759
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "5"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v2, "16"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v2, "nameDevice"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 762
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 763
    return-void
.end method

.method private sendPoll()V
    .locals 3

    .prologue
    .line 1271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1272
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1273
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1274
    return-void
.end method

.method private sendRegister(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "[AccountManager] sendRegister()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 510
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 511
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "72"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v2, "25"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v2, "register"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 515
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 516
    return-void
.end method

.method private sendRegisterNotification()V
    .locals 3

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_REGISTRATION_ALARM:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 1184
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AccountManager;->isAccountLinked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1187
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1188
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    const-string v2, "CONNECT_ACTIVATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance v1, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v2, "com_nuance_connect_notification_account_create_title"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const v2, 0x3491992

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com_nuance_connect_back_and_sync_title"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    goto :goto_0
.end method

.method private sendReverify(Ljava/lang/String;I)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 673
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "[AccountManager] sendReverify()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 674
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 675
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "72"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v2, "25"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v2, "reverify"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 679
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 680
    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    .prologue
    .line 1017
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1018
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1019
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1020
    return-void
.end method

.method private sendUnlinkDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 716
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "[AccountManager] sendUnlinkDevice()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 717
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 718
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "5"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v2, "unlinkDevice"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 720
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 722
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/nuance/connect/service/manager/AccountManager;->deleteDevice(Ljava/lang/String;Z)V

    .line 723
    return-void
.end method

.method private sendVerify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 628
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "[AccountManager] sendVerify()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 629
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "72"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v2, "25"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v2, "57"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v2, "verify"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 634
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 635
    return-void
.end method

.method private setRegisterAlarm()V
    .locals 7

    .prologue
    const-wide/high16 v5, -0x8000000000000000L

    .line 1165
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_REGISTRATION_ALARM:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1166
    .local v1, "alarmTime":J
    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1167
    new-instance v3, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v5, Lcom/nuance/connect/service/manager/AccountManager;

    const-string v6, "REGISTRATION_ALERT"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    .line 1170
    .local v0, "alarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    .line 1171
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    .line 1175
    .end local v0    # "alarm":Lcom/nuance/connect/util/Alarm;
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendRegisterNotification()V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 403
    const-string v0, "REGISTRATION_ALERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendRegisterNotification()V

    .line 406
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v0, :cond_0

    .line 1261
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->loadPreferences()V

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 1267
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 218
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
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
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->loadPreferences()V

    .line 226
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/manager/interfaces/AccountListener;)V

    .line 227
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->setRegisterAlarm()V

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AccountManager needs to be modified for changes to service-lifecycle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAccountLinked()Z
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v0, :cond_0

    .line 1283
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->loadPreferences()V

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    const/4 v0, 0x1

    .line 1289
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 282
    const/4 v5, 0x0

    .line 283
    .local v5, "handled":Z
    sget-object v8, Lcom/nuance/connect/service/manager/AccountManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 371
    :goto_0
    return v5

    .line 285
    :pswitch_0
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "AccountManager.onHandleMessage(MESSAGE_CLIENT_SET_ANDROID_ACCOUNTS)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    .local v1, "androidAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 289
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/nuance/connect/service/manager/AccountManager;->addAccounts([Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendAccountCheck()V

    .line 292
    :cond_0
    const/4 v5, 0x1

    .line 293
    goto :goto_0

    .line 296
    .end local v1    # "androidAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REGISTER)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 298
    .local v3, "data":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 299
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "identifier":Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 301
    .local v7, "type":I
    invoke-direct {p0, v7, v6}, Lcom/nuance/connect/service/manager/AccountManager;->sendRegister(ILjava/lang/String;)V

    .line 303
    .end local v6    # "identifier":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_1
    const/4 v5, 0x1

    .line 304
    goto :goto_0

    .line 307
    .end local v3    # "data":Landroid/os/Bundle;
    :pswitch_2
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_VERIFY)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 309
    .restart local v3    # "data":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 310
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "code":Ljava/lang/String;
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->getRegisteringAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    .line 312
    .local v0, "activeAccount":Lcom/nuance/connect/internal/common/ConnectAccount;
    if-eqz v0, :cond_3

    .line 313
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendVerify("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v9

    invoke-direct {p0, v8, v9, v2}, Lcom/nuance/connect/service/manager/AccountManager;->sendVerify(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    .end local v0    # "activeAccount":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v2    # "code":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 321
    goto/16 :goto_0

    .line 317
    .restart local v0    # "activeAccount":Lcom/nuance/connect/internal/common/ConnectAccount;
    .restart local v2    # "code":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendStatusUpdate()V

    goto :goto_1

    .line 324
    .end local v0    # "activeAccount":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "data":Landroid/os/Bundle;
    :pswitch_3
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REVERIFY)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 325
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v8, :cond_4

    .line 326
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v9}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/nuance/connect/service/manager/AccountManager;->sendReverify(Ljava/lang/String;I)V

    .line 328
    :cond_4
    const/4 v5, 0x1

    .line 329
    goto/16 :goto_0

    .line 332
    :pswitch_4
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_DELETE)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 334
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeleteAccount(Z)V

    .line 335
    const/4 v5, 0x1

    .line 336
    goto/16 :goto_0

    .line 339
    .end local v3    # "data":Landroid/os/Bundle;
    :pswitch_5
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 341
    .restart local v3    # "data":Landroid/os/Bundle;
    if-eqz v3, :cond_5

    .line 342
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "deviceId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/AccountManager;->sendUnlinkDevice(Ljava/lang/String;)V

    .line 345
    .end local v4    # "deviceId":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    .line 346
    goto/16 :goto_0

    .line 349
    .end local v3    # "data":Landroid/os/Bundle;
    :pswitch_6
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_SET_DEVICE_NAME)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 351
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    .line 352
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v8

    sget-object v9, Lcom/nuance/connect/service/manager/AccountManager;->DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String;

    iget-object v10, p0, Lcom/nuance/connect/service/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    const/4 v5, 0x1

    .line 354
    goto/16 :goto_0

    .line 357
    .end local v3    # "data":Landroid/os/Bundle;
    :pswitch_7
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_SET_DELAYED_REGISTRATION_ALERT)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 358
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v8

    sget-object v9, Lcom/nuance/connect/service/manager/AccountManager;->ACCOUNT_REGISTRATION_ALARM:Ljava/lang/String;

    const/4 v10, 0x7

    invoke-static {v10}, Lcom/nuance/connect/util/TimeConversion;->convertDaysToTimeStamp(I)J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 360
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->setRegisterAlarm()V

    .line 361
    const/4 v5, 0x1

    .line 362
    goto/16 :goto_0

    .line 365
    :pswitch_8
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES)"

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 366
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendDeviceList()V

    .line 367
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseAccount(Lcom/nuance/connect/service/comm/Response;)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseRegister(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "accountCheck"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseAccountCheck(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "verify"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseVerify(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "reverify"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseReverify(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unlinkDevice"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseUnlinkDevice(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 392
    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "nameDevice"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseNameDevice(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 394
    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deviceList"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 395
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseDeviceList(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 396
    :cond_8
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deleteAccount"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AccountManager;->onResponseDeleteAccount(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 238
    sget-object v3, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 240
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v3

    const-string v4, "SWYPE_BUILD_TYPE"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "type":Ljava/lang/String;
    const-string v3, "Dev"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    iput-boolean v6, p0, Lcom/nuance/connect/service/manager/AccountManager;->isDevBuild:Z

    .line 244
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ACCOUNT_EMAIL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "testingAccount":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountManager: Auto-registering an account for TESTING PURPOSES: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 248
    invoke-direct {p0, v6, v1}, Lcom/nuance/connect/service/manager/AccountManager;->sendRegister(ILjava/lang/String;)V

    .line 251
    .end local v1    # "testingAccount":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 252
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DEVICE_NAME:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com_nuance_connect_tablet_label"

    :goto_0
    invoke-virtual {v4, v5, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 256
    :cond_1
    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->firstStart:Z

    if-eqz v3, :cond_4

    .line 257
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->firstStart:Z

    .line 258
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->savePreferences()V

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_ANDROID_ACCOUNTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 268
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 269
    return-void

    .line 252
    :cond_3
    const-string v3, "com_nuance_connect_mobile_label"

    goto :goto_0

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AccountManager;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v3, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AccountManager;->sendAccount()V

    goto :goto_1
.end method
