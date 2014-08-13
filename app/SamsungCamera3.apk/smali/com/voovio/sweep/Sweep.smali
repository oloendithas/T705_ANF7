.class public final Lcom/voovio/sweep/Sweep;
.super Ljava/lang/Object;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/Sweep$NodeInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_FOV_V:F = 50.0f

.field static final DEFAULT_IMAGE_ASPECT:F = 1.5f

.field static final DEFAULT_IMAGE_HEIGHT:I = 0x2aa

.field static final DEFAULT_IMAGE_WIDTH:I = 0x400

.field public static KEYWORD:Ljava/lang/String; = null

.field static final RADIOUS_OFFSET:F = -150.0f

.field static final SWEEP_STATE_COMPLETE:I = 0x3

.field static final SWEEP_STATE_ERROR:I = -0x1

.field static final SWEEP_STATE_LOADING:I = 0x1

.field static final SWEEP_STATE_READY:I = 0x2

.field static final SWEEP_STATE_VOID:I

.field public static VERSION:Ljava/lang/String;


# instance fields
.field m_aTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Transition;",
            ">;"
        }
    .end annotation
.end field

.field m_aVoovios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field m_fFOV:F

.field m_nHeight:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nOrientation:I

.field m_nState:I

.field m_nWidth:I

.field m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

.field m_strSEFFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "1.7.5 03/04/2014"

    sput-object v0, Lcom/voovio/sweep/Sweep;->VERSION:Ljava/lang/String;

    .line 579
    const-string v0, "Voovio_Sweep_VirtualTour"

    sput-object v0, Lcom/voovio/sweep/Sweep;->KEYWORD:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 74
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 77
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 78
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 79
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    .line 82
    new-instance v0, Lcom/voovio/sweep/MaskGeometry;

    invoke-direct {v0}, Lcom/voovio/sweep/MaskGeometry;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    .line 88
    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    .line 90
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 91
    return-void
.end method

.method public static final TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 6
    .param p0, "vT"    # Lcom/voovio/voo3d/data/Vector3;
    .param p1, "fSteps"    # F

    .prologue
    const/high16 v5, 0x43960000

    const/high16 v4, 0x41a00000

    .line 146
    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    .line 148
    .local v1, "vTH":Lcom/voovio/voo3d/data/Vector3;
    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v3, 0x43c80000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x432f0000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 149
    :cond_0
    iput v5, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 150
    const/4 v2, 0x0

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 153
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v3, 0x43160000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 154
    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, v5, v2

    .line 156
    .local v0, "fDiff":F
    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 159
    .end local v0    # "fDiff":F
    :cond_2
    return-object v1
.end method

.method public static Voovio_Sweep_VirtualTour()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method private appendVoovio(I)V
    .locals 6
    .param p1, "baSize"    # I

    .prologue
    .line 251
    new-instance v0, Lcom/voovio/sweep/Voovio;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 252
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 253
    iput p1, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    .line 255
    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iget v2, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v3, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v4, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v5, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Voovio;->CreateDefaultFrontal(FIIII)V

    .line 257
    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public static final createSweep([IIII[Lcom/voovio/sweep/Template;[Lcom/voovio/voo3d/data/Vector3;[F)Lcom/voovio/sweep/Sweep;
    .locals 10
    .param p0, "imgSizes"    # [I
    .param p1, "imgWidth"    # I
    .param p2, "imgHeight"    # I
    .param p3, "orientation"    # I
    .param p4, "templates"    # [Lcom/voovio/sweep/Template;
    .param p5, "vectors"    # [Lcom/voovio/voo3d/data/Vector3;
    .param p6, "data"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/voovio/sweep/SweepException;
        }
    .end annotation

    .prologue
    .line 166
    array-length v5, p0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 167
    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Images must be at least 2"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    :cond_0
    array-length v5, p4

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 170
    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Templates must be equal to the number of Photos minus one"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_1
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v0, v5, v6

    .line 174
    .local v0, "aspect":F
    new-instance v3, Lcom/voovio/sweep/Sweep;

    invoke-direct {v3}, Lcom/voovio/sweep/Sweep;-><init>()V

    .line 175
    .local v3, "oSweep":Lcom/voovio/sweep/Sweep;
    iput p3, v3, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    .line 178
    const/high16 v5, 0x3f800000

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    .line 179
    const v5, 0x43aa8000

    const-wide v6, 0x3fdbecde60000000L

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v1, v5, v6

    .line 181
    .local v1, "fF":F
    const/16 v5, 0x400

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 182
    iget v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 183
    const v5, 0x42e52ee0

    const/high16 v6, 0x3f000000

    iget v7, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    .line 192
    .end local v1    # "fF":F
    :goto_0
    iput p1, v3, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 193
    iput p2, v3, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 196
    iget-object v5, v3, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    invoke-virtual {v5, v3}, Lcom/voovio/sweep/MaskGeometry;->CreateDefaultFrontal(Lcom/voovio/sweep/Sweep;)V

    .line 199
    const/4 v5, 0x0

    aget v5, p0, v5

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/Sweep;->append(I)V

    .line 200
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-lt v2, v5, :cond_4

    .line 231
    :cond_2
    const/4 v5, 0x3

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 233
    return-object v3

    .line 186
    .end local v2    # "i":I
    :cond_3
    const/16 v5, 0x2aa

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 187
    iget v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 188
    const/high16 v5, 0x42480000

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    goto :goto_0

    .line 201
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v5, v2, -0x1

    aget-object v5, p4, v5

    if-eqz v5, :cond_2

    .line 203
    add-int/lit8 v5, v2, -0x1

    aget-object v5, p4, v5

    invoke-virtual {v5}, Lcom/voovio/sweep/Template;->isRotation()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 204
    if-eqz p5, :cond_6

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p5, v5

    if-eqz v5, :cond_6

    .line 205
    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget-object v6, p5, v6

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-int/lit8 v7, v2, -0x1

    aget-object v7, p5, v7

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-int/lit8 v8, v2, -0x1

    aget v8, p6, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/voovio/sweep/Sweep;->appendFromTurnMatchingData(IFFF)V

    .line 200
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_6
    if-eqz p6, :cond_7

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    .line 207
    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget v6, p6, v6

    invoke-virtual {v3, v5, v6}, Lcom/voovio/sweep/Sweep;->appendFromAngle(IF)V

    goto :goto_2

    .line 209
    :cond_7
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p4, v5

    if-eqz p6, :cond_8

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_3
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTemplate(ILcom/voovio/sweep/Template;F)V

    goto :goto_2

    :cond_8
    const/high16 v5, 0x7fc00000

    goto :goto_3

    .line 213
    :cond_9
    if-eqz p5, :cond_b

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p5, v5

    if-eqz v5, :cond_b

    .line 214
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p5, v5

    if-eqz p6, :cond_a

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_4
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTranslation(ILcom/voovio/voo3d/data/Vector3;F)V

    .line 217
    const/4 v5, 0x1

    if-le v2, v5, :cond_5

    .line 218
    iget-object v5, v3, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Transition;

    .line 219
    .local v4, "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 220
    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->TranslateRearPortalToVoovioOrigin()V

    goto :goto_2

    .line 214
    .end local v4    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_a
    const/high16 v5, 0x7fc00000

    goto :goto_4

    .line 224
    :cond_b
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p4, v5

    if-eqz p6, :cond_c

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_5
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTemplate(ILcom/voovio/sweep/Template;F)V

    goto :goto_2

    :cond_c
    const/high16 v5, 0x7fc00000

    goto :goto_5
.end method


# virtual methods
.method adjustAngle(F)F
    .locals 12
    .param p1, "fAngle"    # F

    .prologue
    const/high16 v11, 0x3f000000

    .line 341
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v7, v8, :cond_1

    const/high16 v6, 0x44800000

    .line 342
    .local v6, "fWidth":F
    :goto_0
    const-wide v7, 0x4051800000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v2, v11, v7

    .line 343
    .local v2, "fFOVh2":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-ge v7, v8, :cond_0

    .line 344
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 345
    .local v0, "fAspect":F
    float-to-double v7, v0

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 348
    .end local v0    # "fAspect":F
    :cond_0
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000

    add-float v4, v7, v8

    .line 349
    .local v4, "fR1":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    const-wide/high16 v8, 0x3fe0000000000000L

    iget v10, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v1, v7, v8

    .line 350
    .local v1, "fF2":F
    const/high16 v7, -0x3cea0000

    add-float v5, v1, v7

    .line 355
    .local v5, "fR2":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    div-float v7, v6, v7

    div-float v8, v4, v5

    mul-float/2addr v7, v8

    mul-float v3, v7, p1

    .line 360
    .local v3, "fNewAngle":F
    return v3

    .line 341
    .end local v1    # "fF2":F
    .end local v2    # "fFOVh2":F
    .end local v3    # "fNewAngle":F
    .end local v4    # "fR1":F
    .end local v5    # "fR2":F
    .end local v6    # "fWidth":F
    :cond_1
    const/high16 v6, 0x43e30000

    goto :goto_0
.end method

.method append(I)V
    .locals 3
    .param p1, "baSize"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 265
    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 266
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 268
    const/4 v1, 0x2

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 269
    return-void
.end method

.method appendFromAngle(IF)V
    .locals 8
    .param p1, "baSize"    # I
    .param p2, "fAngle"    # F

    .prologue
    const/4 v7, 0x1

    .line 367
    invoke-virtual {p0, p2}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v0

    .line 370
    .local v0, "fNewAngle":F
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 373
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 374
    .local v1, "nVoovios":I
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 375
    .local v3, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    .line 377
    .local v4, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v2, Lcom/voovio/sweep/Transition;

    invoke-direct {v2, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 378
    .local v2, "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v2, v3, v7}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 379
    invoke-virtual {v2, v4, v7}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 381
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/voovio/sweep/Transition;->FromAngle(F)V

    .line 382
    invoke-virtual {v2, p2}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    .line 384
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 388
    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 389
    return-void
.end method

.method appendFromTemplate(ILcom/voovio/sweep/Template;F)V
    .locals 7
    .param p1, "baSize"    # I
    .param p2, "oTemplate"    # Lcom/voovio/sweep/Template;
    .param p3, "fTransitionData"    # F

    .prologue
    const/4 v6, 0x1

    .line 275
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 278
    if-eqz p2, :cond_1

    .line 280
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    .local v0, "nVoovios":I
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 282
    .local v2, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 284
    .local v3, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 285
    .local v1, "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v1, v2, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 286
    invoke-virtual {v1, v3, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 288
    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTemplate(Lcom/voovio/sweep/Template;)V

    .line 290
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 292
    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    .line 297
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 301
    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 303
    .end local v0    # "nVoovios":I
    .end local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v2    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v3    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_1
    return-void

    .line 293
    .restart local v0    # "nVoovios":I
    .restart local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v2    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .restart local v3    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_0

    .line 294
    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    goto :goto_0
.end method

.method appendFromTranslation(ILcom/voovio/voo3d/data/Vector3;F)V
    .locals 7
    .param p1, "baSize"    # I
    .param p2, "vT"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "fTransitionData"    # F

    .prologue
    const/4 v6, 0x1

    .line 309
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 312
    if-eqz p2, :cond_1

    .line 316
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 317
    .local v0, "nVoovios":I
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 318
    .local v2, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 320
    .local v3, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 321
    .local v1, "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v1, v2, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 322
    invoke-virtual {v1, v3, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 324
    invoke-static {p2, p3}, Lcom/voovio/sweep/Sweep;->TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object p2

    .line 325
    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V

    .line 327
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 328
    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    .line 330
    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 334
    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 336
    .end local v0    # "nVoovios":I
    .end local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v2    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v3    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_1
    return-void
.end method

.method appendFromTurnMatchingData(IFFF)V
    .locals 20
    .param p1, "baSize"    # I
    .param p2, "fX"    # F
    .param p3, "fY"    # F
    .param p4, "fAngle"    # F

    .prologue
    .line 395
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x43660000

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 396
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/Sweep;->appendFromAngle(IF)V

    .line 442
    :goto_0
    return-void

    .line 401
    :cond_0
    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v10, v15, v16

    .line 402
    .local v10, "fW2":F
    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const-wide/high16 v16, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    div-float v5, v15, v16

    .line 404
    .local v5, "fF":F
    const/high16 v15, -0x3cea0000

    add-float v4, v5, v15

    .line 405
    .local v4, "fD":F
    div-float v15, v10, v4

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    double-to-float v6, v15

    .line 406
    .local v6, "fHalfAngle":F
    mul-float v15, v10, v10

    mul-float v16, v4, v4

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v8, v15

    .line 408
    .local v8, "fRadius":F
    const/high16 v15, 0x40000000

    mul-float/2addr v15, v6

    mul-float/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v15, v16

    .line 411
    .local v9, "fScale":F
    mul-float v15, v9, p2

    div-float/2addr v15, v8

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v7, v15

    .line 415
    .local v7, "fNewAngle":F
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v3, v15

    .line 417
    .local v3, "fAngleDegAdjusted":F
    mul-float v15, v7, v3

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_1

    sub-float v15, v7, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41a00000

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    .line 418
    :cond_1
    move v7, v3

    .line 419
    const/16 p3, 0x0

    .line 423
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 427
    .local v11, "nVoovios":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voovio/sweep/Voovio;

    .line 428
    .local v13, "oVoovio0":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Voovio;

    .line 430
    .local v14, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v12, Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 431
    .local v12, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v15, 0x1

    invoke-virtual {v12, v13, v15}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 432
    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    .line 434
    neg-float v15, v9

    mul-float v15, v15, p3

    invoke-virtual {v12, v7, v15}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    .line 435
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    .line 437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v13}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 441
    invoke-virtual {v14}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    goto/16 :goto_0
.end method

.method public clone()Lcom/voovio/sweep/Sweep;
    .locals 9

    .prologue
    .line 96
    new-instance v2, Lcom/voovio/sweep/Sweep;

    invoke-direct {v2}, Lcom/voovio/sweep/Sweep;-><init>()V

    .line 98
    .local v2, "oSweep":Lcom/voovio/sweep/Sweep;
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    .line 100
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 101
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 103
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 104
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 105
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    .line 107
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    .line 109
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    .line 111
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 140
    return-object v2

    .line 115
    .end local v1    # "len":I
    .end local v3    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v7}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v4

    .line 116
    .local v4, "oVoovio":Lcom/voovio/sweep/Voovio;
    iput-object v2, v4, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 118
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v4    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .restart local v1    # "len":I
    .restart local v3    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_1
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Transition;

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v3

    .line 126
    iput-object v2, v3, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 128
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 129
    .local v5, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    .line 131
    .local v6, "oVoovio1":Lcom/voovio/sweep/Voovio;
    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 135
    iget-object v7, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x1

    aput-object v3, v7, v8

    .line 137
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v0

    return-object v0
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v0, v1, :cond_0

    const-string v0, "horizontal"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vertical"

    goto :goto_0
.end method

.method public getImageAspectRatio()F
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    return v0
.end method

.method getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "oCurrentVoovio"    # Lcom/voovio/sweep/Voovio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voovio/sweep/Voovio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p2, "aSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/voovio/sweep/Voovio;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 450
    const/4 v6, 0x0

    iput v6, p1, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 451
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 455
    .local v4, "nVoovios":I
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget v7, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 456
    .local v2, "nLimit":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, v2, :cond_0

    .line 471
    return-void

    .line 457
    :cond_0
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v1, v6, v0

    .line 458
    .local v1, "nLeft":I
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int v3, v6, v0

    .line 460
    .local v3, "nRight":I
    if-ge v3, v4, :cond_1

    .line 461
    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 462
    .local v5, "oVoovio":Lcom/voovio/sweep/Voovio;
    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 463
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_1
    if-ltz v1, :cond_2

    .line 466
    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 467
    .restart local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 468
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNodesInfo()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Sweep$NodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 512
    .local v9, "nTransitions":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v2, "aNodeInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/voovio/sweep/Sweep$NodeInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-lt v8, v0, :cond_0

    .line 516
    new-instance v10, Lcom/voovio/geometry/Matrix;

    invoke-direct {v10}, Lcom/voovio/geometry/Matrix;-><init>()V

    .line 518
    .local v10, "oM":Lcom/voovio/geometry/Matrix;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    .line 520
    .local v16, "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    const/4 v14, 0x0

    .local v14, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v13, 0x0

    .line 521
    .local v13, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/high16 v4, 0x42c80000

    .line 524
    .local v4, "fD":F
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    .line 565
    invoke-static/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 567
    return-object v2

    .line 514
    .end local v4    # "fD":F
    .end local v10    # "oM":Lcom/voovio/geometry/Matrix;
    .end local v13    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .end local v14    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v16    # "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    :cond_0
    new-instance v17, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 525
    .restart local v4    # "fD":F
    .restart local v10    # "oM":Lcom/voovio/geometry/Matrix;
    .restart local v13    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .restart local v14    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v16    # "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "oTransition":Lcom/voovio/sweep/Transition;
    check-cast v14, Lcom/voovio/sweep/Transition;

    .line 527
    .restart local v14    # "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voovio/sweep/Sweep$NodeInfo;

    .line 528
    .local v11, "oNodeInfo_i":Lcom/voovio/sweep/Sweep$NodeInfo;
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/voovio/sweep/Sweep$NodeInfo;

    .line 531
    .local v12, "oNodeInfo_i1":Lcom/voovio/sweep/Sweep$NodeInfo;
    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v3

    .line 533
    .local v3, "fAngle":F
    invoke-virtual {v10}, Lcom/voovio/geometry/Matrix;->identity()V

    .line 534
    invoke-virtual {v10, v3}, Lcom/voovio/geometry/Matrix;->rotate(F)V

    .line 536
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-nez v17, :cond_4

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    .line 537
    iput v3, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    .line 539
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    .line 540
    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v17

    if-nez v17, :cond_2

    .line 541
    if-lez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/voovio/sweep/Transition;

    move-object/from16 v13, v17

    .line 542
    :goto_3
    if-nez v13, :cond_6

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    .line 543
    .local v15, "ptO":Lcom/voovio/voo3d/data/Vector3;
    :goto_4
    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 544
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 546
    invoke-virtual/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    .line 549
    .end local v15    # "ptO":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/voovio/geometry/Matrix;->transformPoint(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)V

    .line 551
    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v17, v0

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v18, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v4

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    .line 552
    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v17, v0

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v18, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v4

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    .line 555
    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    sub-float v5, v17, v18

    .line 556
    .local v5, "fDeltaX":F
    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v17, v0

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v18, v0

    sub-float v6, v17, v18

    .line 558
    .local v6, "fDeltaZ":F
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-nez v17, :cond_3

    const/16 v17, 0x0

    cmpl-float v17, v6, v17

    if-eqz v17, :cond_3

    .line 559
    const/high16 v17, 0x3f000000

    mul-float v17, v17, v4

    mul-float v17, v17, v6

    div-float v7, v17, v5

    .line 560
    .local v7, "fLateral":F
    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v18, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v7

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    .line 561
    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v18, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    .line 524
    .end local v7    # "fLateral":F
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 536
    .end local v5    # "fDeltaX":F
    .end local v6    # "fDeltaZ":F
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 541
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 542
    :cond_6
    iget-object v0, v13, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_4
.end method

.method public getTransition(I)Lcom/voovio/sweep/Transition;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Transition;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSEFFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "strSEFFile"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
