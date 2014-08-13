.class public Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecCameraPreviewCallbackManager"
.end annotation


# static fields
.field private static final BUFFERS_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SecCameraCallbackManager"


# instance fields
.field private mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<[B",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewCallbackFormat:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 2

    .prologue
    .line 4392
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4396
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4397
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    return-void
.end method

.method private releasePreviewBuffer([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 4452
    if-nez p1, :cond_1

    .line 4458
    :cond_0
    :goto_0
    return-void

    .line 4454
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4457
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clearPreviewBuffer()V
    .locals 1

    .prologue
    .line 4461
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    .line 4462
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4463
    return-void
.end method

.method public getPreviewCallbackFormat()I
    .locals 1

    .prologue
    .line 4466
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    return v0
.end method

.method public initBuffers(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    const-wide v4, 0x3ff028f5c28f5c29L

    .line 4424
    iput p3, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    .line 4425
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4427
    const/4 v1, 0x0

    .line 4428
    .local v1, "size":I
    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4429
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 4433
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 4434
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    new-array v3, v1, [B

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4431
    .end local v0    # "i":I
    :cond_0
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 4436
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "arg1"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/16 v2, 0xf0

    .line 4401
    const-string v0, "SecCameraCallbackManager"

    const-string v1, "onPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4404
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;->onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V

    .line 4407
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    .line 4419
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->setPreviewBuffer(Lcom/sec/android/seccamera/SecCamera;)V

    .line 4420
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->releasePreviewBuffer([B)V

    .line 4421
    return-void

    .line 4410
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 4411
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4412
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/16 v1, 0x1ac

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/glview/TwGLContext;->setPreviewData(II[B)V

    goto :goto_0

    .line 4413
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4414
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v2, v2, p1}, Lcom/sec/android/glview/TwGLContext;->setPreviewData(II[B)V

    goto :goto_0

    .line 4416
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/16 v1, 0x140

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/glview/TwGLContext;->setPreviewData(II[B)V

    goto :goto_0
.end method

.method public setPreviewBuffer(Lcom/sec/android/seccamera/SecCamera;)V
    .locals 3
    .param p1, "arg1"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    .line 4439
    if-eqz p1, :cond_1

    .line 4440
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4441
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4443
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4444
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Lcom/sec/android/seccamera/SecCamera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 4449
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;>;"
    :cond_1
    return-void
.end method
