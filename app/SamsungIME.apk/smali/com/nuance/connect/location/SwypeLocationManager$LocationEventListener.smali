.class public Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/location/SwypeLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/location/SwypeLocationManager;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/location/SwypeLocationManager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # invokes: Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$000(Lcom/nuance/connect/location/SwypeLocationManager;Landroid/location/Location;)V

    .line 90
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 94
    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/location/SwypeLocationManager;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled("

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

    .line 95
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # invokes: Lcom/nuance/connect/location/SwypeLocationManager;->setupLocationService()V
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$200(Lcom/nuance/connect/location/SwypeLocationManager;)V

    .line 97
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$300(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    const/4 v1, 0x1

    # invokes: Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$400(Lcom/nuance/connect/location/SwypeLocationManager;Z)V

    .line 100
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 104
    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/location/SwypeLocationManager;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled("

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

    .line 106
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # invokes: Lcom/nuance/connect/location/SwypeLocationManager;->setupLocationService()V
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$200(Lcom/nuance/connect/location/SwypeLocationManager;)V

    .line 108
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$300(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    const/4 v1, 0x1

    # invokes: Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$400(Lcom/nuance/connect/location/SwypeLocationManager;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 115
    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/location/SwypeLocationManager;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 117
    return-void
.end method
