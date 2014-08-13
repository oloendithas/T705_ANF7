.class Lcom/voovio/sweep/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/ResourceManager$DecodeImageTask;,
        Lcom/voovio/sweep/ResourceManager$OnReadyListener;
    }
.end annotation


# instance fields
.field MAX_DISTANCE:I

.field private m_aNeighbours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field public m_aQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field private m_baImage:[B

.field private m_bmImage:Landroid/graphics/Bitmap;

.field private m_bmOpts:Landroid/graphics/BitmapFactory$Options;

.field private m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

.field m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

.field private m_oInstance:Lcom/voovio/sweep/ResourceManager;

.field private m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

.field private m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;


# direct methods
.method public constructor <init>(Lcom/voovio/sweep/ImageProvider;)V
    .locals 2
    .param p1, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    .line 50
    iput-object p0, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    .line 52
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    .line 54
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 56
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    .line 57
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    .line 58
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    .line 61
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    .line 63
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 64
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    .line 66
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    return-void
.end method

.method private checkWaitingForVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 6
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    const/4 v5, 0x0

    .line 219
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v2, p1, :cond_2

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v3, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v3, :cond_2

    .line 220
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    invoke-interface {v2, v3, p1}, Lcom/voovio/sweep/ResourceManager$OnReadyListener;->onVoovioReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Voovio;)V

    .line 223
    :cond_0
    iput-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 227
    .local v0, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 229
    .local v1, "oVoovio1":Lcom/voovio/sweep/Voovio;
    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_1

    .line 230
    :cond_3
    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v3, v0, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v3, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v3, :cond_1

    .line 231
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    invoke-interface {v2, v3, v4}, Lcom/voovio/sweep/ResourceManager$OnReadyListener;->onTransitionReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Transition;)V

    .line 234
    :cond_4
    iput-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    goto :goto_0
.end method


# virtual methods
.method public ClearQueue()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 243
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    .line 244
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    .line 247
    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 249
    .local v0, "fromIndex":I
    :goto_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 250
    .local v1, "toIndex":I
    if-ge v0, v1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 247
    :cond_1
    monitor-exit v3

    .line 253
    return-void

    .line 248
    .end local v0    # "fromIndex":I
    .end local v1    # "toIndex":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    .line 76
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    .line 78
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 80
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    .line 81
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    .line 83
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    .line 85
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 87
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_0
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 91
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 93
    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    .line 94
    return-void
.end method

.method public getImage(Lcom/voovio/sweep/Voovio;)Z
    .locals 14
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 278
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    if-nez v10, :cond_0

    .line 279
    const/4 v10, 0x0

    .line 313
    :goto_0
    return v10

    .line 282
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iget-object v11, p1, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    iget v13, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V

    .line 284
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v11, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v11, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 286
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    const/4 v11, 0x0

    iget v12, p1, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iget-object v13, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, "bmImage":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eq v0, v10, :cond_1

    .line 289
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    const-string v10, "SweepView::ResourceManager"

    const-string v11, "Bitmap was not reused in BitmapFactory.decodeByteArray() "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/4 v10, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "bmImage":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Error;
    instance-of v10, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v10, :cond_2

    .line 296
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v4, v10, v12

    .line 297
    .local v4, "maxMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v6, v10, v12

    .line 298
    .local v6, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v2, v10, v12

    .line 299
    .local v2, "freeMemory":J
    sub-long v8, v6, v2

    .line 301
    .local v8, "usedMemory":J
    const-string v10, "Memory Log (SweepView::ResourceManager)"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OutOfMemoryError decoding image "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v10, "Memory Log (SweepView::ResourceManager)"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Memory: Used ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Free ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Total ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Max ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 310
    .end local v2    # "freeMemory":J
    .end local v4    # "maxMemory":J
    .end local v6    # "totalMemory":J
    .end local v8    # "usedMemory":J
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 307
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public isWaitingForReady(Lcom/voovio/sweep/Transition;)Z
    .locals 1
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingForReady(Lcom/voovio/sweep/Voovio;)Z
    .locals 1
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loop()V
    .locals 7

    .prologue
    .line 319
    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 335
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 339
    .local v1, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_5

    .line 340
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_4

    .line 341
    new-instance v2, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;-><init>(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    .line 342
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/voovio/sweep/Voovio;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 344
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 356
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/voovio/sweep/ResourceManager;->checkWaitingForVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 319
    .end local v0    # "i":I
    .end local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_1
    :goto_2
    monitor-exit v3

    .line 370
    return-void

    .line 325
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 326
    .restart local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_3

    .line 327
    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->Destroy()V

    .line 328
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 330
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 324
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 346
    :cond_4
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    .line 348
    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->Create()V

    .line 349
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    .line 351
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 353
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    .end local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 359
    .restart local v0    # "i":I
    .restart local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_5
    :try_start_1
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_6

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_6

    .line 360
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 362
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 364
    :cond_6
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v4, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v4, :cond_1

    .line 365
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public prepareVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 258
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    .line 260
    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v0, v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    .line 267
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    .line 268
    invoke-virtual {p1}, Lcom/voovio/sweep/Voovio;->Create()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    .line 272
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0
.end method

.method public setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 7
    .param p1, "oCurVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 143
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v5, :cond_1

    .line 163
    :cond_0
    return-void

    .line 146
    :cond_1
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v6}, Lcom/voovio/sweep/Sweep;->getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V

    .line 148
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 149
    :try_start_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v5}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v0, 0x0

    .line 150
    .local v0, "fromIndex":I
    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 151
    .local v4, "toIndex":I
    if-ge v0, v4, :cond_3

    .line 152
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 148
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 157
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 158
    .local v3, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v5, v3, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    iget v6, p0, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    if-gt v5, v6, :cond_5

    .line 159
    sget v5, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    .line 156
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "fromIndex":I
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .end local v4    # "toIndex":I
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 161
    .restart local v0    # "fromIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .restart local v4    # "toIndex":I
    :cond_5
    sget v5, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    invoke-virtual {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    goto :goto_2
.end method

.method public setImageProvider(Lcom/voovio/sweep/ImageProvider;)V
    .locals 0
    .param p1, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    .line 100
    return-void
.end method

.method public setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V
    .locals 0
    .param p1, "oListener"    # Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    .line 106
    return-void
.end method

.method public setState(Lcom/voovio/sweep/Voovio;I)V
    .locals 5
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "nTargetState"    # I

    .prologue
    const/4 v4, -0x1

    .line 168
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 173
    :try_start_0
    iput p2, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    .line 175
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 176
    .local v0, "index":I
    if-ne v0, v4, :cond_2

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget v3, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    if-eq v1, v3, :cond_2

    .line 177
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 179
    .restart local v0    # "index":I
    :cond_2
    if-eq v0, v4, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v1, :cond_3

    if-lez v0, :cond_1

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 8
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    .line 114
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 117
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v6, :cond_3

    .line 118
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v6, v6, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v6, v6, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    const/4 v0, 0x0

    .line 119
    .local v0, "bPortrait":Z
    :goto_0
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v6, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 120
    .local v3, "imageWidth":I
    :goto_1
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v6, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 122
    .local v2, "imageHeight":I
    :goto_2
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v3, :cond_0

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 123
    :cond_0
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    .line 128
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 130
    :cond_2
    const/high16 v4, -0x80000000

    .line 131
    .local v4, "maxSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_7

    .line 136
    new-array v6, v4, [B

    iput-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 138
    .end local v0    # "bPortrait":Z
    .end local v1    # "i":I
    .end local v2    # "imageHeight":I
    .end local v3    # "imageWidth":I
    .end local v4    # "maxSize":I
    :cond_3
    return-void

    .line 118
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    .restart local v0    # "bPortrait":Z
    :cond_5
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v6, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    .line 120
    .restart local v3    # "imageWidth":I
    :cond_6
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v6, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    .line 132
    .restart local v1    # "i":I
    .restart local v2    # "imageHeight":I
    .restart local v4    # "maxSize":I
    :cond_7
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    iget v5, v6, Lcom/voovio/sweep/Voovio;->m_baSize:I

    .line 133
    .local v5, "size":I
    if-le v5, v4, :cond_8

    .line 134
    move v4, v5

    .line 131
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public waitForReady(Lcom/voovio/sweep/Transition;)V
    .locals 2
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, v0, v1}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    .line 212
    iget-object v0, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, v0, v1}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    .line 214
    :cond_0
    return-void
.end method

.method public waitForReady(Lcom/voovio/sweep/Voovio;)V
    .locals 1
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    .line 201
    if-eqz p1, :cond_0

    .line 202
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    .line 203
    :cond_0
    return-void
.end method
