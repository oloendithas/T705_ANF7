.class final Landroid/webkitsec/DeviceMotionService;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INTERVAL_MILLIS:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSentErrorEvent:Z

.field private mIsRunning:Z

.field private mLastAcceleration:[F

.field private mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Landroid/webkitsec/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/webkitsec/DeviceMotionAndOrientationManager;Landroid/content/Context;)V
    .registers 4
    .param p1, "manager"    # Landroid/webkitsec/DeviceMotionAndOrientationManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/webkitsec/DeviceMotionService;->mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    .line 45
    sget-boolean v0, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_13
    iput-object p2, p0, Landroid/webkitsec/DeviceMotionService;->mContext:Landroid/content/Context;

    .line 47
    sget-boolean v0, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_23
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/DeviceMotionService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/DeviceMotionService;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkitsec/DeviceMotionService;)Landroid/webkitsec/DeviceMotionAndOrientationManager;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/DeviceMotionService;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/DeviceMotionService;)[F
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/DeviceMotionService;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkitsec/DeviceMotionService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/DeviceMotionService;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkitsec/DeviceMotionService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/DeviceMotionService;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/webkitsec/DeviceMotionService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/DeviceMotionService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/webkitsec/DeviceMotionService;->mHaveSentErrorEvent:Z

    return p1
.end method

.method private createHandler()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 114
    :goto_4
    return-void

    .line 98
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/webkitsec/DeviceMotionService$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/DeviceMotionService$2;-><init>(Landroid/webkitsec/DeviceMotionService;)V

    iput-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    goto :goto_4
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .registers 3

    .prologue
    .line 133
    sget-boolean v0, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_1a

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_1a
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2b

    .line 135
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 137
    :cond_2b
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private registerForAccelerometerSensor()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 147
    :goto_10
    return v1

    .line 145
    :cond_11
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->createHandler()V

    .line 147
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    goto :goto_10
.end method

.method private registerForSensor()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->registerForAccelerometerSensor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 128
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->sendErrorEvent()V

    .line 130
    :cond_9
    return-void
.end method

.method private sendErrorEvent()V
    .registers 3

    .prologue
    .line 75
    sget-boolean v0, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_1a

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_1a
    iget-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mHaveSentErrorEvent:Z

    if-eqz v0, :cond_1f

    .line 91
    :goto_1e
    return-void

    .line 79
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mHaveSentErrorEvent:Z

    .line 80
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->createHandler()V

    .line 81
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkitsec/DeviceMotionService$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/DeviceMotionService$1;-><init>(Landroid/webkitsec/DeviceMotionService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method

.method private startSendingUpdates()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->createHandler()V

    .line 118
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    return-void
.end method

.method private stopSendingUpdates()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F

    .line 124
    return-void
.end method

.method private unregisterFromSensor()V
    .registers 2

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 179
    sget-boolean v0, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_1a

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_1a
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    .line 161
    sget-boolean v1, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 162
    :cond_11
    sget-boolean v1, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v1, :cond_2b

    const-string v1, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 163
    :cond_2b
    sget-boolean v1, Landroid/webkitsec/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v1, :cond_3d

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v0, :cond_3d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 166
    :cond_3d
    iget-boolean v1, p0, Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z

    if-nez v1, :cond_42

    .line 175
    :cond_41
    :goto_41
    return-void

    .line 170
    :cond_42
    iget-object v1, p0, Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F

    if-nez v1, :cond_50

    .line 171
    .local v0, "firstData":Z
    :goto_46
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, p0, Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F

    .line 172
    if-eqz v0, :cond_41

    .line 173
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->startSendingUpdates()V

    goto :goto_41

    .line 170
    .end local v0    # "firstData":Z
    :cond_50
    const/4 v0, 0x0

    goto :goto_46
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z

    if-eqz v0, :cond_7

    .line 70
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->registerForSensor()V

    .line 72
    :cond_7
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z

    .line 52
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->registerForSensor()V

    .line 53
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z

    .line 57
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->stopSendingUpdates()V

    .line 58
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->unregisterFromSensor()V

    .line 59
    return-void
.end method

.method public suspend()V
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z

    if-eqz v0, :cond_a

    .line 63
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->stopSendingUpdates()V

    .line 64
    invoke-direct {p0}, Landroid/webkitsec/DeviceMotionService;->unregisterFromSensor()V

    .line 66
    :cond_a
    return-void
.end method