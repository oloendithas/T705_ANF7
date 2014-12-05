.class public Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;
.super Ljava/lang/Object;
.source "SecLockPatternMorphEffectPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$1;,
        Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private lastX:F

.field private lastX1:F

.field private lastY:F

.field private lastY1:F

.field private final offsetX:F

.field private final offsetY:F

.field private path:[Landroid/graphics/Path;

.field private final pathTotal:I

.field private scale:F


# direct methods
.method public constructor <init>(F)V
    .registers 5

    .prologue
    const/16 v1, 0x28

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "SecLockPatternViewMorphEffectPath"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->pathTotal:I

    .line 13
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    .line 17
    const v0, -0x3c7eb333

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->offsetX:F

    .line 18
    const v0, -0x3be86ccd

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->offsetY:F

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    const-string v1, "SecLockPatternMorphEffectPath : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecLockPatternMorphEffectPath : scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput p1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    .line 28
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->setPath()V

    .line 29
    return-void
.end method

.method private setPath()V
    .registers 16

    .prologue
    const v14, 0x400ccccd

    const/4 v13, 0x0

    const v12, -0x4099999a

    const v11, -0x41b33333

    const v10, -0x41333333

    .line 33
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 34
    const v0, -0x3c7eb333

    const v1, -0x3be86ccd

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 35
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 36
    const/high16 v0, 0x42b40000

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 39
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 40
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v2, 0x43b90000

    const v3, 0x4417eccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 41
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f666666

    const/high16 v4, -0x3d940000

    const v5, -0x3dbb3333

    const v6, -0x3d25999a

    const v7, -0x3d23cccd

    const v8, -0x3d23999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 42
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d926666

    const/high16 v4, -0x40800000

    const v5, -0x3d253333

    const v6, 0x423ccccd

    const v7, -0x3d23999a

    const v8, 0x42d43333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 43
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40b33333

    const v4, 0x42766666

    const v5, 0x423a6666

    const v6, 0x42dd6666

    const v7, 0x42d73333

    const/high16 v8, 0x42df0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 44
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x439f0ccd

    const v4, 0x4432f99a

    const v5, 0x43b88ccd

    const v6, 0x4426d99a

    const/high16 v7, 0x43b90000

    const v8, 0x4417eccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 45
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 46
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 51
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4315cccd

    const v3, 0x4417a666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 52
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3dcccccd

    const v4, 0x426ecccd

    const v5, 0x4241999a

    const v6, 0x42d86666

    const v7, 0x42d83333

    const/high16 v8, 0x42d90000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 53
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4276cccd

    const v4, 0x3e99999a

    const/high16 v5, 0x42e40000

    const v6, -0x3dbacccd

    const v7, 0x42e46666

    const v8, -0x3d27999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 54
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3dcccccd

    const v4, -0x3d94cccd

    const v5, -0x3daf999a

    const v6, -0x3d25999a

    const v7, -0x3d1d6666

    const v8, -0x3d253333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 55
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4346b333

    const v4, 0x43f8a666

    const v5, 0x4315b333

    const v6, 0x44089333

    const v7, 0x4315cccd

    const v8, 0x4417a666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 56
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 57
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 62
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4381999a

    const v3, 0x43f8c000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 63
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3d900000

    const v4, -0x41666666

    const v5, -0x3d256666

    const v6, 0x42433333

    const v7, -0x3d25999a

    const v8, 0x42d9cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 64
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v4, 0x42706666

    const/high16 v5, 0x42460000

    const v6, 0x42dacccd

    const v7, 0x42da999a

    const v8, 0x42d9999a

    move-object v0, p0

    move v3, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 65
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4278cccd

    const v4, -0x40e66666

    const/high16 v5, 0x42e50000

    const v6, -0x3db93333

    const v7, 0x42e63333

    const v8, -0x3d283333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 66
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43bb7333

    const v4, 0x44096000

    const v5, 0x43a0599a

    const v6, 0x43f8e666

    const v7, 0x4381999a

    const v8, 0x43f8c000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 67
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 68
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 72
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 73
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43bec000

    const v3, 0x4417e000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 74
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x42333333

    const v4, -0x3d99999a

    const/high16 v5, -0x3d960000

    const v6, -0x3d23999a

    const v7, -0x3d0b3333

    const v8, -0x3d243333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 75
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d906666

    const v4, 0x3e4ccccd

    const v5, -0x3d25cccd

    const/high16 v6, 0x42480000

    const/high16 v7, -0x3d270000

    const v8, 0x42db3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 76
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f19999a

    const/high16 v4, 0x426e0000

    const v5, 0x4244cccd

    const v6, 0x42d7999a

    const v7, 0x42d96666

    const/high16 v8, 0x42d80000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 77
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43a2199a

    const v4, 0x4432d333

    const v5, 0x43becccd

    const v6, 0x44262ccd

    const v7, 0x43bec000

    const v8, 0x4417e000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 78
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 79
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 83
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 84
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4317999a

    const v3, 0x4417d99a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 85
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v4, 0x41f40000

    const/high16 v5, 0x41400000

    const v6, 0x426acccd

    const v7, 0x42153333

    const v8, 0x42a1cccd

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 86
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4246cccd

    const v4, 0x422e6666

    const v5, 0x4307cccd

    const v6, 0x41fa6666

    const/high16 v7, 0x43330000

    const v8, -0x3e34cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 87
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c66666

    const v4, -0x3dfd999a

    const v5, 0x41d1999a

    const v6, -0x3d703333

    const v7, 0x404ccccd

    const v8, -0x3d2c6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 88
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5f3333

    const/high16 v4, -0x3e140000

    const/high16 v5, -0x3dbe0000

    const v6, -0x3dc26666

    const v7, -0x3d5a6666

    const v8, -0x3da06666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 89
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x435ab333

    const v4, 0x43f1f333

    const v5, 0x4319199a

    const v6, 0x44056666

    const v7, 0x4317999a

    const v8, 0x4417d99a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 90
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 91
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 95
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 96
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43857333

    const v3, 0x43f8cccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 97
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d933333

    const v4, -0x41666666

    const/high16 v5, -0x3d2b0000

    const v6, 0x421f999a

    const v7, -0x3d1c3333

    const/high16 v8, 0x42b70000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 98
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f033333

    const v4, 0x425f3333

    const v5, 0x41c66666

    const v6, 0x42d5cccd

    const/high16 v7, 0x429c0000

    const v8, 0x42f3999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 99
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42540000

    const v4, 0x416ccccd

    const/high16 v5, 0x42f20000

    const v6, -0x3ea66666

    const v7, 0x43138000

    const v8, -0x3d886666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 100
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41800000

    const v4, -0x3e173333

    const v5, 0x416e6666

    const v6, -0x3d96cccd

    const v7, -0x3fe66666

    const v8, -0x3d53cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 101
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43aed99a

    const v4, 0x44022666

    const v5, 0x439ac000

    const v6, 0x43faa666

    const v7, 0x43857333

    const v8, 0x43f8cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 102
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 103
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 107
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 108
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4318999a

    const v3, 0x44175333

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 109
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41666666

    const v4, 0x4251999a

    const/high16 v5, 0x42100000

    const v6, 0x42c6999a

    const v7, 0x42ad3333

    const v8, 0x42d66666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 110
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x425b999a

    const v4, 0x4109999a

    const v5, 0x42cb3333

    const/high16 v6, -0x3ee00000

    const v7, 0x4309199a

    const v8, -0x3dad999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 111
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cb3333

    const/high16 v4, -0x3e0c0000

    const v5, 0x41cccccd

    const v6, -0x3d79cccd

    const v7, 0x40333333

    const v8, -0x3d383333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 112
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4f3333

    const v4, -0x3e00cccd

    const v5, -0x3da9999a

    const/high16 v6, -0x3db60000

    const v7, -0x3d4a6666

    const v8, -0x3d93999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 113
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4359cccd

    const v4, 0x43f24ccd

    const v5, 0x4318e666

    const v6, 0x4405b99a

    const v7, 0x4318999a

    const v8, 0x44175333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 114
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 115
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 119
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 120
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43864ccd

    const v3, 0x43f8cccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 121
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x434d0000

    const v4, 0x43f8999a

    const v5, 0x431c3333

    const v6, 0x4407a666

    const/high16 v7, 0x43190000

    const v8, 0x4415c666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 122
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faccccd

    const v4, 0x426a6666

    const v5, 0x4218cccd

    const v6, 0x42db6666

    const v7, 0x42c03333

    const v8, 0x42e53333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 123
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x426a0000

    const/high16 v4, 0x40a00000

    const v5, 0x42d3cccd

    const v6, -0x3e64cccd

    const v7, 0x430de666

    const v8, -0x3d7f3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 124
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a9999a

    const v4, -0x3e2b3333

    const/high16 v5, 0x41980000

    const v6, -0x3d7d6666

    const v7, -0x3f59999a

    const v8, -0x3d486666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 125
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43b07333

    const v4, 0x4402599a

    const v5, 0x439b999a

    const v6, 0x43fa999a

    const v7, 0x43864ccd

    const v8, 0x43f8cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 126
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 127
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 131
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 132
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v2, 0x43190000

    const v3, 0x44176000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 133
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v4, 0x4280cccd

    const v5, 0x425acccd

    const v6, 0x42e53333

    const v7, 0x42ed6666

    const v8, 0x42da3333

    move-object v0, p0

    move v3, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 134
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x421b3333

    const v4, -0x3fa66666

    const v5, 0x428f999a

    const v6, -0x3e5d999a

    const v7, 0x42cd6666

    const v8, -0x3dd7999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 135
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x424a0000

    const/high16 v4, -0x3df20000

    const v5, 0x424f3333

    const v6, -0x3d3d3333

    const v7, 0x3e99999a

    const v8, -0x3cfc3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 136
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e340000

    const/high16 v4, -0x3e780000

    const v5, -0x3da46666

    const v6, -0x3e09999a

    const/high16 v7, -0x3d570000

    const v8, -0x3de4cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 137
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x435bcccd

    const v4, 0x43f1599a

    const v5, 0x43196666

    const v6, 0x4405a000

    const/high16 v7, 0x43190000

    const v8, 0x44176000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 138
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 139
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 143
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 144
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4385e666

    const v3, 0x4432d99a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 145
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3dbe0000

    const v4, -0x4019999a

    const v5, -0x3d59cccd

    const/high16 v6, -0x3e5c0000

    const/high16 v7, -0x3d320000

    const v8, -0x3d8c6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 146
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e61999a

    const v4, -0x3ddf3333

    const v5, -0x3e84cccd

    const v6, -0x3d606666

    const v7, 0x413e6666

    const/high16 v8, -0x3d1a0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 147
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41e40000

    const v4, -0x3def3333

    const v5, 0x4286cccd

    const/high16 v6, -0x3dba0000

    const v7, 0x42df6666

    const v8, -0x3de73333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 148
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e0cccd

    const v4, 0x40e66666

    const v5, 0x425d3333

    const/high16 v6, 0x41980000

    const v7, 0x42a36666

    const v8, 0x41fa6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 149
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a66666

    const v4, 0x411b3333

    const/high16 v5, 0x42140000

    const/high16 v6, 0x41d00000

    const v7, 0x4235999a

    const v8, 0x4240cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 150
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41300000

    const/high16 v4, 0x41e80000

    const v5, 0x40c9999a

    const v6, 0x4260cccd

    const v7, -0x3e78cccd

    const/high16 v8, 0x42990000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 151
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43b42666

    const v4, 0x442cb99a

    const v5, 0x439db333

    const v6, 0x4431d99a

    const v7, 0x4385e666

    const v8, 0x4432d99a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 152
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 153
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 157
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 158
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4386d99a

    const v3, 0x4432e000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 159
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x423f999a

    const v4, -0x3f633333

    const v5, 0x42bfcccd

    const v6, -0x3e433333

    const v7, 0x43083333

    const/high16 v8, -0x3d980000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 160
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41f5999a

    const v4, -0x3e2e6666

    const v5, 0x42013333

    const v6, -0x3d78999a

    const v7, 0x409ccccd

    const v8, -0x3d3ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 161
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ebb3333

    const/high16 v4, -0x3ea80000

    const/high16 v5, -0x3e200000

    const v6, -0x3e326666

    const/high16 v7, -0x3dce0000

    const v8, -0x3dfb3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 162
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3a6666

    const v4, -0x3ecccccd

    const v5, -0x3db33333

    const v6, -0x3e633333

    const v7, -0x3d64999a

    const v8, -0x3e333333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 163
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dcb999a

    const v4, -0x3ede6666

    const v5, -0x3d57999a

    const v6, 0x402ccccd

    const v7, -0x3d1ecccd

    const/high16 v8, 0x42200000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 164
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e29999a

    const v4, 0x420ccccd

    const v5, -0x3e0ccccd

    const v6, 0x4294cccd

    const v7, -0x3ed33333

    const/high16 v8, 0x42e40000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 165
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43393333

    const v4, 0x442dd333

    const v5, 0x435c199a

    const v6, 0x44326666

    const v7, 0x4386d99a

    const v8, 0x4432e000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 166
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 167
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 171
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 172
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4389a666

    const v3, 0x4432c000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 173
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42260000

    const v4, -0x3f29999a

    const v5, 0x42b4cccd

    const v6, -0x3e773333

    const v7, 0x43036666

    const v8, -0x3dbe6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 174
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4224cccd

    const/high16 v4, -0x3e040000

    const v5, 0x4228cccd

    const v6, -0x3d593333

    const v7, 0x40733333

    const v8, -0x3d13999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 175
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fcccccd

    const v4, -0x3fd9999a

    const v5, -0x3f49999a

    const v6, -0x3f566666

    const v7, -0x3ef33333

    const v8, -0x3f133333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 176
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dd0cccd

    const v4, -0x3e166666

    const v5, -0x3d446666

    const v6, -0x3dd9999a

    const v7, -0x3cef6666

    const/high16 v8, -0x3dd80000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 177
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d90cccd

    const/high16 v4, -0x41000000

    const v5, -0x3d2bcccd

    const v6, 0x4255999a

    const v7, -0x3d31cccd

    const/high16 v8, 0x42de0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 178
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x431ce666

    const v4, 0x4427d333

    const v5, 0x434d3333

    const v6, 0x44330666

    const v7, 0x4389a666

    const v8, 0x4432c000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 179
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 180
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 184
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 185
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x438be666

    const v3, 0x4432c000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 186
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41633333

    const v4, -0x3faccccd

    const v5, 0x421d3333

    const/high16 v6, -0x3ee80000

    const/high16 v7, 0x42810000

    const v8, -0x3e91999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 187
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e4cccd

    const v4, -0x3f39999a

    const/high16 v5, 0x425e0000

    const v6, -0x3e866666

    const v7, 0x429acccd

    const/high16 v8, -0x3df00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 188
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41f8cccd

    const v4, -0x3e18cccd

    const v5, 0x420a6666

    const v6, -0x3d703333

    const v7, 0x4104cccd

    const v8, -0x3d2d6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 189
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e7ccccd

    const v4, -0x3e58cccd

    const/high16 v5, -0x3de60000

    const v6, -0x3dfb999a

    const v7, -0x3d80cccd

    const/high16 v8, -0x3de20000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 190
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e2ccccd

    const v4, -0x3f29999a

    const/high16 v5, -0x3dac0000

    const v6, -0x3eae6666

    const v7, -0x3d60999a

    const v8, -0x3e6b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 191
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ed4cccd

    const v4, -0x3ff33333

    const v5, -0x3e4f3333

    const v6, -0x3fb9999a

    const v7, -0x3dfc6666

    const/high16 v8, -0x40000000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 192
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3d900000

    const v4, 0x40c9999a

    const/high16 v5, -0x3d320000

    const v6, 0x42606666

    const v7, -0x3d39cccd

    const v8, 0x42e3999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 193
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x431e8000

    const v4, 0x4428399a

    const v5, 0x434e6666

    const v6, 0x44330666

    const v7, 0x438be666

    const v8, 0x4432c000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 194
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 195
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 199
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 200
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x438de666

    const v3, 0x4432999a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 201
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ef3333

    const v4, -0x3f29999a

    const v5, 0x428a3333

    const/high16 v6, -0x3e900000

    const v7, 0x42d83333

    const v8, -0x3e3ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 202
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4109999a

    const v4, -0x3ff9999a

    const v5, 0x41866666

    const v6, -0x3f19999a

    const v7, 0x41c26666

    const v8, -0x3ebccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 203
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x425acccd

    const v4, -0x3df06666

    const v5, 0x42586666

    const v6, -0x3d2acccd

    const v8, -0x3cf1e666

    move-object v0, p0

    move v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 204
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3d999a

    const v4, -0x3e84cccd

    const v5, -0x3db0cccd

    const v6, -0x3e673333

    const v7, -0x3d606666

    const v8, -0x3e573333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 205
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f033333

    const v4, -0x40e66666

    const/high16 v5, -0x3e800000

    const v6, -0x3feccccd

    const v7, -0x3e466666

    const/high16 v8, -0x3f500000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 206
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e380000

    const/high16 v4, -0x3ed00000

    const v5, -0x3db5999a

    const/high16 v6, -0x3e980000

    const v7, -0x3d65cccd

    const v8, -0x3f166666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 207
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3da4cccd

    const v4, 0x416e6666

    const v5, -0x3d4fcccd

    const/high16 v6, 0x42860000

    const v7, -0x3d61999a

    const v8, 0x42f73333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 208
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4324999a

    const v4, 0x4429f99a

    const v5, 0x43573333

    const v6, 0x44338ccd

    const v7, 0x438de666

    const v8, 0x4432999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 209
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 210
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 215
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43882666

    const v3, 0x44332ccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 216
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41700000

    const v4, -0x3fc66666

    const/high16 v5, 0x41f00000

    const v6, -0x3f466666

    const/high16 v7, 0x42340000

    const v8, -0x3ef33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 217
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4181999a

    const v4, -0x3faccccd

    const v5, 0x42013333

    const v6, -0x3f1ccccd

    const/high16 v7, 0x42420000

    const v8, -0x3edb3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 218
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c33333

    const v4, -0x40666666

    const v5, 0x41466666

    const v6, -0x40733333

    const v7, 0x4194cccd

    const v8, -0x400ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 219
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4218cccd

    const v4, -0x3f5ccccd

    const v5, 0x428c999a

    const/high16 v6, -0x3e000000

    const v7, 0x429e999a

    const v8, -0x3d7b6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 220
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410ccccd

    const v4, -0x3dfa6666

    const v5, -0x3fa66666

    const v6, -0x3d783333

    const v7, -0x3e026666

    const v8, -0x3d4ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 221
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e440000

    const v4, -0x3e70cccd

    const v5, -0x3db53333

    const v6, -0x3e4ccccd

    const v7, -0x3d61cccd

    const v8, -0x3e5d999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 222
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ea1999a

    const/high16 v4, 0x3f800000

    const v5, -0x3e30cccd

    const v7, -0x3de6cccd

    const v8, -0x3efe6666

    move-object v0, p0

    move v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 223
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3e6666

    const v4, -0x3e9b3333

    const v5, -0x3db46666

    const v6, -0x3e7b3333

    const/high16 v7, -0x3d640000

    const v8, -0x3ee4cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 224
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3da40000

    const v4, 0x4161999a

    const v5, -0x3d4d999a

    const v6, 0x4284cccd

    const v7, -0x3d5e999a

    const v8, 0x42f56666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 225
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4324199a

    const v4, 0x4429a000

    const v5, 0x4354e666

    const v6, 0x44332666

    const v7, 0x43882666

    const v8, 0x44332ccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 226
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 227
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 231
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 232
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ee0ccd

    const v3, 0x44165333

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 233
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f99999a

    const v4, -0x3db1999a

    const v5, -0x3dba6666

    const v6, -0x3d53999a

    const v7, -0x3d30999a

    const v8, -0x3d633333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 234
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5e6666

    const v4, 0x4039999a

    const v5, -0x3de53333

    const v7, -0x3d9d999a

    const v8, -0x3ece6666

    move-object v0, p0

    move v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 235
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3da73333

    const v4, -0x3e08cccd

    const/high16 v5, -0x3d070000

    const/high16 v6, -0x3f100000

    const/high16 v7, -0x3ce90000

    const v8, 0x4246cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 236
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e2e6666

    const/high16 v4, 0x42620000

    const v5, 0x3ecccccd

    const v6, 0x42f6999a

    const v7, 0x426a6666

    const v8, 0x4311199a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 237
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42086666

    const v4, 0x414b3333

    const/high16 v5, 0x42890000

    const v6, 0x412ccccd

    const v7, 0x42cdcccd

    const v8, -0x40733333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 238
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41840000

    const v4, -0x3f49999a

    const v5, 0x424c6666

    const v6, -0x3ee4cccd

    const v7, 0x424e6666

    const v8, -0x3ee33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 239
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff33333

    const v5, 0x40733333

    const v7, 0x40b9999a

    move-object v0, p0

    move v4, v13

    move v6, v13

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 240
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dbc000

    const v4, 0x442e199a

    const v5, 0x43eff333

    const v6, 0x4423cccd

    const v7, 0x43ee0ccd

    const v8, 0x44165333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 241
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 242
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 246
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 247
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f0a666

    const v3, 0x4411c000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 248
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ea66666

    const v4, -0x3dd0cccd

    const v5, -0x3d9a6666

    const v6, -0x3d776666

    const v7, -0x3d333333

    const/high16 v8, -0x3d9c0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 249
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e640000

    const v4, 0x409ccccd

    const v5, -0x3deb999a

    const v6, 0x409ccccd

    const/high16 v7, -0x3da60000

    const v8, -0x3efe6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 250
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df6cccd

    const v4, -0x3e326666

    const v5, -0x3d5dcccd

    const v6, -0x3e2f3333

    const v7, -0x3d146666

    const v8, -0x3fb33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 251
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3dea0000

    const/high16 v4, 0x41bc0000

    const v5, -0x3d9a6666

    const/high16 v6, 0x42870000

    const v7, -0x3db8cccd

    const v8, 0x42dc6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 252
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41580000

    const v4, 0x4297cccd

    const v5, 0x42d43333

    const/high16 v6, 0x42e80000

    const v7, 0x4330b333

    const v8, 0x429b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 253
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4131999a

    const v4, -0x3f3ccccd

    const v5, 0x41c9999a

    const v6, -0x3f133333

    const v7, 0x42186666

    const v8, -0x3eeb3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 254
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40fccccd

    const v4, -0x40733333

    const v5, 0x423e6666

    const v7, 0x4268cccd

    const v8, -0x3f766666

    move-object v0, p0

    move v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 255
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43ec0ccd

    const v4, 0x44285333

    const v5, 0x43f7599a

    const v6, 0x441c8000

    const v7, 0x43f0a666

    const v8, 0x4411c000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 256
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 257
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 261
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 262
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f1199a

    const v3, 0x440a799a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 263
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e4c0000

    const v4, -0x3e34cccd

    const/high16 v5, -0x3da20000

    const/high16 v6, -0x3df40000

    const v7, -0x3d50cccd

    const v8, -0x3e50cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 264
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e31999a

    const/high16 v4, 0x41280000

    const v5, -0x3dc73333

    const v6, 0x4089999a

    const v7, -0x3d7acccd

    const v8, -0x3ec1999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 265
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3df40000

    const v4, -0x3e21999a

    const v5, -0x3d6c6666

    const v6, -0x3e18cccd

    const v7, -0x3d1f3333

    const/high16 v8, -0x3ee00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 266
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3de20000

    const v4, 0x419a6666

    const v5, -0x3d90cccd

    const v6, 0x42526666

    const v7, -0x3d8acccd

    const v8, 0x42c56666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 267
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f666666

    const/high16 v4, 0x40d00000

    const v5, 0x3f99999a

    const v6, 0x416ccccd

    const v7, 0x40466666

    const v8, 0x41b5999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 268
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418a6666

    const v4, 0x42916666

    const v5, 0x42decccd

    const v6, 0x42db6666

    const v7, 0x4330b333

    const v8, 0x4288cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 269
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x419f3333

    const v4, -0x3eb66666

    const/high16 v5, 0x421e0000

    const v6, -0x3e81999a

    const v7, 0x42766666

    const v8, -0x3ed4cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 270
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c33333

    const v4, 0x3fb33333

    const v5, 0x4144cccd

    const/high16 v7, 0x41940000

    const v8, 0x402ccccd

    move-object v0, p0

    move v6, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 271
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42046666

    const v4, 0x402ccccd

    const v5, 0x427f999a

    const v6, -0x3e91999a

    const v7, 0x429e6666

    const v8, -0x3dcccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 272
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fe8000

    const v4, 0x441a199a

    const v5, 0x43fc4000

    const v6, 0x4410c666

    const v7, 0x43f1199a

    const v8, 0x440a799a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 273
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 274
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 278
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 279
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44022000

    const v3, 0x4416e000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 280
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f8ccccd

    const/high16 v4, -0x3da80000

    const v5, -0x3d9acccd

    const v6, -0x3d4dcccd

    const v7, -0x3d29cccd

    const v8, -0x3d7acccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 281
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dff999a

    const/high16 v4, 0x41680000

    const v5, -0x3d9ccccd

    const v6, 0x41366666

    const v7, -0x3d606666

    const/high16 v8, -0x3ea00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 282
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41666666

    const v5, -0x40cccccd

    const v6, -0x40e66666

    const v7, -0x40733333

    move-object v0, p0

    move v4, v10

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 283
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df06666

    const v4, -0x3e126666

    const v5, -0x3d68999a

    const/high16 v6, -0x3e040000

    const v7, -0x3d17cccd

    const v8, -0x3eb4cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 284
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ddccccd

    const/high16 v4, 0x41980000

    const v5, -0x3d85999a

    const v6, 0x42513333

    const v7, -0x3d7fcccd

    const v8, 0x42b33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 285
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f99999a

    const v4, 0x42c1cccd

    const v5, 0x42c0999a

    const v6, 0x430ce666

    const v7, 0x4327999a

    const/high16 v8, 0x42d00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 286
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42100000

    const v4, -0x3e6a6666

    const/high16 v5, 0x42860000

    const v6, -0x3e29999a

    const v7, 0x42d6999a

    const v8, -0x3e81999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 287
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43eecccd

    const v4, 0x442f2666

    const v5, 0x44030ccd

    const v6, 0x4423f333

    const v7, 0x44022000

    const v8, 0x4416e000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 288
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 289
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 293
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 294
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4404c666

    const v3, 0x440fe666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 295
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e980000

    const v4, -0x3e19999a

    const v5, -0x3dcecccd

    const v6, -0x3dc8cccd

    const v7, -0x3d686666

    const v8, -0x3dda6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 296
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ecccccd

    const/high16 v4, 0x3fc00000

    const v5, -0x3e4f3333

    const v6, 0x40c33333

    const v7, -0x3dfd999a

    const v8, 0x4129999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 297
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dff3333

    const v4, 0x415e6666

    const v5, -0x3da5999a

    const/high16 v6, 0x41280000

    const v7, -0x3d61999a

    const/high16 v8, -0x3ea00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 298
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e700000

    const v4, -0x3e70cccd

    const/high16 v5, -0x3de60000

    const v6, -0x3e166666

    const v7, -0x3d7fcccd

    const v8, -0x3dfe6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 299
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43568000

    const v4, 0x43f5199a

    const/high16 v5, 0x431a0000

    const v6, 0x4406c000

    const v7, 0x4316cccd

    const v8, 0x4416c000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 300
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb9999a

    const v4, 0x4274cccd

    const/high16 v5, 0x424a0000

    const v6, 0x42e26666

    const v7, 0x42f5999a

    const/high16 v8, 0x42e00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 301
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a66666

    const v4, 0x3f19999a

    const v5, 0x4234cccd

    const v6, -0x3ee1999a

    const/high16 v7, 0x42870000

    const/high16 v8, -0x3e300000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 302
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41e80000

    const/high16 v4, -0x3e580000

    const/high16 v5, 0x426e0000

    const v6, -0x3e566666

    const v7, 0x42b66666

    const/high16 v8, -0x3f100000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 303
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e4cccd

    const v4, 0x41466666

    const v5, 0x4277999a

    const v6, 0x40b9999a

    const v7, 0x42a7999a

    const v8, -0x3e7a6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 304
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4406e666

    const v4, 0x44202666

    const v5, 0x44086ccd

    const v6, 0x44172000

    const v7, 0x4404c666

    const v8, 0x440fe666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 305
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 306
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 310
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 311
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44080ccd

    const v3, 0x440dc666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 312
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e626666

    const v4, -0x3e266666

    const v5, -0x3dab3333

    const v6, -0x3deb999a

    const v7, -0x3d53cccd

    const/high16 v8, -0x3e340000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 313
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f19999a

    const v4, 0x40266666

    const v5, -0x3e9e6666

    const v6, 0x40cccccd

    const v7, -0x3e533333

    const/high16 v8, 0x41000000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 314
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df6cccd

    const v4, 0x40f33333

    const v5, -0x3d793333

    const v6, 0x415ccccd

    const v7, -0x3d43cccd

    const v8, -0x3e5e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 315
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e68cccd

    const v4, -0x3e3f3333

    const v5, -0x3dc26666

    const/high16 v6, -0x3e040000

    const/high16 v7, -0x3d650000

    const v8, -0x3e00cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 316
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3da86666

    const v4, -0x40cccccd

    const v5, -0x3d323333

    const v6, 0x4218cccd

    const/high16 v7, -0x3d1f0000

    const v8, 0x42b2999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 317
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee4cccd

    const v4, 0x424d999a

    const v5, 0x4198cccd

    const v6, 0x42cc3333

    const v7, 0x428a999a

    const/high16 v8, 0x42f10000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 318
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4228cccd

    const v4, 0x41766666

    const v5, 0x42a3999a

    const v6, 0x41033333

    const v7, 0x42ea3333

    const/high16 v8, -0x3e6c0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 319
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41b66666

    const v4, -0x3e75999a

    const/high16 v5, 0x423e0000

    const/high16 v6, -0x3e380000

    const v7, 0x4296cccd

    const v8, -0x3e59999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 320
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4161999a

    const v4, 0x40066666

    const/high16 v5, 0x41e00000

    const v6, 0x40cccccd

    const v7, 0x4225999a

    const v8, 0x41333333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 321
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4200cccd

    const v4, 0x4139999a

    const v5, 0x42853333

    const v7, 0x42ad6666

    const v8, -0x3e3b3333

    move-object v0, p0

    move v6, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 322
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440c8ccd

    const/high16 v4, 0x441d0000

    const v5, 0x440cc000

    const v6, 0x44144000

    const v7, 0x44080ccd

    const v8, 0x440dc666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 323
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 324
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 328
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 329
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440cd99a

    const v3, 0x440e0ccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 330
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e70cccd

    const v4, -0x3e40cccd

    const v5, -0x3dd46666

    const v6, -0x3e00cccd

    const v7, -0x3d70cccd

    const v8, -0x3e2ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 331
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e74cccd

    const v4, 0x40533333

    const/high16 v5, -0x3df80000

    const v6, 0x41266666

    const v7, -0x3db26666

    const v8, 0x4159999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 332
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df1999a

    const v4, 0x40d33333

    const v5, -0x3d746666

    const v6, 0x4121999a

    const/high16 v7, -0x3d400000

    const v8, -0x3e366666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 333
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e7ccccd

    const v4, -0x3e4f3333

    const v5, -0x3dd4cccd

    const/high16 v6, -0x3e140000

    const v7, -0x3d73cccd

    const v8, -0x3dff3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 334
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3d940000

    const v4, -0x3f466666

    const v5, -0x3d1d999a

    const v6, 0x420b999a

    const v7, -0x3d096666

    const v8, 0x42ba6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 335
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eeb3333

    const v4, 0x42566666

    const/high16 v5, 0x41e40000

    const v6, 0x42d6cccd

    const/high16 v7, 0x42ab0000

    const v8, 0x42f1cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 336
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4227999a

    const v4, 0x411e6666

    const/high16 v5, 0x429c0000

    const/high16 v6, -0x3f800000

    const v7, 0x42db999a

    const/high16 v8, -0x3e100000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 337
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bb3333

    const v4, -0x3e666666

    const v5, 0x42473333

    const v6, -0x3e3b3333

    const v7, 0x429c6666

    const v8, -0x3e58cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 338
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41880000

    const v5, 0x4205999a

    const v6, 0x41066666

    const v7, 0x42486666

    const v8, 0x4149999a

    move-object v0, p0

    move v4, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 339
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411b3333

    const v4, 0x4019999a

    const/high16 v5, 0x419c0000

    const/high16 v6, 0x40900000

    const v7, 0x41e9999a

    const v8, 0x40d9999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 340
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41eccccd

    const v4, -0x4059999a

    const v5, 0x4258cccd

    const v6, -0x3e89999a

    const/high16 v7, 0x42840000

    const v8, -0x3ddf3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 341
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44116ccd

    const v4, 0x4419cccd

    const v5, 0x44110ccd

    const v6, 0x4413a000

    const v7, 0x440cd99a

    const v8, 0x440e0ccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 342
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 343
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 347
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 348
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44100666

    const v3, 0x440f0ccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 349
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e800000

    const v4, -0x3e3d999a

    const v5, -0x3dd06666

    const v6, -0x3df4cccd

    const v7, -0x3d6acccd

    const v8, -0x3e21999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 350
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5b3333

    const v4, 0x40966666

    const v5, -0x3ddccccd

    const v6, 0x41366666

    const v7, -0x3d89999a

    const/high16 v8, 0x41680000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 351
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df2cccd

    const v4, 0x40a66666

    const v5, -0x3d76999a

    const v6, 0x40c66666

    const v7, -0x3d433333

    const v8, -0x3e1f3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 352
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e633333

    const v4, -0x3e2e6666

    const v5, -0x3db4cccd

    const v6, -0x3dfccccd

    const/high16 v7, -0x3d4f0000

    const v8, -0x3dfacccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 353
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3db60000

    const v5, -0x3d37cccd

    const v6, 0x4228cccd

    const v7, -0x3d2a999a

    const v8, 0x42c03333

    move-object v0, p0

    move v4, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 354
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f2ccccd

    const v4, 0x4256cccd

    const v5, 0x41e8cccd

    const v6, 0x42cf999a

    const v7, 0x42a8999a

    const v8, 0x42eb999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 355
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42313333

    const v4, 0x4134cccd

    const v5, 0x42a2999a

    const v6, -0x3f5ccccd

    const v7, 0x42e4cccd

    const v8, -0x3dfd999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 356
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cd999a

    const v4, -0x3e55999a

    const/high16 v5, 0x425c0000

    const/high16 v6, -0x3e280000

    const v7, 0x42accccd

    const v8, -0x3e573333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 357
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41accccd

    const/high16 v4, 0x40800000

    const/high16 v5, 0x422a0000

    const v6, 0x4139999a

    const v7, 0x427f999a

    const/high16 v8, 0x41880000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 358
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41ec0000

    const v4, 0x40eccccd

    const v5, 0x426b999a

    const v6, -0x3fb33333

    const/high16 v7, 0x42970000

    const v8, -0x3e2b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 359
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4413b99a

    const v4, 0x441c6000

    const v5, 0x4413d99a

    const v6, 0x4414d99a

    const v7, 0x44100666

    const v8, 0x440f0ccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 360
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 361
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 365
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 366
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44123333

    const v3, 0x440eb333

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 367
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e78cccd

    const v4, -0x3e466666

    const v5, -0x3dd1999a

    const v6, -0x3e05999a

    const/high16 v7, -0x3d6b0000

    const v8, -0x3e41999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 368
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e45999a

    const v4, 0x40b66666

    const v5, -0x3dc53333

    const v6, 0x41366666

    const v7, -0x3d736666

    const v8, 0x416e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 369
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df2cccd

    const v4, 0x40a66666

    const v5, -0x3d783333

    const v6, 0x404ccccd

    const v7, -0x3d46999a

    const/high16 v8, -0x3e100000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 370
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e633333

    const v4, -0x3e2d999a

    const/high16 v5, -0x3db60000

    const/high16 v6, -0x3dfa0000

    const v7, -0x3d5b3333

    const v8, -0x3df66666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 371
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d866666

    const v4, -0x40266666

    const/high16 v5, -0x3d1a0000

    const v6, 0x423e6666

    const v7, -0x3d193333

    const v8, 0x42ebcccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 372
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x3fc00000

    const v4, 0x4210cccd

    const v5, 0x41bb3333

    const v6, 0x428b6666

    const/high16 v7, 0x42820000

    const v8, 0x42b1cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 373
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4244cccd

    const v4, 0x41b66666

    const/high16 v5, 0x42bb0000

    const v6, 0x41066666

    const/high16 v7, 0x43040000

    const v8, -0x3e39999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 374
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41f4cccd

    const v4, -0x3e2d999a

    const v5, 0x42813333

    const/high16 v6, -0x3dfe0000

    const v7, 0x42cc3333

    const v8, -0x3e3a6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 375
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41ac0000

    const/high16 v4, 0x40900000

    const v5, 0x4228cccd

    const v6, 0x414ccccd

    const/high16 v7, 0x427e0000

    const v8, 0x4190cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 376
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41f5999a

    const v4, 0x40f33333

    const v5, 0x4269999a

    const v6, -0x3fb33333

    const v7, 0x4294cccd

    const v8, -0x3e226666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 377
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4416599a

    const v4, 0x441ba666

    const v5, 0x44162ccd

    const v6, 0x44143333

    const v7, 0x44123333

    const v8, 0x440eb333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 378
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 379
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 383
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 384
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4416c000

    const v3, 0x44127333

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 385
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ebb3333

    const v4, -0x3e0b3333

    const v5, -0x3dd0cccd

    const/high16 v6, -0x3dcc0000

    const v7, -0x3d66cccd

    const v8, -0x3de6cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 386
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3dee0000

    const/high16 v4, 0x40f00000

    const/high16 v5, -0x3d6d0000

    const v6, 0x4154cccd

    const/high16 v7, -0x3d230000

    const/high16 v8, 0x41900000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 387
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3d999a

    const v4, 0x40466666

    const v5, -0x3dcd999a

    const/high16 v6, -0x3f500000

    const v7, -0x3d8e6666

    const/high16 v8, -0x3e300000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 388
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3e6666

    const v4, -0x3e05999a

    const v5, -0x3d973333

    const/high16 v6, -0x3dd60000

    const v7, -0x3d3e999a

    const/high16 v8, -0x3dd80000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 389
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d8f3333

    const v4, 0x3f4ccccd

    const v5, -0x3d24cccd

    const v6, 0x4248cccd

    const v7, -0x3d253333

    const v8, 0x42ee3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 390
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x40000000

    const v4, 0x4211999a

    const v5, 0x41c33333

    const/high16 v6, 0x428b0000

    const v7, 0x42843333

    const v8, 0x42b06666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 391
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x424e6666

    const v4, 0x41b8cccd

    const v5, 0x42bd3333

    const v6, 0x406ccccd

    const v7, 0x43076666

    const v8, -0x3e18cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 392
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41633333

    const v4, -0x3ecb3333

    const/high16 v5, 0x41fc0000

    const v6, -0x3e5a6666

    const v7, 0x4243999a

    const v8, -0x3e35999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 393
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x420ccccd

    const v4, -0x3eeb3333

    const/high16 v5, 0x428b0000

    const v7, 0x42cc999a

    const/high16 v8, 0x41580000

    move-object v0, p0

    move v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 394
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c0cccd

    const/high16 v4, 0x41200000

    const/high16 v5, 0x42400000

    const v6, 0x4169999a

    const v7, 0x42906666

    move-object v0, p0

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 395
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4416b99a

    const v4, 0x4422f333

    const v5, 0x4419cccd

    const v6, 0x441a0ccd

    const v7, 0x4416c000

    const v8, 0x44127333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 396
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 397
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 401
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 402
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4416f99a

    const v3, 0x440e8666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 403
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e78cccd

    const v4, -0x3e5a6666

    const v5, -0x3dd33333

    const v6, -0x3e1ccccd

    const v7, -0x3d736666

    const v8, -0x3e65999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 404
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4cccd

    const/high16 v4, 0x41500000

    const v5, -0x3d636666

    const v6, 0x418d999a

    const v7, -0x3d11cccd

    const v8, 0x4181999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 405
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3b3333

    const v5, -0x3dcecccd

    const v6, -0x3efccccd

    const v7, -0x3d8f999a

    const/high16 v8, -0x3e200000

    move-object v0, p0

    move v4, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 406
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e5c0000

    const v4, -0x3e333333

    const/high16 v5, -0x3dbe0000

    const v6, -0x3de8cccd

    const v7, -0x3d5d999a

    const v8, -0x3ddb999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 407
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d7d6666

    const/high16 v4, -0x3f300000

    const v5, -0x3d096666

    const/high16 v6, 0x422c0000

    const/high16 v7, -0x3d070000

    const v8, 0x42e53333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 408
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x3fc00000

    const v4, 0x421ccccd

    const v5, 0x41bccccd

    const/high16 v6, 0x42920000

    const v7, 0x4283cccd

    const v8, 0x42b86666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 409
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x424e0000

    const v4, 0x41ba6666

    const v5, 0x42bd3333

    const v6, 0x40833333

    const v7, 0x43074ccd

    const/high16 v8, -0x3e1c0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 410
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415ccccd

    const v4, -0x3ece6666

    const/high16 v5, 0x41f40000

    const v6, -0x3e5d999a

    const v7, 0x423d3333

    const v8, -0x3e333333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 411
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41f0cccd

    const/high16 v4, -0x3ee80000

    const/high16 v5, 0x42740000

    const v6, -0x3f79999a

    const v7, 0x42b5cccd

    const v8, 0x406ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 412
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41940000

    const v4, 0x4099999a

    const v5, 0x42106666

    const v6, 0x41533333

    const v7, 0x425b3333

    const/high16 v8, 0x41880000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 413
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41dd999a

    const v4, 0x40b33333

    const v5, 0x4255999a

    const/high16 v6, -0x3f200000

    const v7, 0x42853333

    const v8, -0x3e133333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 414
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441ba666

    const v4, 0x441ad99a

    const v5, 0x441b1333

    const v6, 0x44138ccd

    const v7, 0x4416f99a

    const v8, 0x440e8666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 415
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 416
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 420
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 421
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44184666

    const v3, 0x440d599a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 422
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5ccccd

    const v4, -0x3e65999a

    const v5, -0x3dcd3333

    const v6, -0x3e566666

    const v7, -0x3d746666

    const v8, -0x3ecb3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 423
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3de00000

    const v4, 0x417ccccd

    const v5, -0x3d5d999a

    const v6, 0x418b3333

    const v7, -0x3d096666

    const v8, 0x4169999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 424
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e326666

    const v4, -0x40266666

    const v5, -0x3dc4cccd

    const v6, -0x3edccccd

    const v7, -0x3d813333

    const/high16 v8, -0x3e080000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 425
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e600000

    const v4, -0x3e3b3333

    const v5, -0x3dc2cccd

    const v6, -0x3deecccd

    const/high16 v7, -0x3d620000

    const v8, -0x3de1999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 426
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d9acccd

    const v4, -0x3f3ccccd

    const v5, -0x3d1e6666

    const/high16 v6, 0x42040000

    const v7, -0x3d09cccd

    const v8, 0x42afcccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 427
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ed66666

    const/high16 v4, 0x42620000

    const v5, 0x41c73333

    const v6, 0x42dd999a

    const v7, 0x42a53333

    const v8, 0x42facccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 428
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4236cccd

    const v4, 0x4139999a

    const v5, 0x42a5cccd

    const v6, -0x3f2ccccd

    const/high16 v7, 0x42e80000

    const v8, -0x3df13333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 429
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ccccd

    const v4, -0x3e89999a

    const v5, 0x42166666

    const/high16 v6, -0x3e380000

    const v7, 0x4270cccd

    const v8, -0x3e19999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 430
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x421b999a

    const v4, -0x3f2ccccd

    const v5, 0x4298cccd

    const v6, 0x3dcccccd

    const v7, 0x42e23333

    const v8, 0x4154cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 431
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415e6666

    const/high16 v4, 0x40a00000

    const v5, 0x41e1999a

    const v6, 0x4109999a

    const v7, 0x4229999a

    const v8, 0x414ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 432
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ee6666

    const v4, -0x4019999a

    const/high16 v5, 0x42580000

    const v6, -0x3e69999a

    const v7, 0x42766666

    const v8, -0x3dc93333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 433
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441e3333

    const v4, 0x4416d99a

    const v5, 0x441cb99a

    const v6, 0x44119333

    const v7, 0x44184666

    const v8, 0x440d599a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 434
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 435
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 439
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 440
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440a9333

    const v3, 0x440b3333

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 441
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de13333

    const v4, 0x41633333

    const v5, -0x3d5f999a

    const v6, 0x41933333

    const v7, -0x3d0c3333

    const v8, 0x41733333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 442
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfc6666

    const/high16 v4, -0x3fe00000

    const v5, -0x3d86cccd

    const v6, -0x3ede6666

    const/high16 v7, -0x3d560000

    const/high16 v8, -0x3de80000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 443
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e54cccd

    const v4, -0x3e2d999a

    const/high16 v5, -0x3dae0000

    const v6, -0x3df06666

    const v7, -0x3d53999a

    const v8, -0x3dee6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 444
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d9ccccd

    const v5, -0x3d2ecccd

    const v6, 0x4220cccd

    const v7, -0x3d1ecccd

    const v8, 0x42c1cccd

    move-object v0, p0

    move v4, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 445
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f19999a

    const v4, 0x424c6666

    const v5, 0x41e5999a

    const v6, 0x42cc999a

    const v7, 0x42a46666

    const/high16 v8, 0x42e90000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 446
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4238cccd

    const v4, 0x4144cccd

    const v5, 0x42a73333

    const v6, -0x3f3ccccd

    const v7, 0x42eacccd

    const v8, -0x3df33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 447
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41af3333

    const v4, -0x3e68cccd

    const/high16 v5, 0x423c0000

    const v6, -0x3e173333

    const/high16 v7, 0x42970000

    const v8, -0x3e00cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 448
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42260000

    const v4, -0x3f79999a

    const/high16 v5, 0x42a20000

    const v6, 0x409ccccd

    const/high16 v7, 0x42f10000

    const v8, 0x4181999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 449
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41533333

    const v4, 0x40733333

    const v5, 0x41d9999a

    const v6, 0x40dccccd

    const v7, 0x42233333

    const v8, 0x40d66666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 450
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d9999a

    const v5, 0x42453333

    const v6, -0x3e533333

    const v7, 0x42533333

    const v8, -0x3dbf999a

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 451
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44210666

    const/high16 v4, 0x440f0000

    const v5, 0x4416599a

    const v6, 0x4406f99a

    const v7, 0x440a9333

    const v8, 0x440b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 452
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 453
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 457
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 458
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44196666

    const v3, 0x440bd333

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 459
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3ea00000

    const v4, -0x3f933333

    const v5, -0x3e08cccd

    const/high16 v6, -0x3fa00000

    const v7, -0x3dcccccd

    const v8, 0x3f333333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 460
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3dd80000

    const/high16 v4, 0x41480000

    const v5, -0x3d57cccd

    const v6, 0x419a6666

    const v7, -0x3d006666

    const v8, 0x4171999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 461
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ded999a

    const/high16 v4, -0x3fa00000

    const v5, -0x3d79cccd

    const v6, -0x3ea66666

    const v7, -0x3d40999a

    const v8, -0x3dd73333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 462
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e40cccd

    const v4, -0x3e40cccd

    const v5, -0x3daf3333

    const v6, -0x3df4cccd

    const v7, -0x3d3d3333

    const/high16 v8, -0x3df20000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 463
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dcf3333

    const/high16 v5, -0x3d490000

    const v6, 0x4221999a

    const v7, -0x3d386666

    const/high16 v8, 0x42c10000

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 464
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3f100000

    const v4, 0x424b3333

    const/high16 v5, 0x41e40000

    const/high16 v6, 0x42cd0000

    const v7, 0x42a3999a

    const/high16 v8, 0x42ea0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 465
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42393333

    const v4, 0x4149999a

    const v5, 0x42a76666

    const v6, -0x3f433333

    const/high16 v7, 0x42eb0000

    const/high16 v8, -0x3df40000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 466
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x419f3333

    const v4, -0x3e773333

    const v5, 0x422a6666

    const v6, -0x3e226666

    const v7, 0x42883333

    const v8, -0x3dff3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 467
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42086666

    const/high16 v4, -0x3f400000

    const v5, 0x4287cccd

    const v6, -0x3fd33333

    const v7, 0x42cb3333

    const v8, 0x40933333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 468
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ca6666

    const/high16 v4, 0x40b00000

    const/high16 v5, 0x424a0000

    const v6, 0x41466666

    const v7, 0x42983333

    const/high16 v8, 0x41700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 469
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41db3333

    const v4, 0x40333333

    const/high16 v5, 0x424a0000

    const v6, -0x3e71999a

    const v7, 0x425d3333

    const v8, -0x3dcd999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 470
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44233333

    const v4, 0x4414999a

    const v5, 0x441f8000

    const v6, 0x440d7333

    const v7, 0x44196666

    const v8, 0x440bd333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 471
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 472
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 476
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 477
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44233333

    const v3, 0x44124000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 478
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e9ccccd

    const v4, -0x3e39999a

    const v5, -0x3de2cccd

    const v6, -0x3dfd999a

    const v7, -0x3d716666

    const v8, -0x3e4b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 479
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dcccccd

    const v4, 0x4161999a

    const/high16 v5, -0x3d4b0000

    const/high16 v6, 0x41ac0000

    const v7, -0x3cf66666

    const v8, 0x41766666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 480
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3deb3333

    const v4, -0x3f633333

    const v5, -0x3d746666

    const v6, -0x3e91999a

    const v7, -0x3d3b999a

    const v8, -0x3dcf3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 481
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f133333

    const v4, -0x3f0ccccd

    const v5, -0x3e7b3333

    const v6, -0x3e966666

    const v7, -0x3e2f3333

    const v8, -0x3e5f3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 482
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d693333

    const v4, -0x3dcf3333

    const v5, -0x3cd3cccd

    const v6, 0x40f66666

    const v7, -0x3cd36666

    const v8, 0x42b86666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 483
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v4, 0x42320000

    const v5, 0x41e4cccd

    const v6, 0x42ab6666

    const v7, 0x428f6666

    const v8, 0x42cb999a

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 484
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42426666

    const v4, 0x4191999a

    const v5, 0x42b1999a

    const v6, 0x3ecccccd

    const v7, 0x42fccccd

    const v8, -0x3e133333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 485
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41433333

    const v4, -0x3ee4cccd

    const v5, 0x41cd999a

    const v6, -0x3e6a6666

    const v7, 0x421f3333

    const v8, -0x3e366666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 486
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4233999a

    const v4, -0x3e5b3333

    const v5, 0x42b76666

    const v6, -0x3e7d999a

    const v7, 0x430a6666

    const v8, -0x3f1ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 487
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cb3333

    const/high16 v4, 0x40a00000

    const v5, 0x424acccd

    const/high16 v6, 0x41280000

    const v7, 0x4298999a

    const v8, 0x4169999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 488
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a9999a

    const v4, 0x4059999a

    const/high16 v5, 0x421c0000

    const v6, -0x3f933333

    const v7, 0x424b999a

    const v8, -0x3e4e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 489
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44256000

    const v4, 0x441b399a

    const v5, 0x4425d333

    const v6, 0x4416d333

    const v7, 0x44233333

    const v8, 0x44124000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 490
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 491
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 495
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 496
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44240ccd

    const/high16 v3, 0x44100000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 497
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e75999a

    const v4, -0x3e733333

    const v5, -0x3de93333

    const/high16 v6, -0x3e700000

    const/high16 v7, -0x3d900000

    const v8, -0x3ece6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 498
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dbd999a

    const v4, 0x416e6666

    const/high16 v5, -0x3d3c0000

    const v6, 0x41bb3333

    const v7, -0x3ceae666

    const v8, 0x417e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 499
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de7999a

    const v4, -0x3f4ccccd

    const/high16 v5, -0x3d7a0000

    const v6, -0x3ebb3333

    const v7, -0x3d3fcccd

    const v8, -0x3dd93333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 500
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ef9999a

    const/high16 v4, -0x3ef80000

    const/high16 v5, -0x3e600000

    const v6, -0x3e65999a

    const v7, -0x3dfa6666

    const/high16 v8, -0x3e300000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 501
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d646666

    const v4, -0x3de2cccd

    const v5, -0x3cd53333

    const v6, 0x410e6666

    const v7, -0x3cd54ccd

    const v8, 0x42ba6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 502
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v4, 0x42340000

    const v5, 0x41e4cccd

    const/high16 v6, 0x42ab0000

    const/high16 v7, 0x42900000

    const/high16 v8, 0x42cb0000

    move-object v0, p0

    move v3, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 503
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x423e0000

    const v4, 0x418ccccd

    const v5, 0x42ad6666

    const v6, 0x3e4ccccd

    const v7, 0x42f86666

    const v8, -0x3e1ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 504
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418a6666

    const v4, -0x3eaccccd

    const/high16 v5, 0x42120000

    const v6, -0x3e34cccd

    const v7, 0x4262cccd

    const/high16 v8, -0x3dfc0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 505
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42286666

    const v4, -0x3e81999a

    const v5, 0x42abcccd

    const/high16 v6, -0x3ec00000

    const v7, 0x43014ccd

    const v8, -0x3f933333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 506
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41de6666

    const v4, 0x40a9999a

    const v5, 0x425ecccd

    const v6, 0x41266666

    const v7, 0x42a73333

    const v8, 0x416ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 507
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bf3333

    const v4, 0x406ccccd

    const v5, 0x42226666

    const v6, -0x3f59999a

    const v7, 0x424d3333

    const v8, -0x3e31999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 508
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4428999a

    const v4, 0x4418f333

    const v5, 0x4427f333

    const/high16 v6, 0x44140000

    const v7, 0x44240ccd

    const/high16 v8, 0x44100000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 509
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 510
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 514
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 515
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441f199a

    const v3, 0x440ce666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 516
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3edb3333

    const v4, -0x41666666

    const v5, -0x3e58cccd

    const v6, 0x40266666

    const v7, -0x3e08cccd

    const v8, 0x40accccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 517
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3db46666

    const v4, 0x4161999a

    const v5, -0x3d33cccd

    const v6, 0x41b66666

    const v7, -0x3ce4e666

    const v8, 0x416b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 518
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de13333

    const v4, -0x3f3ccccd

    const/high16 v5, -0x3d670000

    const/high16 v6, -0x3e780000

    const v7, -0x3d2e3333

    const v8, -0x3dbe6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 519
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee9999a

    const v4, -0x3ed9999a

    const v5, -0x3e4f3333

    const v6, -0x3e6a6666

    const v7, -0x3df4cccd

    const v8, -0x3e373333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 520
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d69999a

    const/high16 v4, -0x3de80000

    const v5, -0x3cdbe666

    const v6, 0x41633333

    const v7, -0x3cdbcccd

    const v8, 0x42bfcccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 521
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x42333333

    const v4, 0x4240cccd

    const/high16 v5, 0x42020000

    const v6, 0x42b5999a

    const v7, 0x429fcccd

    const v8, 0x42d0cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 522
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x422ecccd

    const v4, 0x4149999a

    const v5, 0x429fcccd

    const v6, -0x3fa66666

    const v7, 0x42e33333

    const v8, -0x3e126666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 523
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411ccccd

    const v4, -0x3f09999a

    const v5, 0x419d999a

    const/high16 v6, -0x3e880000

    const v7, 0x41f26666

    const v8, -0x3e51999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 524
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4238cccd

    const v4, -0x3e226666

    const/high16 v5, 0x42c10000

    const v6, -0x3e133333

    const v7, 0x4313e666

    const v8, -0x3e50cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 525
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42106666

    const v4, 0x40accccd

    const v5, 0x428fcccd

    const v6, 0x41466666

    const/high16 v7, 0x42d80000

    const v8, 0x418ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 526
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41ec0000

    const v4, 0x4089999a

    const v5, 0x4251999a

    const v6, -0x3e933333

    const v7, 0x425acccd

    const v8, -0x3dd0cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 527
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442ab333

    const v4, 0x4412e000

    const v5, 0x4425799a

    const v6, 0x440d199a

    const v7, 0x441f199a

    const v8, 0x440ce666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 528
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 529
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 533
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 534
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442af99a

    const v3, 0x44122ccd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 535
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eab3333

    const v4, -0x3e726666

    const v5, -0x3dff3333

    const v6, -0x3e4a6666

    const v7, -0x3d973333

    const v8, -0x3e8ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 536
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dbb999a

    const v4, 0x41633333

    const v5, -0x3d3a6666

    const v6, 0x41c66666

    const v7, -0x3ce9999a

    const v8, 0x419e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 537
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dbb3333

    const v4, -0x3f69999a

    const/high16 v5, -0x3d410000

    const v6, -0x3e866666

    const/high16 v7, -0x3cfd0000

    const/high16 v8, -0x3da60000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 538
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3ee80000

    const v4, -0x3ed9999a

    const v5, -0x3e4d999a

    const/high16 v6, -0x3e6c0000

    const/high16 v7, -0x3df40000

    const v8, -0x3e39999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 539
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d6bcccd

    const v4, -0x3deb999a

    const v5, -0x3cde8000

    const v6, 0x415b3333

    const v7, -0x3cdce666

    const v8, 0x42bc999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 540
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x40800000

    const v4, 0x42426666

    const v5, 0x41fd999a

    const v6, 0x42b8999a

    const/high16 v7, 0x429f0000

    const v8, 0x42d43333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 541
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4233999a

    const/high16 v4, 0x41500000

    const v5, 0x42a36666

    const/high16 v6, -0x3f800000

    const v7, 0x42e7999a

    const v8, -0x3e05999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 542
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41100000

    const v4, -0x3f19999a

    const v5, 0x41926666

    const v6, -0x3e9e6666

    const/high16 v7, 0x41e00000

    const v8, -0x3e5f3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 543
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42573333

    const v4, -0x3dfb999a

    const/high16 v5, 0x42e00000

    const/high16 v6, -0x3e000000

    const v7, 0x432b999a

    const v8, -0x3e4d999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 544
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42100000

    const v4, 0x40bccccd

    const v5, 0x42713333

    const v6, 0x4129999a

    const v7, 0x42c0cccd

    const/high16 v8, 0x41700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 545
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418b3333

    const v4, 0x40066666

    const/high16 v5, 0x42220000

    const v6, -0x3efe6666

    const v7, 0x42413333

    const v8, -0x3e4b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 546
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442d799a

    const v4, 0x44198000

    const v5, 0x442db333

    const v6, 0x4415d333

    const v7, 0x442af99a

    const v8, 0x44122ccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 547
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 548
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 552
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 553
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4426b99a

    const v3, 0x440dd99a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 554
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eeb3333

    const v5, -0x3e68cccd

    const v6, 0x402ccccd

    const v7, -0x3e1f3333

    const v8, 0x40a33333

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 555
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3da9999a

    const v4, 0x415b3333

    const v5, -0x3d29999a

    const v6, 0x41d66666

    const v7, -0x3cdc999a

    const v8, 0x419f3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 556
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dbd999a

    const/high16 v4, -0x3f400000

    const v5, -0x3d443333

    const/high16 v6, -0x3e700000

    const v7, -0x3cfe6666

    const v8, -0x3da2cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 557
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3ec00000

    const/high16 v4, -0x3eb80000

    const v5, -0x3e20cccd

    const/high16 v6, -0x3e4c0000

    const v7, -0x3dd0cccd

    const v8, -0x3e133333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 558
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3d940000

    const/high16 v4, -0x3e2c0000

    const v5, -0x3d016666

    const v6, 0x4019999a

    const v7, -0x3cea3333

    const v8, 0x4277999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 559
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e540000

    const v4, 0x4262cccd

    const v5, 0x411b3333

    const v6, 0x42f06666

    const/high16 v7, 0x428a0000

    const v8, 0x430be666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 560
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4231999a

    const v4, 0x416ccccd

    const v5, 0x42a5cccd

    const v6, 0x3f19999a

    const v7, 0x42e86666

    const/high16 v8, -0x3e200000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 561
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42620000

    const/high16 v4, -0x3dbe0000

    const v5, 0x42f3999a

    const/high16 v6, -0x3d900000

    const v7, 0x4340e666

    const v8, -0x3db93333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 562
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x422acccd

    const v4, 0x40c66666

    const v5, 0x42aa999a

    const v6, 0x4154cccd

    const/high16 v7, 0x43000000

    const v8, 0x41a0cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 563
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d1999a

    const v4, -0x40e66666

    const v5, 0x4237999a

    const v6, -0x3e733333

    const/high16 v7, 0x423c0000

    const v8, -0x3dd8cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 564
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44309333

    const/high16 v4, 0x44130000

    const v5, 0x442c4ccd

    const v6, 0x440e0ccd

    const v7, 0x4426b99a

    const v8, 0x440dd99a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 565
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 566
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 570
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 571
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44334ccd

    const v3, 0x44128000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 572
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee9999a

    const v4, -0x3e9e6666

    const v5, -0x3e45999a

    const v6, -0x3e61999a

    const/high16 v7, -0x3de00000

    const v8, -0x3e773333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 573
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e2ccccd

    const v4, 0x40866666

    const v5, -0x3dad999a

    const v6, 0x411e6666

    const v7, -0x3d61cccd

    const/high16 v8, 0x41500000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 574
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3de60000

    const v4, 0x408ccccd

    const v5, -0x3d656666

    const v6, 0x4121999a

    const v7, -0x3d183333

    const v8, 0x4119999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 575
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3db33333

    const v4, -0x40e66666

    const v5, -0x3d3ccccd

    const/high16 v6, -0x3e740000

    const v7, -0x3cf7e666

    const v8, -0x3da8cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 576
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3eb00000

    const v4, -0x3ebb3333

    const v5, -0x3e18cccd

    const v6, -0x3e49999a

    const v7, -0x3dcb3333

    const v8, -0x3e0f3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 577
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d6c6666

    const v4, -0x3dfccccd

    const v5, -0x3ce2999a

    const v6, 0x41b0cccd

    const v7, -0x3ce4cccd

    const v8, 0x42c9cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 578
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe66666

    const v4, 0x427e6666

    const/high16 v5, 0x426c0000

    const v6, 0x42e1cccd

    const v7, 0x42f4999a

    const v8, 0x42d33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 579
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41eb3333

    const v4, -0x3fa66666

    const v5, 0x42553333

    const v6, -0x3e6d999a

    const v7, 0x4297999a

    const v8, -0x3df0cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 580
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42553333

    const v4, -0x3ddb3333

    const/high16 v5, 0x42e40000

    const v6, -0x3d986666

    const v7, 0x4333e666

    const/high16 v8, -0x3dba0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 581
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x424c6666

    const/high16 v4, 0x40d00000

    const v5, 0x42cbcccd

    const v6, 0x4141999a

    const v7, 0x4319999a

    const v8, 0x4198cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 582
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4188cccd

    const v4, 0x40133333

    const v5, 0x41fa6666

    const/high16 v6, -0x3fa00000

    const v7, 0x42226666

    const v8, -0x3e6d999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 583
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4435b99a

    const v4, 0x4419cccd

    const v5, 0x4435a666

    const v6, 0x44160666

    const v7, 0x44334ccd

    const v8, 0x44128000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 584
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 585
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 589
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 590
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4438b333

    const v3, 0x4411c666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 591
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3edb3333

    const v4, -0x3ec4cccd

    const v5, -0x3e44cccd

    const/high16 v6, -0x3e780000

    const v7, -0x3de46666

    const v8, -0x3ebccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 592
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eb9999a

    const v4, 0x40733333

    const v5, -0x3e3e6666

    const v6, 0x4114cccd

    const/high16 v7, -0x3dee0000

    const v8, 0x4154cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 593
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f29999a

    const v5, -0x3ee4cccd

    const/high16 v6, 0x40600000

    const v7, -0x3e61999a

    const v8, 0x40a9999a

    move-object v0, p0

    move v4, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 594
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e026666

    const/high16 v4, 0x40c00000

    const/high16 v5, -0x3d820000

    const v6, 0x40933333

    const/high16 v7, -0x3d370000

    const v8, 0x40833333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 595
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d68cccd

    const/high16 v4, -0x40800000

    const v5, -0x3ceeb333

    const v6, -0x3f09999a

    const v7, -0x3cb4999a

    const v8, -0x3d8ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 596
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ec33333

    const v4, -0x3ed33333

    const/high16 v5, -0x3e2c0000

    const v6, -0x3e64cccd

    const v7, -0x3ddacccd

    const v8, -0x3e31999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 597
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d6fcccd

    const v4, -0x3e066666

    const v5, -0x3ce7199a

    const v6, 0x41b1999a

    const v7, -0x3ce78000

    const v8, 0x42c7cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 598
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e99999a

    const v4, 0x427d3333

    const v5, 0x4265999a

    const/high16 v6, 0x42e40000

    const/high16 v7, 0x42f10000

    const/high16 v8, 0x42d70000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 599
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e73333

    const/high16 v4, -0x3fc00000

    const v5, 0x4253999a

    const v6, -0x3e7a6666

    const v7, 0x42973333

    const v8, -0x3dfb999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 600
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42760000

    const v4, -0x3dcecccd

    const v5, 0x4301cccd

    const v6, -0x3d9f999a

    const v7, 0x434d999a

    const v8, -0x3d993333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 601
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42086666

    const v4, -0x40cccccd

    const v5, 0x42766666

    const v6, -0x42333333

    const v7, 0x42ab999a

    const v8, 0x3fcccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 602
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41633333

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x41cc0000

    const v6, 0x402ccccd

    const/high16 v7, 0x42180000

    const v8, 0x410e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 603
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4149999a

    const v4, 0x40c66666

    const v5, 0x41d4cccd

    const v6, 0x4134cccd

    const v7, 0x4221999a

    const v8, 0x4149999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 604
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4179999a

    const/high16 v4, 0x3fc00000

    const v5, 0x41d8cccd

    const v6, -0x3ef33333

    const v7, 0x4204cccd

    const v8, -0x3e466666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 605
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x443bcccd

    const v4, 0x44184666

    const v5, 0x443b5333

    const v6, 0x4414c000

    const v7, 0x4438b333

    const v8, 0x4411c666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 606
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 607
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 611
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 612
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44412ccd

    const v3, 0x44124666

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 613
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee33333

    const v4, -0x3eb9999a

    const/high16 v5, -0x3e4c0000

    const v6, -0x3e866666

    const v7, -0x3de66666

    const v8, -0x3ea9999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 614
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ece6666

    const/high16 v4, 0x3fc00000

    const v5, -0x3e4ccccd

    const v6, 0x40dccccd

    const v7, -0x3df93333

    const v8, 0x4149999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 615
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e69999a

    const v4, 0x41166666

    const v5, -0x3de46666

    const v6, 0x412ccccd

    const v7, -0x3d8f3333

    const v8, 0x4131999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 616
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3de20000

    const/high16 v4, 0x3f000000

    const v5, -0x3d92cccd

    const v6, 0x3e4ccccd

    const/high16 v7, -0x3d230000

    const v8, 0x3fa66666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 617
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d6fcccd

    const/high16 v4, 0x3fc00000

    const v5, -0x3cf7199a

    const v6, -0x3e75999a

    const v7, -0x3cbf8000

    const/high16 v8, -0x3d7e0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 618
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3eb80000

    const v4, -0x3ed4cccd

    const v5, -0x3e226666

    const v6, -0x3e64cccd

    const v7, -0x3dd3999a

    const v8, -0x3e333333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 619
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d72cccd

    const v4, -0x3e19999a

    const v5, -0x3ceb6666

    const v6, 0x41c73333

    const v7, -0x3cebcccd

    const v8, 0x42ca3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 620
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e99999a

    const v4, 0x427b3333

    const v5, 0x42626666

    const v6, 0x42e2999a

    const v7, 0x42ee6666

    const v8, 0x42d73333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 621
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e73333

    const v4, -0x3fd9999a

    const v5, 0x4254cccd

    const v6, -0x3e833333

    const v7, 0x4298cccd

    const v8, -0x3e05999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 622
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x426b999a

    const v4, -0x3de2cccd

    const v5, 0x42f86666

    const/high16 v6, -0x3d800000

    const v7, 0x43436666

    const/high16 v8, -0x3d7d0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 623
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ea6666

    const v4, -0x40e66666

    const/high16 v5, 0x42640000

    const v7, 0x42ad3333

    const/high16 v8, -0x41000000

    move-object v0, p0

    move v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 624
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42053333

    const v5, 0x4275999a

    const v6, 0x40666666

    const v7, 0x42b26666

    const v8, 0x41a0cccd

    move-object v0, p0

    move v4, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 625
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410b3333

    const v4, 0x40a66666

    const v5, 0x419d999a

    const v6, 0x41033333

    const v7, 0x41ef3333

    const v8, 0x410e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 626
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x417ccccd

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x41dc0000

    const v6, -0x3f0ccccd

    const v7, 0x42093333

    const v8, -0x3e50cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 627
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4443eccd

    const v4, 0x4418a666

    const v5, 0x44438666

    const v6, 0x44154000

    const v7, 0x44412ccd

    const v8, 0x44124666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 628
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 629
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 633
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 634
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x444d6666

    const v3, 0x4412b99a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 635
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eeb3333

    const v4, -0x3eae6666

    const v5, -0x3e39999a

    const v6, -0x3e69999a

    const v7, -0x3ddd3333

    const v8, -0x3e9e6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 636
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eeccccd

    const v4, 0x402ccccd

    const/high16 v5, -0x3e700000

    const v6, 0x40d9999a

    const v7, -0x3e29999a

    const v8, 0x4124cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 637
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e566666

    const/high16 v4, 0x41080000

    const v5, -0x3dcf999a

    const v6, 0x4174cccd

    const/high16 v7, -0x3d7b0000

    const v8, 0x41826666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 638
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3dc60000

    const v5, -0x3d43999a

    const v6, 0x3fb33333

    const v7, -0x3cf34ccd

    const v8, 0x3f666666

    move-object v0, p0

    move v4, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 639
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d5c6666

    const v5, -0x3ceb999a

    const v6, -0x3e60cccd

    const v7, -0x3cad8000

    const v8, -0x3d756666

    move-object v0, p0

    move v4, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 640
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3ec80000

    const v4, -0x3eeccccd

    const/high16 v5, -0x3e3c0000

    const v6, -0x3e773333

    const/high16 v7, -0x3de80000

    const v8, -0x3e466666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 641
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x43630000

    const v4, 0x43edcccd

    const/high16 v5, 0x43120000

    const v6, 0x44042ccd

    const v7, 0x43126666

    const v8, 0x4418d99a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 642
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ecccccd

    const v4, 0x4039999a

    const v5, 0x3f19999a

    const v6, 0x4121999a

    const v8, 0x4188cccd

    move-object v0, p0

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 643
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41733333

    const/high16 v4, 0x42880000

    const v5, 0x42ae6666

    const v6, 0x42d1cccd

    const v7, 0x4318e666

    const v8, 0x429a6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 644
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41b33333

    const v4, -0x3ee9999a

    const v5, 0x422e6666

    const v6, -0x3e4d999a

    const v7, 0x42813333

    const v8, -0x3df53333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 645
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x42473333

    const v4, -0x3e14cccd

    const v5, 0x42ce3333

    const v6, -0x3db06666

    const v7, 0x4320199a

    const v8, -0x3d9b3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 646
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x425e6666

    const v4, -0x3f59999a

    const v5, 0x42e16666

    const v6, -0x3ff9999a

    const v7, 0x43283333

    const/high16 v8, 0x3f000000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 647
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bb3333

    const v4, 0x3f8ccccd

    const v5, 0x42346666

    const/high16 v6, 0x41080000

    const v7, 0x42826666

    const v8, 0x41a66666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 648
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40dccccd

    const v4, 0x40866666

    const v5, 0x4169999a

    const/high16 v6, 0x40f00000

    const v7, 0x41b33333

    const/high16 v8, 0x41180000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 649
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x417ccccd

    const v4, 0x40866666

    const v5, 0x41fb3333

    const v6, -0x3fe66666

    const v7, 0x4220cccd

    const v8, -0x3e866666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 650
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x444fa000

    const v4, 0x441a199a

    const v5, 0x444f9333

    const v6, 0x4415c666

    const v7, 0x444d6666

    const v8, 0x4412b99a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 651
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 652
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 656
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 657
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44022000

    const v3, 0x44162000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 658
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3d78999a

    const v4, -0x40b33333

    const v5, -0x3d00cccd

    const v6, -0x3e4b3333

    const v7, -0x3ccc199a

    const v8, -0x3d7b6666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 659
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3e980000

    const v4, -0x3ebe6666

    const/high16 v5, -0x3e040000

    const v6, -0x3e4ccccd

    const v7, -0x3dbc6666

    const/high16 v8, -0x3e140000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 660
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3dda0000

    const v4, -0x3e79999a

    const v5, -0x3d4f3333

    const v6, -0x3fa66666

    const v7, -0x3d126666

    const v8, 0x41f9999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 661
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e1a6666

    const v4, 0x4202cccd

    const v5, -0x3df5999a

    const v6, 0x429f3333

    const/high16 v7, -0x3e900000

    const v8, 0x42eccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 662
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a26666

    const v4, 0x42206666

    const v5, 0x42803333

    const v6, 0x42806666

    const v7, 0x42d7999a

    const v8, 0x42713333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 663
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e33333

    const v4, -0x3fd9999a

    const v5, 0x4250cccd

    const v6, -0x3e866666

    const v7, 0x42953333

    const v8, -0x3e033333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 664
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x423f999a

    const v4, -0x3df6cccd

    const v5, 0x42c83333

    const/high16 v6, -0x3d920000

    const v7, 0x431e6666

    const v8, -0x3d77999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 665
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41f4cccd

    const v4, -0x3f6ccccd

    const v5, 0x4278cccd

    const v6, -0x3fc66666

    const v7, 0x42bacccd

    const v8, -0x3f933333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 666
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41840000

    const v5, 0x41d66666

    const v6, 0x3dcccccd

    const v7, 0x41fb3333

    const v8, -0x42333333

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 667
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40bccccd

    const v5, 0x42446666

    const/high16 v7, 0x42440000

    const v8, -0x3f633333

    move-object v0, p0

    move v4, v11

    move v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 668
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v4, -0x3f700000

    const v5, -0x3dcb999a

    const v6, -0x3f5ccccd

    const/high16 v7, -0x3dae0000

    const v8, -0x3f59999a

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 669
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4412b333

    const v4, 0x44162666

    const v5, 0x440a6ccd

    const v6, 0x4416399a

    const v7, 0x44022000

    const v8, 0x44162000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 670
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 671
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 672
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 675
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 676
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fb8ccd

    const v3, 0x44164000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 677
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3d900000

    const v4, -0x3f766666

    const v5, -0x3d1b3333

    const/high16 v6, -0x3e4c0000

    const v7, -0x3ce08000

    const/high16 v8, -0x3d7f0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 678
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ec33333

    const/high16 v4, -0x3ed00000

    const v5, -0x3e34cccd

    const/high16 v6, -0x3e580000

    const/high16 v7, -0x3de00000

    const v8, -0x3e226666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 679
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dd46666

    const v4, -0x3e60cccd

    const/high16 v5, -0x3d580000

    const v6, -0x3e99999a

    const/high16 v7, -0x3d110000

    const v8, 0x4185999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 680
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df53333

    const v4, 0x41f26666

    const v5, -0x3dc6cccd

    const/high16 v6, 0x428b0000

    const v7, -0x3e00cccd

    const/high16 v8, 0x42e30000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 681
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416b3333

    const v4, 0x4233999a

    const/high16 v5, 0x423e0000

    const v6, 0x428bcccd

    const v7, 0x42bccccd

    const v8, 0x4296999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 682
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x42120000

    const v4, 0x40866666

    const v5, 0x4284999a

    const v6, -0x3ec66666

    const/high16 v7, 0x42bb0000

    const v8, -0x3df8cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 683
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ff3333

    const/high16 v4, -0x3e300000

    const v5, 0x42846666

    const v6, -0x3dc3999a

    const v7, 0x42d4cccd

    const v8, -0x3d95999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 684
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4207999a

    const v4, -0x3ee4cccd

    const v5, 0x4264cccd

    const/high16 v6, -0x3ed80000

    const v7, 0x42b7999a

    const v8, -0x3edb3333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 685
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411ccccd

    const v4, 0x3dcccccd

    const v5, 0x420d999a

    const v6, -0x40b33333

    const v7, 0x4221999a

    const v8, -0x4059999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 686
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x40a00000

    const v5, 0x41df3333

    const v6, -0x4059999a

    const v7, 0x41df3333

    const v8, -0x3f766666

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 687
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v4, -0x3f7ccccd

    const v5, -0x3de26666

    const v6, -0x3fa66666

    const/high16 v7, -0x3dc60000

    const v8, -0x3f99999a

    move-object v0, p0

    move v3, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 688
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44077333

    const v4, 0x44167333

    const v5, 0x44025333

    const v6, 0x44169333

    const v7, 0x43fb8ccd

    const v8, 0x44164000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 689
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 690
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 691
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 692
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V
    .registers 12
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    .prologue
    const/4 v3, 0x0

    .line 705
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 706
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V
    .registers 14
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v5, 0x0

    .line 709
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 710
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V
    .registers 20
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F

    .prologue
    .line 718
    const/4 v7, 0x0

    .line 719
    .local v7, "wasCurve":Z
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternMorphEffectPath$SVGCommand:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_f4

    .line 830
    :goto_c
    if-nez v7, :cond_16

    .line 831
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 832
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 834
    :cond_16
    return-void

    .line 722
    :pswitch_17
    move v8, p3

    .line 723
    .local v8, "x":F
    move v9, p4

    .line 724
    .local v9, "y":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->m:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_2b

    .line 725
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 726
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 727
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 729
    :cond_2b
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 730
    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 731
    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 737
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_33
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 740
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 741
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 746
    :pswitch_43
    move v8, p3

    .line 747
    .restart local v8    # "x":F
    move v9, p4

    .line 748
    .restart local v9    # "y":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->l:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_57

    .line 749
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 750
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 751
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 753
    :cond_57
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 754
    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 755
    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 761
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_5f
    move v8, p3

    .line 762
    .restart local v8    # "x":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->h:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_6e

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 764
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    goto :goto_c

    .line 766
    :cond_6e
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 767
    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    goto :goto_c

    .line 773
    .end local v8    # "x":F
    :pswitch_76
    move v9, p4

    .line 774
    .restart local v9    # "y":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->v:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_85

    .line 775
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 776
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 778
    :cond_85
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 779
    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_c

    .line 785
    .end local v9    # "y":F
    :pswitch_8d
    const/4 v7, 0x1

    .line 786
    move v1, p3

    .line 787
    .local v1, "tx1":F
    move v2, p4

    .line 788
    .local v2, "ty1":F
    move/from16 v3, p5

    .line 789
    .local v3, "tx2":F
    move/from16 v4, p6

    .line 790
    .local v4, "ty2":F
    move/from16 v5, p7

    .line 791
    .local v5, "tx":F
    move/from16 v6, p8

    .line 792
    .local v6, "ty":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_ae

    .line 793
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v1, v0

    .line 794
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v3, v0

    .line 795
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v5, v0

    .line 796
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v2, v0

    .line 797
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v4, v0

    .line 798
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v6, v0

    :cond_ae
    move-object v0, p1

    .line 800
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 801
    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 802
    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 803
    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 804
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto/16 :goto_c

    .line 809
    .end local v1    # "tx1":F
    .end local v2    # "ty1":F
    .end local v3    # "tx2":F
    .end local v4    # "ty2":F
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :pswitch_bc
    const/4 v7, 0x1

    .line 810
    move v3, p3

    .line 811
    .restart local v3    # "tx2":F
    move v4, p4

    .line 812
    .restart local v4    # "ty2":F
    move/from16 v5, p5

    .line 813
    .restart local v5    # "tx":F
    move/from16 v6, p6

    .line 814
    .restart local v6    # "ty":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_d3

    .line 815
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v3, v0

    .line 816
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v5, v0

    .line 817
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v4, v0

    .line 818
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v6, v0

    .line 820
    :cond_d3
    const/high16 v0, 0x40000000

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    sub-float v1, v0, v10

    .line 821
    .restart local v1    # "tx1":F
    const/high16 v0, 0x40000000

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    sub-float v2, v0, v10

    .restart local v2    # "ty1":F
    move-object v0, p1

    .line 822
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 823
    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 824
    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 825
    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 826
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto/16 :goto_c

    .line 719
    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_33
        :pswitch_33
        :pswitch_43
        :pswitch_43
        :pswitch_5f
        :pswitch_5f
        :pswitch_76
        :pswitch_76
        :pswitch_8d
        :pswitch_8d
        :pswitch_bc
        :pswitch_bc
    .end packed-switch
.end method


# virtual methods
.method public getPath(IFF)Landroid/graphics/Path;
    .registers 6
    .param p1, "index"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    .line 697
    .local v0, "tPath":Landroid/graphics/Path;
    return-object v0
.end method

.method public getPathTotal()I
    .registers 2

    .prologue
    .line 701
    const/16 v0, 0x28

    return v0
.end method
