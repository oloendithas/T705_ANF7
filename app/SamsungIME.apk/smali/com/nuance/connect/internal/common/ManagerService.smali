.class public final enum Lcom/nuance/connect/internal/common/ManagerService;
.super Ljava/lang/Enum;
.source "ManagerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum ADDON:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum SESSION:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum SYNC:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;


# instance fields
.field managerDependencies:[Lcom/nuance/connect/internal/common/ManagerService;

.field managerName:Ljava/lang/String;

.field service:Lcom/nuance/connect/common/ConnectFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v1, "CONFIG"

    const-string v3, "swypeconfig"

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    new-array v5, v2, [Lcom/nuance/connect/internal/common/ManagerService;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    .line 8
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "DEVICE"

    const-string v6, "device"

    const/4 v7, 0x0

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    .line 11
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "SESSION"

    const-string v6, "session"

    const/4 v7, 0x0

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    .line 14
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "RESOURCES"

    const-string v6, "internal_resources"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    .line 17
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "DOCUMENTS"

    const-string v6, "docs"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    .line 20
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "MESSAGE"

    const/4 v5, 0x5

    const-string v6, "messaging"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->MESSAGE:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    .line 23
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "LANGUAGE"

    const/4 v5, 0x6

    const-string v6, "language"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

    .line 26
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "ACCOUNT"

    const/4 v5, 0x7

    const-string v6, "account"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    .line 29
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "ADDON"

    const/16 v5, 0x8

    const-string v6, "addon"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->ADDON:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->ADDON:Lcom/nuance/connect/internal/common/ManagerService;

    .line 32
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "REPORTING"

    const/16 v5, 0x9

    const-string v6, "report"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

    .line 35
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "UPGRADE"

    const/16 v5, 0xa

    const-string v6, "upgrade"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->UPGRADE:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;

    .line 38
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "SYNC"

    const/16 v5, 0xb

    const-string v6, "dlm"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    .line 41
    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "CATEGORY"

    const/16 v5, 0xc

    const-string v6, "cdb"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    .line 5
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v10

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v11

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->ADDON:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/common/ManagerService;->$VALUES:[Lcom/nuance/connect/internal/common/ManagerService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V
    .locals 0
    .param p3, "managerName"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/nuance/connect/common/ConnectFeature;
    .param p5, "dependencies"    # [Lcom/nuance/connect/internal/common/ManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/common/ConnectFeature;",
            "[",
            "Lcom/nuance/connect/internal/common/ManagerService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerName:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerDependencies:[Lcom/nuance/connect/internal/common/ManagerService;

    .line 52
    iput-object p4, p0, Lcom/nuance/connect/internal/common/ManagerService;->service:Lcom/nuance/connect/common/ConnectFeature;

    .line 53
    return-void
.end method

.method public static managerForService(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 64
    if-eqz p0, :cond_1

    .line 65
    invoke-static {}, Lcom/nuance/connect/internal/common/ManagerService;->values()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/connect/internal/common/ManagerService;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 66
    .local v3, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    iget-object v4, v3, Lcom/nuance/connect/internal/common/ManagerService;->service:Lcom/nuance/connect/common/ConnectFeature;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/nuance/connect/internal/common/ManagerService;->service:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, v3, Lcom/nuance/connect/internal/common/ManagerService;->managerName:Ljava/lang/String;

    .line 71
    .end local v0    # "arr$":[Lcom/nuance/connect/internal/common/ManagerService;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :goto_1
    return-object v4

    .line 65
    .restart local v0    # "arr$":[Lcom/nuance/connect/internal/common/ManagerService;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "arr$":[Lcom/nuance/connect/internal/common/ManagerService;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ManagerService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/nuance/connect/internal/common/ManagerService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ManagerService;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ManagerService;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->$VALUES:[Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ManagerService;

    return-object v0
.end method


# virtual methods
.method public getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerDependencies:[Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ManagerService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerName:Ljava/lang/String;

    return-object v0
.end method
