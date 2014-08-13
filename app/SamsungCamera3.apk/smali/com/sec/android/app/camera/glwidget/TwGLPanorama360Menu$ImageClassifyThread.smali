.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;
.super Ljava/lang/Thread;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageClassifyThread"
.end annotation


# instance fields
.field private mInputBmp:Landroid/graphics/Bitmap;

.field private mInputFormat:Ljava/lang/String;

.field private mInputHeight:I

.field private mInputRaw:[B

.field private mInputWidth:I

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V
    .locals 2
    .param p2, "buff"    # Landroid/graphics/Bitmap;
    .param p3, "is"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .prologue
    .line 3261
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3262
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread ImageClassifyThread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 3264
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputBmp:Landroid/graphics/Bitmap;

    .line 3265
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3277
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread run "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    if-nez v0, :cond_1

    .line 3279
    :cond_0
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread run error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    :goto_0
    return-void

    .line 3282
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputHeight:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputFormat:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->convertImage(Landroid/graphics/Bitmap;[BIIILjava/lang/String;)I

    move-result v7

    .line 3283
    .local v7, "ret":I
    if-eqz v7, :cond_2

    .line 3284
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMorphoImageStitcher.convertImage error ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    :cond_2
    const/16 v0, 0x14b

    const-string v1, "InOutClassify"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->loadExternalLibrary(ILjava/lang/String;)V

    .line 3289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputBmp:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/sec/vips/indooroutdoor/communicator/IndoorOutdoorJniBinder;->classify(Landroid/graphics/Bitmap;)D

    move-result-wide v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;D)D

    .line 3290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const-wide/high16 v1, 0x3ff0000000000000L

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;D)D

    .line 3292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    .line 3293
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageClassifyThread run ClassifyResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInputData([BIILjava/lang/String;)V
    .locals 2
    .param p1, "frame"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 3268
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread setInputData "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    .line 3270
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputWidth:I

    .line 3271
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputHeight:I

    .line 3272
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputFormat:Ljava/lang/String;

    .line 3273
    return-void
.end method
