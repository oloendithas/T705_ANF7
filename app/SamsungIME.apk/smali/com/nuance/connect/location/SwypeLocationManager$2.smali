.class Lcom/nuance/connect/location/SwypeLocationManager$2;
.super Ljava/lang/Thread;
.source "SwypeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/location/SwypeLocationManager;

.field final synthetic val$sLoc:Lcom/nuance/connect/location/SwypeLocation;


# direct methods
.method constructor <init>(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocation;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager$2;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    iput-object p2, p0, Lcom/nuance/connect/location/SwypeLocationManager$2;->val$sLoc:Lcom/nuance/connect/location/SwypeLocation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 481
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v2, "SwypeLocationManager"

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v10

    .line 483
    .local v10, "log":Lcom/nuance/connect/util/Logger$Log;
    const-string v1, "Attempting to get geocode information for location"

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 484
    iget-object v11, p0, Lcom/nuance/connect/location/SwypeLocationManager$2;->val$sLoc:Lcom/nuance/connect/location/SwypeLocation;

    .line 485
    .local v11, "threadLocation":Lcom/nuance/connect/location/SwypeLocation;
    invoke-virtual {v11}, Lcom/nuance/connect/location/SwypeLocation;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 489
    .local v9, "loc":Landroid/location/Location;
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager$2;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$1000(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 490
    .local v0, "geo":Landroid/location/Geocoder;
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 493
    .local v7, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v12, :cond_1

    .line 494
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 495
    .local v6, "address":Landroid/location/Address;
    invoke-virtual {v11, v6}, Lcom/nuance/connect/location/SwypeLocation;->setAddress(Landroid/location/Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 510
    .end local v0    # "geo":Landroid/location/Geocoder;
    .end local v6    # "address":Landroid/location/Address;
    .end local v7    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    :goto_0
    invoke-virtual {v11}, Lcom/nuance/connect/location/SwypeLocation;->getAddress()Landroid/location/Address;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geocode complete -- Country: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/nuance/connect/location/SwypeLocation;->getAddress()Landroid/location/Address;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Admin: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/nuance/connect/location/SwypeLocation;->getAddress()Landroid/location/Address;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Locality: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/nuance/connect/location/SwypeLocation;->getAddress()Landroid/location/Address;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 519
    :goto_1
    const-string v1, " completed geo coding --- "

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 520
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager$2;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager$2;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    # getter for: Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;
    invoke-static {v2}, Lcom/nuance/connect/location/SwypeLocationManager;->access$1100(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings;

    move-result-object v2

    # invokes: Lcom/nuance/connect/location/SwypeLocationManager;->sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    invoke-static {v1, v11, v2}, Lcom/nuance/connect/location/SwypeLocationManager;->access$1200(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V

    .line 521
    return-void

    .line 496
    .restart local v0    # "geo":Landroid/location/Geocoder;
    .restart local v7    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v12, :cond_0

    .line 497
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 498
    .restart local v6    # "address":Landroid/location/Address;
    invoke-virtual {v11, v6}, Lcom/nuance/connect/location/SwypeLocation;->setAddress(Landroid/location/Address;)V

    .line 499
    invoke-virtual {v11, v7}, Lcom/nuance/connect/location/SwypeLocation;->setAddressList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 501
    .end local v0    # "geo":Landroid/location/Geocoder;
    .end local v6    # "address":Landroid/location/Address;
    .end local v7    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 502
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgument Error generating location level data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 504
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 505
    .local v8, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Error generating location level data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 506
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 507
    .local v8, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error generating location level data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 516
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v1, "geocode complete -- empty address"

    invoke-interface {v10, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
