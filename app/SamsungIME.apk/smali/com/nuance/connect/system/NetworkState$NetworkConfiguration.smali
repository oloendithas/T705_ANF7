.class public Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
.super Ljava/lang/Object;
.source "NetworkState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/system/NetworkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkConfiguration"
.end annotation


# static fields
.field private static final delimiter:Ljava/lang/String; = "-"


# instance fields
.field private cellularEnabled:Z

.field private connectionStableRequirement:I

.field private roamingEnabled:Z

.field private wifiEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    .line 22
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    .line 24
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    .line 30
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1
    .param p1, "wifi"    # Z
    .param p2, "cellular"    # Z
    .param p3, "roaming"    # Z

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    .line 22
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    .line 24
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setNetworkState(ZZZ)V

    .line 34
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 98
    .local v0, "configurations":[Ljava/lang/String;
    :try_start_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 103
    new-instance v1, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    .line 107
    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getConnectionStableRequirement()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    return v0
.end method

.method public isCellularEnabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    return v0
.end method

.method public isRoamingEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    return v0
.end method

.method public requiresStableConnection()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConnectionStableRequirement(I)V
    .locals 0
    .param p1, "connectionStableRequirement"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    .line 64
    return-void
.end method

.method public setNetworkState(ZZZ)V
    .locals 0
    .param p1, "wifi"    # Z
    .param p2, "cellular"    # Z
    .param p3, "roaming"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    .line 38
    iput-boolean p2, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    .line 39
    iput-boolean p3, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    .line 40
    return-void
.end method

.method public toReadableString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "wifi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "cellular("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "roaming("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
