.class Lcom/android/server/display/WifiDisplayAdapter$15;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/IpRemoteDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 9
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I
    .param p6, "connectedMode"    # I

    .prologue
    const/4 v8, 0x2

    .line 1064
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onDisplayConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string/jumbo v0, "wlan.wfd.status"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v7

    monitor-enter v7

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1069
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1076
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1078
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected state = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I
    invoke-static {v0, p6}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1080
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1083
    :cond_1
    monitor-exit v7

    .line 1084
    return-void

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1046
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onDisplayConnectionFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x4

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1053
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1054
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1057
    :cond_1
    monitor-exit v1

    .line 1058
    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayDisconnected()V
    .locals 4

    .prologue
    .line 1089
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpRemoteDisplayListener onDisplayDisconnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string/jumbo v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2400(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1095
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    .line 1097
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    .line 1100
    .local v0, "prevConnectedState":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1101
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1802(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1102
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1103
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, -0x1

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1105
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1109
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestDisableWiFiP2P()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1112
    .end local v0    # "prevConnectedState":I
    :cond_1
    monitor-exit v2

    .line 1113
    return-void

    .line 1112
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayDisconnecting()V
    .locals 3

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1121
    :cond_0
    const-string v0, "WifiDisplayAdapter"

    const-string v2, "IpRemoteDisplayListener onDisplayDisconnecting"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x3

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1125
    :cond_1
    monitor-exit v1

    .line 1126
    return-void

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .locals 2
    .param p1, "featureState"    # I

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1038
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1040
    :cond_0
    monitor-exit v1

    .line 1041
    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onQosLevelChanged(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1131
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onQosLevelChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mQoSLevel:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1134
    return-void
.end method
