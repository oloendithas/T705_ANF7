.class public Lcom/voovio/voo3d/geometry/Triangle3D;
.super Ljava/lang/Object;
.source "Triangle3D.java"


# instance fields
.field public m_aEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Edge3D;",
            ">;"
        }
    .end annotation
.end field

.field public m_aVertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Vertex3D;",
            ">;"
        }
    .end annotation
.end field

.field public m_fIDist:F

.field public m_fd:F

.field public m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

.field public m_ptI:Lcom/voovio/voo3d/data/Vector3;

.field public m_vN:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 13
    iput v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    .line 16
    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    .line 17
    iput v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fIDist:F

    .line 20
    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public AddVertex(Lcom/voovio/voo3d/geometry/Vertex3D;)V
    .locals 8
    .param p1, "v"    # Lcom/voovio/voo3d/geometry/Vertex3D;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 35
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 39
    new-instance v0, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v4, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v0, v3, v4}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    .line 40
    .local v0, "oEdge0":Lcom/voovio/voo3d/geometry/Edge3D;
    new-instance v1, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v4, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v1, v3, v4}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    .line 41
    .local v1, "oEdge1":Lcom/voovio/voo3d/geometry/Edge3D;
    new-instance v2, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v4, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v2, v3, v4}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    .line 43
    .local v2, "oEdge2":Lcom/voovio/voo3d/geometry/Edge3D;
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v0    # "oEdge0":Lcom/voovio/voo3d/geometry/Edge3D;
    .end local v1    # "oEdge1":Lcom/voovio/voo3d/geometry/Edge3D;
    .end local v2    # "oEdge2":Lcom/voovio/voo3d/geometry/Edge3D;
    :cond_0
    return-void
.end method

.method public GetPointD2(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 24
    .param p1, "ptP"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    .line 113
    .local v17, "kDiff":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/voovio/voo3d/data/Vector3;

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    .line 114
    .local v18, "kEdge0":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/voovio/voo3d/data/Vector3;

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    .line 115
    .local v19, "kEdge1":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v2

    .line 116
    .local v2, "fA00":F
    invoke-virtual/range {v18 .. v19}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    .line 117
    .local v3, "fA01":F
    invoke-virtual/range {v19 .. v19}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v4

    .line 118
    .local v4, "fA11":F
    invoke-virtual/range {v17 .. v18}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    .line 119
    .local v5, "fB0":F
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    .line 120
    .local v6, "fB1":F
    invoke-virtual/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3;->getSquaredNorm()F

    move-result v7

    .line 121
    .local v7, "fC":F
    mul-float v20, v2, v4

    mul-float v21, v3, v3

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 122
    .local v9, "fDet":F
    mul-float v20, v3, v6

    mul-float v21, v4, v5

    sub-float v12, v20, v21

    .line 123
    .local v12, "fS":F
    mul-float v20, v3, v5

    mul-float v21, v2, v6

    sub-float v14, v20, v21

    .line 127
    .local v14, "fT":F
    add-float v20, v12, v14

    cmpg-float v20, v20, v9

    if-gtz v20, :cond_c

    .line 129
    const/16 v20, 0x0

    cmpg-float v20, v12, v20

    if-gez v20, :cond_8

    .line 131
    const/16 v20, 0x0

    cmpg-float v20, v14, v20

    if-gez v20, :cond_5

    .line 133
    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_2

    .line 135
    const/4 v14, 0x0

    .line 136
    neg-float v0, v5

    move/from16 v20, v0

    cmpl-float v20, v20, v2

    if-ltz v20, :cond_1

    .line 138
    const/high16 v12, 0x3f800000

    .line 139
    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    .line 330
    .local v13, "fSqrDistance":F
    :goto_0
    const/16 v20, 0x0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_0

    .line 331
    const/4 v13, 0x0

    .line 333
    :cond_0
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptClosestPoint:Lcom/voovio/voo3d/data/Vector3;

    .line 336
    return v13

    .line 143
    .end local v13    # "fSqrDistance":F
    :cond_1
    neg-float v0, v5

    move/from16 v20, v0

    div-float v12, v20, v2

    .line 144
    mul-float v20, v5, v12

    add-float v13, v20, v7

    .line 146
    .restart local v13    # "fSqrDistance":F
    goto :goto_0

    .line 149
    .end local v13    # "fSqrDistance":F
    :cond_2
    const/4 v12, 0x0

    .line 150
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-ltz v20, :cond_3

    .line 152
    const/4 v14, 0x0

    .line 153
    move v13, v7

    .line 154
    .restart local v13    # "fSqrDistance":F
    goto :goto_0

    .line 155
    .end local v13    # "fSqrDistance":F
    :cond_3
    neg-float v0, v6

    move/from16 v20, v0

    cmpl-float v20, v20, v4

    if-ltz v20, :cond_4

    .line 157
    const/high16 v14, 0x3f800000

    .line 158
    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    .line 159
    .restart local v13    # "fSqrDistance":F
    goto :goto_0

    .line 162
    .end local v13    # "fSqrDistance":F
    :cond_4
    neg-float v0, v6

    move/from16 v20, v0

    div-float v14, v20, v4

    .line 163
    mul-float v20, v6, v14

    add-float v13, v20, v7

    .line 166
    .restart local v13    # "fSqrDistance":F
    goto :goto_0

    .line 169
    .end local v13    # "fSqrDistance":F
    :cond_5
    const/4 v12, 0x0

    .line 170
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-ltz v20, :cond_6

    .line 172
    const/4 v14, 0x0

    .line 173
    move v13, v7

    .line 174
    .restart local v13    # "fSqrDistance":F
    goto :goto_0

    .line 175
    .end local v13    # "fSqrDistance":F
    :cond_6
    neg-float v0, v6

    move/from16 v20, v0

    cmpl-float v20, v20, v4

    if-ltz v20, :cond_7

    .line 177
    const/high16 v14, 0x3f800000

    .line 178
    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    .line 179
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 182
    .end local v13    # "fSqrDistance":F
    :cond_7
    neg-float v0, v6

    move/from16 v20, v0

    div-float v14, v20, v4

    .line 183
    mul-float v20, v6, v14

    add-float v13, v20, v7

    .line 186
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 187
    .end local v13    # "fSqrDistance":F
    :cond_8
    float-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_b

    .line 189
    const/4 v14, 0x0

    .line 190
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_9

    .line 192
    const/4 v12, 0x0

    .line 193
    move v13, v7

    .line 194
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 195
    .end local v13    # "fSqrDistance":F
    :cond_9
    neg-float v0, v5

    move/from16 v20, v0

    cmpl-float v20, v20, v2

    if-ltz v20, :cond_a

    .line 197
    const/high16 v12, 0x3f800000

    .line 198
    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    .line 199
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 202
    .end local v13    # "fSqrDistance":F
    :cond_a
    neg-float v0, v5

    move/from16 v20, v0

    div-float v12, v20, v2

    .line 203
    mul-float v20, v5, v12

    add-float v13, v20, v7

    .line 205
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 209
    .end local v13    # "fSqrDistance":F
    :cond_b
    const/high16 v20, 0x3f800000

    div-float v10, v20, v9

    .line 210
    .local v10, "fInvDet":F
    mul-float/2addr v12, v10

    .line 211
    mul-float/2addr v14, v10

    .line 212
    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    .line 214
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 219
    .end local v10    # "fInvDet":F
    .end local v13    # "fSqrDistance":F
    :cond_c
    float-to-double v0, v12

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_11

    .line 221
    add-float v15, v3, v5

    .line 222
    .local v15, "fTmp0":F
    add-float v16, v4, v6

    .line 223
    .local v16, "fTmp1":F
    cmpl-float v20, v16, v15

    if-lez v20, :cond_e

    .line 225
    sub-float v11, v16, v15

    .line 226
    .local v11, "fNumer":F
    const/high16 v20, 0x40000000

    mul-float v20, v20, v3

    sub-float v20, v2, v20

    add-float v8, v20, v4

    .line 227
    .local v8, "fDenom":F
    cmpl-float v20, v11, v8

    if-ltz v20, :cond_d

    .line 229
    const/high16 v12, 0x3f800000

    .line 230
    const/4 v14, 0x0

    .line 231
    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    .line 232
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 235
    .end local v13    # "fSqrDistance":F
    :cond_d
    div-float v12, v11, v8

    .line 236
    const/high16 v20, 0x3f800000

    sub-float v14, v20, v12

    .line 237
    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    .line 239
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 242
    .end local v8    # "fDenom":F
    .end local v11    # "fNumer":F
    .end local v13    # "fSqrDistance":F
    :cond_e
    const/4 v12, 0x0

    .line 243
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_f

    .line 245
    const/high16 v14, 0x3f800000

    .line 246
    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    .line 247
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 248
    .end local v13    # "fSqrDistance":F
    :cond_f
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-ltz v20, :cond_10

    .line 250
    const/4 v14, 0x0

    .line 251
    move v13, v7

    .line 252
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 255
    .end local v13    # "fSqrDistance":F
    :cond_10
    neg-float v0, v6

    move/from16 v20, v0

    div-float v14, v20, v4

    .line 256
    mul-float v20, v6, v14

    add-float v13, v20, v7

    .line 259
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 260
    .end local v13    # "fSqrDistance":F
    .end local v15    # "fTmp0":F
    .end local v16    # "fTmp1":F
    :cond_11
    float-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_16

    .line 262
    add-float v15, v3, v6

    .line 263
    .restart local v15    # "fTmp0":F
    add-float v16, v2, v5

    .line 264
    .restart local v16    # "fTmp1":F
    cmpl-float v20, v16, v15

    if-lez v20, :cond_13

    .line 266
    sub-float v11, v16, v15

    .line 267
    .restart local v11    # "fNumer":F
    const/high16 v20, 0x40000000

    mul-float v20, v20, v3

    sub-float v20, v2, v20

    add-float v8, v20, v4

    .line 268
    .restart local v8    # "fDenom":F
    cmpl-float v20, v11, v8

    if-ltz v20, :cond_12

    .line 270
    const/high16 v14, 0x3f800000

    .line 271
    const/4 v12, 0x0

    .line 272
    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    .line 273
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 276
    .end local v13    # "fSqrDistance":F
    :cond_12
    div-float v14, v11, v8

    .line 277
    const/high16 v20, 0x3f800000

    sub-float v12, v20, v14

    .line 278
    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    .line 280
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 283
    .end local v8    # "fDenom":F
    .end local v11    # "fNumer":F
    .end local v13    # "fSqrDistance":F
    :cond_13
    const/4 v14, 0x0

    .line 284
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_14

    .line 286
    const/high16 v12, 0x3f800000

    .line 287
    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    .line 288
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 289
    .end local v13    # "fSqrDistance":F
    :cond_14
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_15

    .line 291
    const/4 v12, 0x0

    .line 292
    move v13, v7

    .line 293
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 296
    .end local v13    # "fSqrDistance":F
    :cond_15
    neg-float v0, v5

    move/from16 v20, v0

    div-float v12, v20, v2

    .line 297
    mul-float v20, v5, v12

    add-float v13, v20, v7

    .line 300
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 303
    .end local v13    # "fSqrDistance":F
    .end local v15    # "fTmp0":F
    .end local v16    # "fTmp1":F
    :cond_16
    add-float v20, v4, v6

    sub-float v20, v20, v3

    sub-float v11, v20, v5

    .line 304
    .restart local v11    # "fNumer":F
    const/16 v20, 0x0

    cmpg-float v20, v11, v20

    if-gtz v20, :cond_17

    .line 306
    const/4 v12, 0x0

    .line 307
    const/high16 v14, 0x3f800000

    .line 308
    const/high16 v20, 0x40000000

    mul-float v20, v20, v6

    add-float v20, v20, v4

    add-float v13, v20, v7

    .line 309
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 312
    .end local v13    # "fSqrDistance":F
    :cond_17
    const/high16 v20, 0x40000000

    mul-float v20, v20, v3

    sub-float v20, v2, v20

    add-float v8, v20, v4

    .line 313
    .restart local v8    # "fDenom":F
    cmpl-float v20, v11, v8

    if-ltz v20, :cond_18

    .line 315
    const/high16 v12, 0x3f800000

    .line 316
    const/4 v14, 0x0

    .line 317
    const/high16 v20, 0x40000000

    mul-float v20, v20, v5

    add-float v20, v20, v2

    add-float v13, v20, v7

    .line 318
    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0

    .line 321
    .end local v13    # "fSqrDistance":F
    :cond_18
    div-float v12, v11, v8

    .line 322
    const/high16 v20, 0x3f800000

    sub-float v14, v20, v12

    .line 323
    mul-float v20, v2, v12

    mul-float v21, v3, v14

    add-float v20, v20, v21

    const/high16 v21, 0x40000000

    mul-float v21, v21, v5

    add-float v20, v20, v21

    mul-float v20, v20, v12

    mul-float v21, v3, v12

    mul-float v22, v4, v14

    add-float v21, v21, v22

    const/high16 v22, 0x40000000

    mul-float v22, v22, v6

    add-float v21, v21, v22

    mul-float v21, v21, v14

    add-float v20, v20, v21

    add-float v13, v20, v7

    .restart local v13    # "fSqrDistance":F
    goto/16 :goto_0
.end method

.method public SetNormal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v2, v3}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    .line 55
    .local v0, "vSub":Lcom/voovio/voo3d/data/Vector3;
    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v2, v3}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    .line 57
    .local v1, "vSub1":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 58
    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 60
    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    .line 61
    return-void
.end method

.method public TestPointSide(Lcom/voovio/voo3d/geometry/Vertex3D;)I
    .locals 3
    .param p1, "v"    # Lcom/voovio/voo3d/geometry/Vertex3D;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, p1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    iget v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    add-float v0, v1, v2

    .line 69
    .local v0, "p":F
    sget v1, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 70
    sget v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_FRONT:I

    .line 74
    :goto_0
    return v1

    .line 71
    :cond_0
    sget v1, Lcom/voovio/voo3d/math/VectorMath;->ZERO_TOLERANCE:F

    neg-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 72
    sget v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_BACK:I

    goto :goto_0

    .line 74
    :cond_1
    sget v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_COINCIDE:I

    goto :goto_0
.end method

.method public TestSegmentIntersection(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Z
    .locals 11
    .param p1, "pt0"    # Lcom/voovio/voo3d/data/Vector3;
    .param p2, "pt1"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v10, 0x0

    .line 83
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    .line 84
    iput v10, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fIDist:F

    .line 86
    invoke-static {p2, p1}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 87
    .local v5, "vRay":Lcom/voovio/voo3d/data/Vector3;
    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v8, p1}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v8

    iget v9, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fd:F

    add-float/2addr v8, v9

    neg-float v8, v8

    iget-object v9, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v5}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v9

    div-float v2, v8, v9

    .line 89
    .local v2, "t":F
    invoke-static {v5, v2}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    .line 92
    .local v1, "ptI":Lcom/voovio/voo3d/data/Vector3;
    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "nVertex":I
    const/4 v4, 0x0

    .local v4, "v1":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "v0":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 102
    iput-object v1, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    .line 103
    iput v2, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_fIDist:F

    .line 105
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 95
    :cond_0
    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v8, v9}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    .line 96
    .local v6, "vSub":Lcom/voovio/voo3d/data/Vector3;
    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v1, v8}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    .line 98
    .local v7, "vSub1":Lcom/voovio/voo3d/data/Vector3;
    iget-object v8, p0, Lcom/voovio/voo3d/geometry/Triangle3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v6, v7, v8}, Lcom/voovio/voo3d/math/VectorMath;->dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v8

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1

    .line 99
    const/4 v8, 0x0

    goto :goto_1

    .line 93
    :cond_1
    move v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
