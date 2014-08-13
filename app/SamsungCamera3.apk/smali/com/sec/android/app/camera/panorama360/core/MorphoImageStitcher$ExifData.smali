.class public Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifData"
.end annotation


# instance fields
.field public ColorSpace:I

.field public DateTime:Ljava/lang/String;

.field public DateTimeDigitized:Ljava/lang/String;

.field public DateTimeOriginal:Ljava/lang/String;

.field public ExifVersion:[B

.field public FocalLength:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSAltitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSAltitudeRef:[B

.field public GPSLatitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSLatitudeRef:Ljava/lang/String;

.field public GPSLongitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSLongitudeRef:Ljava/lang/String;

.field public GPSVersionID:[B

.field public ImageHeight:I

.field public ImageUniqueID:Ljava/lang/String;

.field public ImageWidth:I

.field public Maker:Ljava/lang/String;

.field public MaxApertureValue:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public Model:Ljava/lang/String;

.field public Software:Ljava/lang/String;

.field public UserComment:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-array v0, v1, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->MaxApertureValue:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    .line 277
    new-array v0, v1, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->FocalLength:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    return-void
.end method

.method public static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D

    .prologue
    .line 298
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 299
    const-string v0, "N"

    .line 304
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 301
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "S"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static locationValueToRational(D)[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;
    .locals 9
    .param p0, "value"    # D

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 325
    const/4 v4, 0x3

    new-array v3, v4, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    .line 329
    .local v3, "r":[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 330
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 331
    .local v1, "degrees":I
    new-instance v4, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    invoke-direct {v4, v1, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v4, v3, v8

    .line 334
    int-to-double v4, v1

    sub-double/2addr p0, v4

    .line 335
    const-wide/high16 v4, 0x404e000000000000L

    mul-double/2addr p0, v4

    .line 338
    new-instance v0, Ljava/lang/Double;

    .end local v0    # "d":Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 339
    .restart local v0    # "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 340
    .local v2, "minutes":I
    new-instance v4, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    mul-int/lit8 v5, v2, 0x64

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v4, v3, v7

    .line 343
    const/4 v4, 0x2

    new-instance v5, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    invoke-direct {v5, v8, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v5, v3, v4

    .line 345
    return-object v3
.end method

.method public static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D

    .prologue
    .line 313
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 314
    const-string v0, "E"

    .line 319
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 316
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "W"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method
