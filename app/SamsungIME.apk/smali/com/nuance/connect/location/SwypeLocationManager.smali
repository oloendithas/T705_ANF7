.class public Lcom/nuance/connect/location/SwypeLocationManager;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/location/SwypeLocationManager$3;,
        Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    }
.end annotation


# static fields
.field private static final CHECK_ONCE_GPS_TIMEOUT:I = 0x7530

.field private static final DEFAULT_DISTANCE_FINDER:F = 10000.0f

.field private static final DEFAULT_MIN_DISTANCE_FINDER:F = 100.0f

.field private static final DEFAULT_MIN_TIME_FINDER:J = 0xea60L

.field private static final DEFAULT_TIME_FINDER:J = 0x36ee80L

.field private static final MSG_GPS_LOCATION_TIMEOUT:I = 0x7d1

.field private static final MSG_LOCATION_PROCESSED_CHECK:I = 0x7d0

.field private static final STALE_INTERVAL:I = 0x36ee80

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private volatile aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

.field private allowedGps:Z

.field private allowedNetwork:Z

.field private allowedPassive:Z

.field private attemptOnceGPS:Z

.field private attemptOnceNetwork:Z

.field private ctx:Landroid/content/Context;

.field private volatile currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

.field private gpsEnabled:Z

.field private volatile gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private hasCoarse:Z

.field private hasFine:Z

.field private volatile lastLocation:Lcom/nuance/connect/location/SwypeLocation;

.field private lastLocationProcessed:J

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/connect/location/SwypeLocationListener;",
            "Lcom/nuance/connect/location/SwypeLocationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private locationLevel:I

.field private volatile locationManager:Landroid/location/LocationManager;

.field private final mHandler:Landroid/os/Handler;

.field private networkEnabled:Z

.field private volatile networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

.field private passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "SwypeLocationManager"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    .line 54
    iput v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    .line 55
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    .line 56
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    .line 57
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsEnabled:Z

    .line 58
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    .line 61
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    .line 62
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    .line 64
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    .line 66
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J

    .line 70
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    .line 80
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    .line 81
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    .line 137
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$1;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    .line 168
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 126
    iput p2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    .line 131
    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->setupLocationService()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/location/SwypeLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;
    .param p1, "x1"    # Lcom/nuance/connect/location/SwypeLocation;
    .param p2, "x2"    # Lcom/nuance/connect/location/SwypeLocationSettings;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/location/SwypeLocationManager;->sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/location/SwypeLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->setupLocationService()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/location/SwypeLocationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/location/SwypeLocationManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/location/SwypeLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->attemptFetchOnce()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/location/SwypeLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/location/SwypeLocationManager;
    .param p1, "x1"    # Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    return-object p1
.end method

.method private attemptFetchOnce()V
    .locals 9

    .prologue
    const-wide/32 v7, 0xea60

    const-wide/16 v2, 0x0

    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "attemptFetchOnce()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getActiveSearch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, " -- not allowed to active search."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-nez v0, :cond_3

    .line 383
    iput-boolean v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    .line 385
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_2

    .line 386
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 387
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 394
    :cond_3
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-nez v0, :cond_0

    .line 397
    iput-boolean v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    .line 399
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_4

    .line 400
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 401
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 406
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private isBetterLocation(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocation;)Z
    .locals 11
    .param p1, "location"    # Lcom/nuance/connect/location/SwypeLocation;
    .param p2, "current"    # Lcom/nuance/connect/location/SwypeLocation;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 574
    const/4 v1, 0x0

    .line 576
    .local v1, "better":Z
    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getTime()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/nuance/connect/location/SwypeLocation;->getTime()J

    move-result-wide v9

    sub-long v3, v7, v9

    .line 577
    .local v3, "timeDelta":J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    move v2, v5

    .line 579
    .local v2, "isNewer":Z
    :goto_0
    const-wide/32 v7, 0x36ee80

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    move v1, v5

    .line 598
    .end local v1    # "better":Z
    :cond_0
    :goto_1
    return v1

    .end local v2    # "isNewer":Z
    .restart local v1    # "better":Z
    :cond_1
    move v2, v6

    .line 577
    goto :goto_0

    .line 582
    .restart local v2    # "isNewer":Z
    :cond_2
    const-wide/32 v7, -0x36ee80

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    move v1, v6

    .line 584
    goto :goto_1

    .line 588
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {p2}, Lcom/nuance/connect/location/SwypeLocation;->getAccuracy()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 590
    .local v0, "accuracyDelta":I
    if-gez v0, :cond_4

    move v1, v5

    .line 592
    goto :goto_1

    .line 593
    :cond_4
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    move v1, v5

    .line 595
    goto :goto_1
.end method

.method private declared-synchronized processLocationUpdate(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 440
    monitor-enter p0

    if-nez p1, :cond_1

    .line 441
    :try_start_0
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Recieved Location Update, but was null. Not Processing."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J

    .line 446
    new-instance v0, Lcom/nuance/connect/location/SwypeLocation;

    invoke-direct {v0, p1}, Lcom/nuance/connect/location/SwypeLocation;-><init>(Landroid/location/Location;)V

    .line 448
    .local v0, "sLoc":Lcom/nuance/connect/location/SwypeLocation;
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location Update: Time: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Provider: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Acuracy: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Long: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Lat: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->isBetterLocation(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocation;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Not a better location then the previous last location. Stopping Processing."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 440
    .end local v0    # "sLoc":Lcom/nuance/connect/location/SwypeLocation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 463
    .restart local v0    # "sLoc":Lcom/nuance/connect/location/SwypeLocation;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    if-nez v1, :cond_3

    .line 466
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error processing location update without configuration"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 467
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V

    goto/16 :goto_0

    .line 472
    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeoCode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->getLastGeocodeTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeocodeInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 475
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "handle Geo Coding now, firing off thread"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 476
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->setLastGeocodeTime(J)V

    .line 478
    new-instance v1, Lcom/nuance/connect/location/SwypeLocationManager$2;

    invoke-direct {v1, p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager$2;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocation;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 524
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "handle Geo Coding -- completed"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 529
    :goto_1
    iget-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v1, :cond_4

    .line 530
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 531
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 533
    :cond_4
    iget-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    goto/16 :goto_0

    .line 526
    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 6
    .param p1, "location"    # Lcom/nuance/connect/location/SwypeLocation;
    .param p2, "settings"    # Lcom/nuance/connect/location/SwypeLocationSettings;

    .prologue
    .line 541
    monitor-enter p0

    const/4 v4, 0x0

    .line 543
    .local v4, "updateListeners":Z
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 544
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/location/SwypeLocationListener;

    .line 545
    .local v2, "listener":Lcom/nuance/connect/location/SwypeLocationListener;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/location/SwypeLocationSettings;

    .line 547
    .local v3, "setting":Lcom/nuance/connect/location/SwypeLocationSettings;
    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->markUpdate()V

    .line 549
    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->shouldContinue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 550
    invoke-interface {v2, p1}, Lcom/nuance/connect/location/SwypeLocationListener;->onLocationComplete(Lcom/nuance/connect/location/SwypeLocation;)V

    .line 551
    const/4 v4, 0x1

    goto :goto_0

    .line 553
    :cond_0
    invoke-interface {v2, p1}, Lcom/nuance/connect/location/SwypeLocationListener;->onLocation(Lcom/nuance/connect/location/SwypeLocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 541
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/nuance/connect/location/SwypeLocationListener;
    .end local v3    # "setting":Lcom/nuance/connect/location/SwypeLocationSettings;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 558
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    .line 560
    if-eqz v4, :cond_2

    .line 562
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private setupLocationService()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    .line 176
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    .line 181
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsEnabled:Z

    .line 183
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    .line 186
    iget v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_3
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup of Location Service: Level: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fine: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] course: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] allowed gps: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] network: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] passive: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 208
    return-void

    .line 177
    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 181
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 183
    goto :goto_2

    .line 188
    :pswitch_0
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    .line 189
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    .line 190
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    goto :goto_3

    .line 193
    :pswitch_1
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    .line 194
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    .line 195
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    goto/16 :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    .line 199
    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    .line 200
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    .line 201
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    goto/16 :goto_3

    :cond_5
    move v1, v2

    goto :goto_5

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startNewLocationPattern(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 10
    .param p1, "settings"    # Lcom/nuance/connect/location/SwypeLocationSettings;

    .prologue
    const/high16 v4, 0x42c80000

    const-wide/32 v8, 0xea60

    .line 265
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 266
    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    .line 267
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    .line 269
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting new location pattern for mode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    if-ne v0, v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 277
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Unable to aquire location manager."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    if-nez v0, :cond_4

    .line 283
    :cond_3
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "No valid permissions for location."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    if-eq v0, v1, :cond_6

    .line 290
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_5

    const-string v0, "network"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "---- last network requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 293
    .local v7, "networkLocation":Landroid/location/Location;
    if-eqz v7, :cond_5

    .line 294
    invoke-direct {p0, v7}, Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    .line 298
    .end local v7    # "networkLocation":Landroid/location/Location;
    :cond_5
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_6

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "---- last gps requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 301
    .local v6, "gpsLocation":Landroid/location/Location;
    if-eqz v6, :cond_6

    .line 302
    invoke-direct {p0, v6}, Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    .line 307
    .end local v6    # "gpsLocation":Landroid/location/Location;
    :cond_6
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager$3;->$SwitchMap$com$nuance$connect$location$SwypeLocationSettings$LocationMode:[I

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 358
    :cond_7
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed Starting new location pattern for mode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 313
    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_8

    .line 316
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 317
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 319
    :cond_8
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_7

    .line 322
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 323
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const v4, 0x461c4000

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 330
    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_9

    .line 334
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 335
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 339
    :cond_9
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_a

    const-string v0, "network"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 343
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 344
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 348
    :cond_a
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_7

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 352
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private stopCurrentLocationPattern()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 421
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 423
    iput-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 427
    iput-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 431
    iput-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    .line 433
    :cond_2
    return-void
.end method

.method private declared-synchronized updateActiveListeners(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "updateActiveListeners()"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 233
    sget-object v2, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    .line 234
    .local v2, "newMode":Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    new-instance v3, Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-direct {v3, v2}, Lcom/nuance/connect/location/SwypeLocationSettings;-><init>(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)V

    .line 236
    .local v3, "newSettings":Lcom/nuance/connect/location/SwypeLocationSettings;
    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/location/SwypeLocationSettings;

    .line 239
    .local v4, "setting":Lcom/nuance/connect/location/SwypeLocationSettings;
    invoke-virtual {v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMaxMode(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v2

    .line 240
    invoke-virtual {v3, v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->merge(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 231
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newMode":Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    .end local v3    # "newSettings":Lcom/nuance/connect/location/SwypeLocationSettings;
    .end local v4    # "setting":Lcom/nuance/connect/location/SwypeLocationSettings;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 243
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "newMode":Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    .restart local v3    # "newSettings":Lcom/nuance/connect/location/SwypeLocationSettings;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    .line 255
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 247
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->stopCurrentLocationPattern()V

    .line 249
    sget-object v5, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 252
    invoke-direct {p0, v3}, Lcom/nuance/connect/location/SwypeLocationManager;->startNewLocationPattern(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public allowedPassive()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    return v0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/connect/location/SwypeLocationListener;
    .param p2, "setting"    # Lcom/nuance/connect/location/SwypeLocationSettings;

    .prologue
    .line 605
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "registerListener()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    invoke-interface {p1, v0}, Lcom/nuance/connect/location/SwypeLocationListener;->onLocation(Lcom/nuance/connect/location/SwypeLocation;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V

    .line 615
    return-void
.end method

.method public unregisterListener(Lcom/nuance/connect/location/SwypeLocationListener;)Z
    .locals 5
    .param p1, "remove"    # Lcom/nuance/connect/location/SwypeLocationListener;

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, "found":Z
    iget-object v4, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 628
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 631
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/location/SwypeLocationListener;

    .line 632
    .local v2, "listener":Lcom/nuance/connect/location/SwypeLocationListener;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    iget-object v4, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    const/4 v0, 0x1

    .line 643
    .end local v2    # "listener":Lcom/nuance/connect/location/SwypeLocationListener;
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;>;"
    :cond_1
    return v0

    .line 638
    :catch_0
    move-exception v4

    goto :goto_0
.end method
