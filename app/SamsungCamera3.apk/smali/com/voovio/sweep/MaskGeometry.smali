.class Lcom/voovio/sweep/MaskGeometry;
.super Ljava/lang/Object;
.source "MaskGeometry.java"


# static fields
.field private static SLICES:I


# instance fields
.field private m_aAlphas:[F

.field private m_aColors:[F

.field private m_fbColors:Ljava/nio/FloatBuffer;

.field private m_fbTexCoords:Ljava/nio/FloatBuffer;

.field private m_fbVertices:Ljava/nio/FloatBuffer;

.field private m_nGradientWidth:I

.field private m_nIndices:I

.field private m_sbIndices:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x400

    sput v0, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v2, 0x28

    iput v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    .line 37
    iget v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float v0, v2, v3

    .line 39
    .local v0, "fM":F
    iget v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_aAlphas:[F

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    if-lt v1, v2, :cond_0

    .line 43
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_aAlphas:[F

    const v3, -0x42b33333

    const v4, 0x3f8ccccd

    const-wide/high16 v5, 0x3ff0000000000000L

    const-wide v7, 0x4005bf0a8b145769L

    const-wide v9, -0x403ccccccccccccdL

    int-to-float v11, v1

    sub-float/2addr v11, v0

    float-to-double v11, v11

    mul-double/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CreateDefaultFrontal(Lcom/voovio/sweep/Sweep;)V
    .locals 37
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    .line 48
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v27, v0

    .line 49
    .local v27, "nWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v23, v0

    .line 50
    .local v23, "nHeight":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v25, v0

    .line 51
    .local v25, "nImageWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v24, v0

    .line 54
    .local v24, "nImageHeight":I
    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v32, v32, 0x1

    mul-int/lit8 v26, v32, 0x2

    .line 56
    .local v26, "nTexPoints":I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    .line 57
    .local v22, "m_aTextureVertex":[Lcom/voovio/voo3d/data/Vector3;
    move/from16 v0, v26

    new-array v0, v0, [Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    .line 59
    .local v21, "m_aTextureCoords":[Lcom/voovio/geometry/Point;
    const v10, 0x3dcccccd

    .line 60
    .local v10, "fFactor":F
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000

    div-float v15, v32, v33

    .line 61
    .local v15, "fW2":F
    const/high16 v32, 0x3f800000

    const/high16 v33, 0x40000000

    mul-float v33, v33, v10

    add-float v32, v32, v33

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    const/high16 v33, 0x40000000

    div-float v11, v32, v33

    .line 62
    .local v11, "fH2":F
    const/high16 v32, 0x3f000000

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v33, v0

    const v34, 0x3c8efa35

    mul-float v33, v33, v34

    const/high16 v34, 0x40000000

    div-float v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->tan(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    div-float v9, v32, v33

    .line 64
    .local v9, "fF":F
    move v7, v9

    .line 65
    .local v7, "fD":F
    div-float v32, v15, v7

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->atan(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v12, v0

    .line 66
    .local v12, "fHalfAngle":F
    mul-float v32, v15, v15

    mul-float v33, v7, v7

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v13, v0

    .line 68
    .local v13, "fRadius":F
    const/16 v18, 0x0

    .line 69
    .local v18, "index":I
    neg-float v14, v12

    .local v14, "fTheta":F
    const/high16 v32, 0x40000000

    mul-float v32, v32, v12

    sget v33, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v8, v32, v33

    .line 73
    .local v8, "fDeltaTheta":F
    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    new-array v4, v0, [F

    .line 74
    .local v4, "aH":[F
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v16

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 81
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_1
    const/16 v32, 0x2

    move/from16 v0, v20

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 115
    mul-int/lit8 v32, v26, 0x3

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 116
    .local v30, "vertices":[F
    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    .line 122
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v29

    .line 123
    .local v29, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 130
    mul-int/lit8 v32, v26, 0x2

    move/from16 v0, v32

    new-array v6, v0, [F

    .line 131
    .local v6, "coords":[F
    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_e

    .line 136
    array-length v0, v6

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v28

    .line 137
    .local v28, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 144
    mul-int/lit8 v32, v26, 0x4

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    .line 145
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_f

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 149
    .local v5, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 156
    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    mul-int/lit8 v32, v32, 0x6

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [S

    move-object/from16 v19, v0

    .line 159
    .local v19, "indices":[S
    const/16 v18, 0x0

    .line 160
    const/16 v16, 0x0

    :goto_5
    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_10

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 173
    .local v17, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 178
    return-void

    .line 75
    .end local v5    # "cbb":Ljava/nio/ByteBuffer;
    .end local v6    # "coords":[F
    .end local v17    # "ibb":Ljava/nio/ByteBuffer;
    .end local v19    # "indices":[S
    .end local v20    # "j":I
    .end local v28    # "tbb":Ljava/nio/ByteBuffer;
    .end local v29    # "vbb":Ljava/nio/ByteBuffer;
    .end local v30    # "vertices":[F
    :cond_0
    float-to-double v0, v14

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v13, v32

    .line 76
    .local v31, "z":F
    mul-float v32, v11, v13

    mul-float v33, v31, v31

    mul-float v34, v7, v7

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    aput v32, v4, v16

    .line 78
    add-float/2addr v14, v8

    .line 74
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 83
    .end local v31    # "z":F
    .restart local v20    # "j":I
    :cond_1
    neg-float v14, v12

    .line 85
    const/16 v16, 0x0

    :goto_6
    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v16

    move/from16 v1, v32

    if-le v0, v1, :cond_2

    .line 81
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 87
    :cond_2
    new-instance v33, Lcom/voovio/voo3d/data/Vector3;

    float-to-double v0, v14

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v13

    sub-float v34, v32, v7

    .line 88
    if-nez v20, :cond_5

    aget v32, v4, v16

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    .line 89
    :goto_7
    float-to-double v0, v14

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v13

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 87
    aput-object v33, v22, v18

    .line 91
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 92
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v32, v0

    if-nez v32, :cond_7

    .line 93
    :cond_3
    new-instance v33, Lcom/voovio/geometry/Point;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v32, v32, v34

    sget v34, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v34, v32, v34

    .line 94
    if-nez v20, :cond_6

    const/high16 v32, 0x3f800000

    add-float v32, v32, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v32, v32, v35

    :goto_8
    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 93
    aput-object v33, v21, v18

    .line 109
    :cond_4
    :goto_9
    add-int/lit8 v18, v18, 0x1

    .line 110
    add-float/2addr v14, v8

    .line 85
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 88
    :cond_5
    aget v32, v4, v16

    goto :goto_7

    .line 94
    :cond_6
    neg-float v0, v10

    move/from16 v32, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v32, v32, v35

    goto :goto_8

    .line 96
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 97
    new-instance v33, Lcom/voovio/geometry/Point;

    if-nez v20, :cond_8

    const/high16 v32, 0x3f800000

    add-float v32, v32, v10

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v32, v32, v34

    .line 98
    :goto_a
    sget v34, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    sub-int v34, v34, v16

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    sget v35, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move-object/from16 v0, v33

    move/from16 v1, v32

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 97
    aput-object v33, v21, v18

    goto :goto_9

    :cond_8
    neg-float v0, v10

    move/from16 v32, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v32, v32, v34

    goto :goto_a

    .line 100
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 101
    new-instance v33, Lcom/voovio/geometry/Point;

    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    sub-int v32, v32, v16

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v32, v32, v34

    sget v34, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v34, v32, v34

    .line 102
    if-nez v20, :cond_a

    neg-float v0, v10

    move/from16 v32, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v32, v32, v35

    :goto_b
    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 101
    aput-object v33, v21, v18

    goto/16 :goto_9

    .line 102
    :cond_a
    const/high16 v32, 0x3f800000

    add-float v32, v32, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v32, v32, v35

    goto :goto_b

    .line 104
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v32, v0

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 105
    new-instance v33, Lcom/voovio/geometry/Point;

    if-nez v20, :cond_c

    neg-float v0, v10

    move/from16 v32, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v32, v32, v34

    .line 106
    :goto_c
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    sget v35, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move-object/from16 v0, v33

    move/from16 v1, v32

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 105
    aput-object v33, v21, v18

    goto/16 :goto_9

    :cond_c
    const/high16 v32, 0x3f800000

    add-float v32, v32, v10

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v32, v32, v34

    goto :goto_c

    .line 117
    .restart local v30    # "vertices":[F
    :cond_d
    aget-object v32, v22, v16

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v32, v0

    aput v32, v30, v20

    .line 118
    add-int/lit8 v32, v20, 0x1

    aget-object v33, v22, v16

    move-object/from16 v0, v33

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v33, v0

    aput v33, v30, v32

    .line 119
    add-int/lit8 v32, v20, 0x2

    aget-object v33, v22, v16

    move-object/from16 v0, v33

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v33, v0

    aput v33, v30, v32

    .line 116
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v20, v20, 0x3

    goto/16 :goto_2

    .line 132
    .restart local v6    # "coords":[F
    .restart local v29    # "vbb":Ljava/nio/ByteBuffer;
    :cond_e
    aget-object v32, v21, v16

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v32, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    aput v32, v6, v20

    .line 133
    add-int/lit8 v32, v20, 0x1

    aget-object v33, v21, v16

    move-object/from16 v0, v33

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v33, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    aput v33, v6, v32

    .line 131
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_3

    .line 146
    .restart local v28    # "tbb":Ljava/nio/ByteBuffer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v32, v0

    const/high16 v33, 0x3f800000

    aput v33, v32, v16

    .line 145
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 161
    .restart local v5    # "cbb":Ljava/nio/ByteBuffer;
    .restart local v19    # "indices":[S
    :cond_10
    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v19, v18

    .line 162
    add-int/lit8 v18, v18, 0x1

    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v32, v32, 0x1

    add-int v32, v32, v16

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v19, v18

    .line 163
    add-int/lit8 v18, v18, 0x1

    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v32, v32, 0x1

    add-int v32, v32, v16

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v19, v18

    .line 165
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v19, v18

    .line 166
    add-int/lit8 v18, v18, 0x1

    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v32, v32, 0x1

    add-int v32, v32, v16

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v19, v18

    .line 167
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v32, v16, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput-short v32, v19, v18

    .line 169
    add-int/lit8 v18, v18, 0x1

    .line 160
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v6, 0x8076

    const v5, 0x8074

    const/4 v4, 0x4

    const/16 v3, 0x1406

    const/4 v2, 0x0

    .line 306
    invoke-static {v5}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    .line 307
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    .line 308
    invoke-static {v6}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    .line 310
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 311
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 312
    iget-object v0, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    invoke-static {v4, v3, v2, v0}, Landroid/opengl/GLES11;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 314
    iget v0, p0, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    const/16 v1, 0x1403

    iget-object v2, p0, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES11;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 316
    invoke-static {v5}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    .line 317
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    .line 318
    invoke-static {v6}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    .line 319
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FI)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "fAlpha"    # F
    .param p3, "rotations"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 183
    sget v9, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    and-int/2addr v9, p3

    if-lez v9, :cond_0

    move v0, v7

    .line 184
    .local v0, "bHasRotationLeft":Z
    :goto_0
    sget v9, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    and-int/2addr v9, p3

    if-lez v9, :cond_1

    move v1, v7

    .line 189
    .local v1, "bHasRotationRight":Z
    :goto_1
    sget v7, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    iget v9, p0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    sub-int v6, v7, v9

    .line 190
    .local v6, "r":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x3

    .local v4, "j":I
    sget v7, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v7, 0x3

    .local v5, "k":I
    :goto_2
    sget v7, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v7, v7, 0x1

    if-lt v3, v7, :cond_2

    .line 201
    iget-object v7, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 202
    iget-object v7, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 207
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/MaskGeometry;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 208
    return-void

    .end local v0    # "bHasRotationLeft":Z
    .end local v1    # "bHasRotationRight":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "r":I
    :cond_0
    move v0, v8

    .line 183
    goto :goto_0

    .restart local v0    # "bHasRotationLeft":Z
    :cond_1
    move v1, v8

    .line 184
    goto :goto_1

    .line 191
    .restart local v1    # "bHasRotationRight":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "r":I
    :cond_2
    iget v7, p0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    if-ge v3, v7, :cond_3

    if-eqz v0, :cond_3

    .line 192
    iget-object v7, p0, Lcom/voovio/sweep/MaskGeometry;->m_aAlphas:[F

    aget v7, v7, v3

    mul-float v2, p2, v7

    .line 198
    .local v2, "fNewAlpha":F
    :goto_3
    iget-object v7, p0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    iget-object v9, p0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    aput v2, v9, v5

    aput v2, v7, v4

    .line 190
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 193
    .end local v2    # "fNewAlpha":F
    :cond_3
    if-le v3, v6, :cond_4

    if-eqz v1, :cond_4

    .line 194
    iget-object v7, p0, Lcom/voovio/sweep/MaskGeometry;->m_aAlphas:[F

    sget v9, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    sub-int/2addr v9, v3

    aget v7, v7, v9

    mul-float v2, p2, v7

    .restart local v2    # "fNewAlpha":F
    goto :goto_3

    .line 196
    .end local v2    # "fNewAlpha":F
    :cond_4
    move v2, p2

    .restart local v2    # "fNewAlpha":F
    goto :goto_3
.end method

.method public drawRotation(Ljavax/microedition/khronos/opengles/GL10;FILcom/voovio/sweep/Rotation;)V
    .locals 19
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "fFactor"    # F
    .param p3, "rotations"    # I
    .param p4, "oRotation"    # Lcom/voovio/sweep/Rotation;

    .prologue
    .line 213
    sget v16, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    and-int v16, v16, p3

    if-lez v16, :cond_0

    const/4 v2, 0x1

    .line 214
    .local v2, "bHasRotationLeft":Z
    :goto_0
    sget v16, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    and-int v16, v16, p3

    if-lez v16, :cond_1

    const/4 v3, 0x1

    .line 218
    .local v3, "bHasRotationRight":Z
    :goto_1
    const/high16 v7, 0x3f000000

    .local v7, "fFactor1":F
    const/high16 v8, 0x3f000000

    .line 220
    .local v8, "fFactor2":F
    move-object/from16 v0, p4

    iget v0, v0, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000

    cmpl-float v16, v16, v17

    if-nez v16, :cond_4

    .line 221
    sget v16, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p4

    iget v0, v0, Lcom/voovio/sweep/Rotation;->m_fOverlapping:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    sub-int v13, v16, v17

    .line 222
    .local v13, "p1":I
    sget v16, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v14, v16, 0x1

    .line 224
    .local v14, "p2":I
    cmpg-float v16, p2, v7

    if-gtz v16, :cond_2

    .line 225
    const/high16 v5, 0x3f800000

    .line 226
    .local v5, "fAlpha1":F
    const/high16 v16, 0x3f800000

    div-float v17, p2, v7

    sub-float v6, v16, v17

    .line 283
    .local v6, "fAlpha2":F
    :goto_2
    sget v16, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    move/from16 v17, v0

    sub-int v15, v16, v17

    .line 284
    .local v15, "r":I
    const/4 v10, 0x0

    .local v10, "i":I
    const/4 v11, 0x3

    .local v11, "j":I
    sget v16, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v16, v16, 0x1

    mul-int/lit8 v16, v16, 0x4

    add-int/lit8 v12, v16, 0x3

    .local v12, "k":I
    :goto_3
    sget v16, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-lt v10, v0, :cond_7

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbColors:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 300
    invoke-virtual/range {p0 .. p1}, Lcom/voovio/sweep/MaskGeometry;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 301
    return-void

    .line 213
    .end local v2    # "bHasRotationLeft":Z
    .end local v3    # "bHasRotationRight":Z
    .end local v5    # "fAlpha1":F
    .end local v6    # "fAlpha2":F
    .end local v7    # "fFactor1":F
    .end local v8    # "fFactor2":F
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v13    # "p1":I
    .end local v14    # "p2":I
    .end local v15    # "r":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    .restart local v2    # "bHasRotationLeft":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 228
    .restart local v3    # "bHasRotationRight":Z
    .restart local v7    # "fFactor1":F
    .restart local v8    # "fFactor2":F
    .restart local v13    # "p1":I
    .restart local v14    # "p2":I
    :cond_2
    cmpl-float v16, p2, v7

    if-lez v16, :cond_3

    cmpg-float v16, p2, v8

    if-gtz v16, :cond_3

    .line 229
    const/high16 v5, 0x3f800000

    .line 230
    .restart local v5    # "fAlpha1":F
    const/4 v6, 0x0

    .line 231
    .restart local v6    # "fAlpha2":F
    goto :goto_2

    .line 233
    .end local v5    # "fAlpha1":F
    .end local v6    # "fAlpha2":F
    :cond_3
    const/high16 v16, 0x3f800000

    sub-float v17, p2, v8

    const/high16 v18, 0x3f800000

    sub-float v18, v18, v8

    div-float v17, v17, v18

    sub-float v5, v16, v17

    .line 234
    .restart local v5    # "fAlpha1":F
    const/4 v6, 0x0

    .line 236
    .restart local v6    # "fAlpha2":F
    goto :goto_2

    .line 238
    .end local v5    # "fAlpha1":F
    .end local v6    # "fAlpha2":F
    .end local v13    # "p1":I
    .end local v14    # "p2":I
    :cond_4
    const/4 v13, 0x0

    .line 239
    .restart local v13    # "p1":I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/voovio/sweep/Rotation;->m_fOverlapping:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v14, v0

    .line 241
    .restart local v14    # "p2":I
    cmpg-float v16, p2, v7

    if-gtz v16, :cond_5

    .line 242
    const/high16 v16, 0x3f800000

    div-float v17, p2, v7

    sub-float v5, v16, v17

    .line 243
    .restart local v5    # "fAlpha1":F
    const/high16 v6, 0x3f800000

    .line 244
    .restart local v6    # "fAlpha2":F
    goto :goto_2

    .line 245
    .end local v5    # "fAlpha1":F
    .end local v6    # "fAlpha2":F
    :cond_5
    cmpl-float v16, p2, v7

    if-lez v16, :cond_6

    cmpg-float v16, p2, v8

    if-gtz v16, :cond_6

    .line 246
    const/4 v5, 0x0

    .line 247
    .restart local v5    # "fAlpha1":F
    const/high16 v6, 0x3f800000

    .line 248
    .restart local v6    # "fAlpha2":F
    goto/16 :goto_2

    .line 250
    .end local v5    # "fAlpha1":F
    .end local v6    # "fAlpha2":F
    :cond_6
    const/4 v5, 0x0

    .line 251
    .restart local v5    # "fAlpha1":F
    const/high16 v16, 0x3f800000

    sub-float v17, p2, v8

    const/high16 v18, 0x3f800000

    sub-float v18, v18, v8

    div-float v17, v17, v18

    sub-float v6, v16, v17

    .restart local v6    # "fAlpha2":F
    goto/16 :goto_2

    .line 285
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "k":I
    .restart local v15    # "r":I
    :cond_7
    if-lt v10, v13, :cond_8

    if-le v10, v14, :cond_9

    :cond_8
    const/high16 v4, 0x3f800000

    .line 287
    .local v4, "fAlpha":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_nGradientWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    if-eqz v2, :cond_a

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aAlphas:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    mul-float v9, v4, v16

    .line 294
    .local v9, "fNewAlpha":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aColors:[F

    move-object/from16 v17, v0

    aput v9, v17, v12

    aput v9, v16, v11

    .line 284
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v12, v12, 0x4

    goto/16 :goto_3

    .line 285
    .end local v4    # "fAlpha":F
    .end local v9    # "fNewAlpha":F
    :cond_9
    sub-float v16, v6, v5

    sub-int v17, v10, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-int v17, v14, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    add-float v4, v5, v16

    goto :goto_4

    .line 289
    .restart local v4    # "fAlpha":F
    :cond_a
    if-le v10, v15, :cond_b

    if-eqz v3, :cond_b

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_aAlphas:[F

    move-object/from16 v16, v0

    sget v17, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    sub-int v17, v17, v10

    aget v16, v16, v17

    mul-float v9, v4, v16

    .restart local v9    # "fNewAlpha":F
    goto :goto_5

    .line 292
    .end local v9    # "fNewAlpha":F
    :cond_b
    move v9, v4

    .restart local v9    # "fNewAlpha":F
    goto :goto_5
.end method
