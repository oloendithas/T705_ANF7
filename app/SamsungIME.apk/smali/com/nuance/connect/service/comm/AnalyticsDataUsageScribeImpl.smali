.class Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
.super Ljava/lang/Object;
.source "AnalyticsDataUsageScribeImpl.java"

# interfaces
.implements Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;


# static fields
.field private static final CONNECT_COMMAND_REQUEST:Ljava/lang/String; = "C002"

.field private static final CONNECT_COMMAND_RESPONSE:Ljava/lang/String; = "C003"

.field private static final CONNECT_DATAPOINT_DATA:Ljava/lang/String; = "C001"

.field private static final CONNECT_DATAPOINT_DATA_CELLULAR_RX:Ljava/lang/String; = "CELLULAR_RX"

.field private static final CONNECT_DATAPOINT_DATA_CELLULAR_TX:Ljava/lang/String; = "CELLULAR_TX"


# instance fields
.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private lastRxBytes:J

.field private lastTxBytes:J

.field private trackNetworkUsageLength:I

.field private trackNetworkUsageStart:J


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 2
    .param p1, "client"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    .line 23
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    .line 29
    iput-object p1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 30
    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->start()V

    .line 31
    return-void
.end method

.method private commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "urlBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "interval"    # I
    .param p6, "timestamp"    # J

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "stat":Landroid/os/Bundle;
    const-string v1, "STAT_TYPE"

    const-string v2, "aggregate"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "STAT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "STAT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "STAT_POINT_VALUE"

    long-to-double v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 79
    const-string v1, "STAT_POINT_INTERVAL"

    int-to-double v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 80
    const-string v1, "STAT_TIMESTAMP"

    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    .line 53
    .local v14, "uid":I
    invoke-static {v14}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidRxBytes(I)J

    move-result-wide v9

    .line 54
    .local v9, "currentRxBytes":J
    const-string v1, "C001"

    const-string v2, "CELLULAR_RX"

    iget-wide v3, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastRxBytes:J

    sub-long v3, v9, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v13

    .line 57
    .local v13, "mobileRx":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v13}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 58
    iput-wide v9, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastRxBytes:J

    .line 60
    invoke-static {v14}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidTxBytes(I)J

    move-result-wide v11

    .line 61
    .local v11, "currentTxBytes":J
    const-string v1, "C001"

    const-string v2, "CELLULAR_TX"

    iget-wide v3, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastTxBytes:J

    sub-long v3, v11, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v8

    .line 64
    .local v8, "cellularTx":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v8}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 65
    iput-wide v11, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastTxBytes:J

    .line 66
    return-void
.end method

.method public mark()V
    .locals 4

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 110
    iget-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    .line 114
    :cond_0
    iget v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    iget-wide v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageStart:J

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/util/TimeConversion;->convertHoursToTimeStamp(IJ)J

    move-result-wide v0

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->flush()V

    .line 119
    :cond_1
    return-void
.end method

.method public setTrackingInterval(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->trackNetworkUsageLength:I

    .line 123
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 102
    .local v0, "uid":I
    invoke-static {v0}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidRxBytes(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastRxBytes:J

    .line 103
    invoke-static {v0}, Lcom/nuance/connect/compat/TrafficStatsCompat;->getUidTxBytes(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->lastTxBytes:J

    .line 104
    return-void
.end method

.method public writeRequest(Lcom/nuance/connect/service/comm/Command;J)V
    .locals 9
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "length"    # J

    .prologue
    .line 35
    const-string v1, "C002"

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v8

    .line 38
    .local v8, "request":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v8}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public writeResponse(Lcom/nuance/connect/service/comm/Command;J)V
    .locals 9
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "length"    # J

    .prologue
    .line 43
    const-string v1, "C003"

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v8

    .line 46
    .local v8, "response":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v8}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 47
    return-void
.end method
