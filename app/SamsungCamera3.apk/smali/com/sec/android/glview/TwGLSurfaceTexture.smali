.class public Lcom/sec/android/glview/TwGLSurfaceTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLSurfaceTexture.java"


# instance fields
.field private mEffectID:I

.field private mIsFrontCamera:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIZ)V
    .locals 2
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "effectID"    # I
    .param p5, "isFrontCamera"    # Z

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 35
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mIsFrontCamera:Z

    .line 47
    iput-boolean p5, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mIsFrontCamera:Z

    .line 49
    packed-switch p4, :pswitch_data_0

    .line 123
    :pswitch_0
    const/16 v0, 0x1f40

    if-lt p4, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p4, v0, :cond_0

    .line 124
    iput p4, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    .line 130
    :goto_0
    return-void

    .line 51
    :pswitch_1
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 54
    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 57
    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 60
    :pswitch_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 63
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 66
    :pswitch_6
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 69
    :pswitch_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 72
    :pswitch_8
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 75
    :pswitch_9
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 78
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 81
    :pswitch_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 84
    :pswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 87
    :pswitch_d
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 90
    :pswitch_e
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 93
    :pswitch_f
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 96
    :pswitch_10
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 99
    :pswitch_11
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 102
    :pswitch_12
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 105
    :pswitch_13
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 108
    :pswitch_14
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 111
    :pswitch_15
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 114
    :pswitch_16
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 117
    :pswitch_17
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 120
    :pswitch_18
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 126
    :cond_0
    iput v1, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_18
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public clearTexture()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 143
    return-void
.end method

.method public declared-synchronized initSize()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDraw()V
    .locals 15

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPreviewData;->isInitTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceRGBATextureID()I

    move-result v2

    aput v2, v0, v1

    .line 182
    const/high16 v0, 0x3f800000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceCoordXOffset()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float v13, v0, v1

    .line 185
    .local v13, "mXOffset":F
    const v0, 0x3ca3d70a

    cmpg-float v0, v13, v0

    if-gez v0, :cond_2

    const v13, 0x3ca3d70a

    .line 188
    :cond_2
    move v10, v13

    .line 189
    .local v10, "mSurfaceCoordLeft":F
    const v12, 0x3ca3d70a

    .line 190
    .local v12, "mSurfaceCoordTop":F
    const/high16 v0, 0x3f800000

    sub-float v11, v0, v13

    .line 191
    .local v11, "mSurfaceCoordRight":F
    const v9, 0x3f7ae148

    .line 193
    .local v9, "mSurfaceCoordBottom":F
    const/4 v0, 0x4

    new-array v8, v0, [F

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v1

    aput v1, v8, v0

    .line 194
    .local v8, "mRect":[F
    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v0, 0x0

    aput v11, v6, v0

    const/4 v0, 0x1

    aput v12, v6, v0

    const/4 v0, 0x2

    aput v10, v6, v0

    const/4 v0, 0x3

    aput v12, v6, v0

    const/4 v0, 0x4

    aput v10, v6, v0

    const/4 v0, 0x5

    aput v9, v6, v0

    const/4 v0, 0x6

    aput v11, v6, v0

    const/4 v0, 0x7

    aput v9, v6, v0

    .line 195
    .local v6, "mCoord":[F
    const/16 v0, 0x8

    new-array v7, v0, [F

    const/4 v0, 0x0

    aput v10, v7, v0

    const/4 v0, 0x1

    aput v12, v7, v0

    const/4 v0, 0x2

    aput v11, v7, v0

    const/4 v0, 0x3

    aput v12, v7, v0

    const/4 v0, 0x4

    aput v11, v7, v0

    const/4 v0, 0x5

    aput v9, v7, v0

    const/4 v0, 0x6

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v9, v7, v0

    .line 197
    .local v7, "mCoordFrontCamera":[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getProjMatrix()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v14

    .line 200
    .local v14, "modifiedAlpha":F
    const/high16 v0, 0x3f000000

    cmpl-float v0, v14, v0

    if-lez v0, :cond_3

    .line 201
    const/high16 v14, 0x3f800000

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getEffectLibInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    invoke-static {v0}, Lcom/sec/android/app/camera/SecCameraEffectLib;->setCurrentEffect(I)V

    .line 208
    invoke-static {}, Lcom/sec/android/app/camera/SecCameraEffectLib;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1, v8, v7, v14}, Lcom/sec/android/app/camera/SecCameraEffectLib;->drawTexture([FI[F[FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 173
    .end local v6    # "mCoord":[F
    .end local v7    # "mCoordFrontCamera":[F
    .end local v8    # "mRect":[F
    .end local v9    # "mSurfaceCoordBottom":F
    .end local v10    # "mSurfaceCoordLeft":F
    .end local v11    # "mSurfaceCoordRight":F
    .end local v12    # "mSurfaceCoordTop":F
    .end local v13    # "mXOffset":F
    .end local v14    # "modifiedAlpha":F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    .restart local v6    # "mCoord":[F
    .restart local v7    # "mCoordFrontCamera":[F
    .restart local v8    # "mRect":[F
    .restart local v9    # "mSurfaceCoordBottom":F
    .restart local v10    # "mSurfaceCoordLeft":F
    .restart local v11    # "mSurfaceCoordRight":F
    .restart local v12    # "mSurfaceCoordTop":F
    .restart local v13    # "mXOffset":F
    .restart local v14    # "modifiedAlpha":F
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 211
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1, v8, v6, v14}, Lcom/sec/android/app/camera/SecCameraEffectLib;->drawTexture([FI[F[FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onLoad()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceRGBATextureID()I

    move-result v2

    aput v2, v0, v1

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSurfaceTexture;->initSize()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return v3

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return v2

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
