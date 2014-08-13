.class public Lcom/sec/android/app/camera/QuickShot;
.super Landroid/app/Activity;
.source "QuickShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/QuickShot$1;,
        Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;,
        Lcom/sec/android/app/camera/QuickShot$ShutterCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "QuickShot"


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/QuickShot;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 149
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/QuickShot;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/QuickShot;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/camera/QuickShot;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/QuickShot;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/QuickShot;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/QuickShot;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/QuickShot;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/QuickShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/QuickShot;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/camera/QuickShot;->isSecureKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private getDateTaken()J
    .locals 5

    .prologue
    .line 131
    const-string v3, "QuickShot"

    const-string v4, "getDateTaken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 133
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 134
    .local v1, "time":Landroid/text/format/Time;
    iget-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 135
    .local v2, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    return-wide v3
.end method

.method private getSizeRatio(II)I
    .locals 5
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "nResult":I
    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 127
    return v0
.end method

.method private isSecureKeyguardLocked()Z
    .locals 2

    .prologue
    .line 217
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 218
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openCamera(I)Z
    .locals 12
    .param p1, "cameraId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 77
    const-string v7, "QuickShot"

    const-string v8, "openCamera"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v7, 0x0

    const/16 v8, 0x64

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/camera/QuickShot;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/seccamera/SecCamera;->open(IILandroid/os/Looper;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v7, :cond_3

    .line 84
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 85
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v7, :cond_0

    .line 86
    const-string v7, "QuickShot"

    const-string v8, "CameraParameters is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "listSize":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 94
    .local v0, "curSize":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v7, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v8, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/QuickShot;->getSizeRatio(II)I

    move-result v4

    .line 95
    .local v4, "pictureRatio":I
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v8, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v9, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 96
    const-string v7, "QuickShot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set picture size - width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 100
    .local v6, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v7, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v8, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/QuickShot;->getSizeRatio(II)I

    move-result v5

    .line 101
    .local v5, "previewRatio":I
    if-ne v4, v5, :cond_1

    .line 102
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v8, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v9, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 106
    .end local v5    # "previewRatio":I
    .end local v6    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v8, "no-display-mode"

    invoke-virtual {v7, v8, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 107
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v8}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 108
    iget-object v7, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 110
    .end local v0    # "curSize":Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listSize":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v4    # "pictureRatio":I
    :cond_3
    return v11

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "QuickShot"

    const-string v8, "Camera open failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sleep(I)V
    .locals 3
    .param p1, "sleep"    # I

    .prologue
    .line 210
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private takePicture()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    const/4 v3, 0x0

    .line 114
    const-string v0, "QuickShot"

    const-string v1, "takePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "TakePicture as QuickShot"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    new-instance v1, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;-><init>(Lcom/sec/android/app/camera/QuickShot;Lcom/sec/android/app/camera/QuickShot$1;)V

    new-instance v2, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/QuickShot;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 118
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "QuickShot"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Callback Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCallbackThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/QuickShot;->openCamera(I)Z

    .line 72
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/QuickShot;->sleep(I)V

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/QuickShot;->takePicture()Z

    .line 74
    return-void
.end method
