.class public Lcom/sec/android/app/camera/SecCameraEffectLib;
.super Ljava/lang/Object;
.source "SecCameraEffectLib.java"


# static fields
.field public static final EFFECT_COMIC:I = 0xa

.field public static final EFFECT_EXTERNAL_EFFECT:I = 0x1f40

.field public static final EFFECT_FADEDCOLOR:I = 0x9

.field public static final EFFECT_FISHEYE:I = 0x11

.field public static final EFFECT_FOR_REAL:I = 0x12

.field public static final EFFECT_GOTHIC_NOIR:I = 0xc

.field public static final EFFECT_GREYSCALE:I = 0x7

.field public static final EFFECT_IMPRESSIONIST:I = 0xd

.field public static final EFFECT_INSTAGRAM_NASHVILLE:I = 0x10

.field public static final EFFECT_NEGATIVE:I = 0x8

.field public static final EFFECT_NOIR_NOTE:I = 0x14

.field public static final EFFECT_NORMAL:I = 0x0

.field public static final EFFECT_NOSTALGIA:I = 0x2

.field public static final EFFECT_OLDPHOTOTEXTURE:I = 0x5

.field public static final EFFECT_PASTEL_SKETCH:I = 0xb

.field public static final EFFECT_RAINBOW:I = 0xf

.field public static final EFFECT_RETRO:I = 0x3

.field public static final EFFECT_SANDSTONE:I = 0xe

.field public static final EFFECT_SEPIA:I = 0x1

.field public static final EFFECT_STUCCHEVOLE:I = 0x13

.field public static final EFFECT_SUNSHINE:I = 0x6

.field public static final EFFECT_VIGNETTE_OUTFOCUS:I = 0x16

.field public static final EFFECT_VINCENT:I = 0x15

.field public static final EFFECT_VINTAGE:I = 0x4

.field public static mIsFrontCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "seccameraeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/SecCameraEffectLib;->mIsFrontCamera:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addTexture(IIII[I)V
.end method

.method public static native deinit()V
.end method

.method public static deinitEffectLib()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/sec/android/app/camera/SecCameraEffectLib;->deinit()V

    .line 83
    return-void
.end method

.method public static native drawTexture([FI[F[FF)V
.end method

.method public static native init(Z)V
.end method

.method public static initEffectLib(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDownloadableOnly"    # Z

    .prologue
    .line 76
    invoke-static {p1}, Lcom/sec/android/app/camera/SecCameraEffectLib;->init(Z)V

    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/sec/android/app/camera/SecCameraEffectLib;->initResource(Landroid/content/Context;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static native initExternalEffectResources(I)V
.end method

.method public static native initExternalEffects(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static initExternalResource(Lcom/sec/android/app/camera/ExternalFilterLoader;)V
    .locals 7
    .param p0, "externalFilterLoader"    # Lcom/sec/android/app/camera/ExternalFilterLoader;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isFilterDBChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/SecCameraEffectLib;->initExternalEffectResources(I)V

    .line 195
    const/16 v0, 0x1f40

    .line 196
    .local v0, "effectOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 197
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "libName":Ljava/lang/String;
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 200
    :cond_2
    const-string v4, "SecCameraEffectLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is invalid filter! [FilterID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/SecCameraEffectLib;->initExternalEffects(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static initResource(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 110
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202f6

    invoke-static {v3, v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v1, v3, [I

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 113
    const/16 v3, 0xb

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v2, v4, v5, v1}, Lcom/sec/android/app/camera/SecCameraEffectLib;->addTexture(IIII[I)V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202f7

    invoke-static {v3, v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v1, v3, [I

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 136
    const/16 v3, 0xe

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v2, v4, v5, v1}, Lcom/sec/android/app/camera/SecCameraEffectLib;->addTexture(IIII[I)V

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :cond_0
    const/4 v1, 0x0

    .line 188
    return-void
.end method

.method public static isFrontCamera()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/sec/android/app/camera/SecCameraEffectLib;->mIsFrontCamera:Z

    return v0
.end method

.method public static native setCurrentEffect(I)V
.end method

.method public static setFrontCamera(Z)V
    .locals 0
    .param p0, "isFrontCamera"    # Z

    .prologue
    .line 86
    sput-boolean p0, Lcom/sec/android/app/camera/SecCameraEffectLib;->mIsFrontCamera:Z

    .line 87
    return-void
.end method

.method public static native setSize(FF)V
.end method
