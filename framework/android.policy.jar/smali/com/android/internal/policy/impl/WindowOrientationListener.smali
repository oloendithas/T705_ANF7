.class public abstract Lcom/android/internal/policy/impl/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static mbResultFaceDectection:Z

.field private static msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

.field private static sCurrentAppAngle:I

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUsedautorotioansensor:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 69
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    .line 72
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 73
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 94
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 127
    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    .local v0, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    .line 131
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mbSContext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 133
    sput-boolean v5, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 135
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_66

    .line 137
    const-string v1, "WindowOrientationListener"

    const-string v2, "++SContextListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 139
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    .line 140
    const-string v1, "WindowOrientationListener"

    const-string v2, "--SContextListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_65
    return-void

    .line 144
    :cond_66
    const-string v1, "WindowOrientationListener"

    const-string v2, "++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 147
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 149
    if-ne p3, v6, :cond_80

    .line 150
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 151
    :cond_80
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 158
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v4, :cond_91

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10016

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 162
    :cond_91
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_99

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-nez v1, :cond_a3

    .line 164
    :cond_99
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 165
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 168
    :cond_a3
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_b2

    .line 170
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v4, :cond_ba

    .line 171
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .line 178
    :cond_b2
    :goto_b2
    const-string v1, "WindowOrientationListener"

    const-string v2, "--SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 174
    :cond_ba
    const-string v1, "WindowOrientationListener"

    const-string v2, "++++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_b2
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 67
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$700()Lcom/sec/android/smartface/SmartFaceManager;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager;
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 67
    sput-object p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 67
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method public static getCurrentRotation()I
    .registers 1

    .prologue
    .line 351
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method private insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 361
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "feature"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_38
    return-void
.end method

.method public static setCurrentAppOrientation(I)V
    .registers 1
    .param p0, "appOrientation"    # I

    .prologue
    .line 342
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 343
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_a

    .line 315
    monitor-exit v1

    .line 317
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_13

    :goto_e
    monitor-exit v1

    goto :goto_9

    .line 319
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 317
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public disable()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_17

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->resetRotation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->access$200(Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;)V

    .line 252
    :cond_15
    :goto_15
    monitor-exit v1

    .line 253
    :goto_16
    return-void

    .line 238
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_27

    .line 239
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v1

    goto :goto_16

    .line 252
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0

    .line 242
    :cond_27
    :try_start_27
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v3, :cond_15

    .line 243
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_3a
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v0, v3, :cond_46

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    .line 249
    :cond_46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_15

    .line 244
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_24

    goto :goto_3a
.end method

.method public enable()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_13

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 224
    :cond_11
    :goto_11
    monitor-exit v1

    .line 225
    :goto_12
    return-void

    .line 203
    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_26

    .line 205
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v1

    goto :goto_12

    .line 224
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0

    .line 208
    :cond_26
    :try_start_26
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_11

    .line 209
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_35

    .line 210
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eq v0, v3, :cond_53

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 218
    :goto_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_46
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_11

    .line 215
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    goto :goto_3e

    .line 218
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_23

    goto :goto_46
.end method

.method public getProposedRotation()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_10

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->getProposedRotation()I

    move-result v0

    monitor-exit v1

    .line 294
    :goto_f
    return v0

    .line 281
    :cond_10
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-eqz v2, :cond_4c

    .line 282
    sget-boolean v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 284
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProposedRotation facedetection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v1

    goto :goto_f

    .line 297
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v0

    .line 288
    :cond_38
    :try_start_38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_44

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_f

    .line 291
    :cond_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_f

    .line 294
    :cond_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_35

    goto :goto_f
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_3
    iput p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 263
    sput p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setFaceDetectionResult(Z)V
    .registers 2
    .param p1, "ResultFaceDectection"    # Z

    .prologue
    .line 306
    sput-boolean p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 307
    return-void
.end method
