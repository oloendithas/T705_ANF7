.class public final Lcom/voovio/voo3d/math/Matrix4Math;
.super Ljava/lang/Object;
.source "Matrix4Math.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInverse(Lcom/voovio/voo3d/data/Matrix4;)Lcom/voovio/voo3d/data/Matrix4;
    .locals 37
    .param p0, "m"    # Lcom/voovio/voo3d/data/Matrix4;

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/voovio/voo3d/data/Matrix4;->det()F

    move-result v18

    .line 49
    .local v18, "d":F
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f50624dd2f1a9fcL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 63
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/high16 v1, 0x3f800000

    div-float v18, v1, v18

    .line 58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move/from16 v19, v0

    .local v19, "m11":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move/from16 v23, v0

    .local v23, "m21":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move/from16 v27, v0

    .local v27, "m31":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move/from16 v31, v0

    .line 59
    .local v31, "m41":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move/from16 v20, v0

    .local v20, "m12":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v24, v0

    .local v24, "m22":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v28, v0

    .local v28, "m32":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v32, v0

    .line 60
    .local v32, "m42":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v21, v0

    .local v21, "m13":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v25, v0

    .local v25, "m23":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v29, v0

    .local v29, "m33":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v33, v0

    .line 61
    .local v33, "m43":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v22, v0

    .local v22, "m14":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v26, v0

    .local v26, "m24":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v30, v0

    .local v30, "m34":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v34, v0

    .line 63
    .local v34, "m44":F
    new-instance v1, Lcom/voovio/voo3d/data/Matrix4;

    .line 64
    mul-float v2, v29, v34

    mul-float v3, v33, v30

    sub-float/2addr v2, v3

    mul-float v2, v2, v24

    mul-float v3, v25, v34

    mul-float v4, v33, v26

    sub-float/2addr v3, v4

    mul-float v3, v3, v28

    sub-float/2addr v2, v3

    mul-float v3, v25, v30

    mul-float v4, v29, v26

    sub-float/2addr v3, v4

    mul-float v3, v3, v32

    add-float/2addr v2, v3

    mul-float v2, v2, v18

    .line 65
    move/from16 v0, v18

    neg-float v3, v0

    mul-float v4, v29, v34

    mul-float v5, v33, v30

    sub-float/2addr v4, v5

    mul-float v4, v4, v20

    mul-float v5, v21, v34

    mul-float v6, v33, v22

    sub-float/2addr v5, v6

    mul-float v5, v5, v28

    sub-float/2addr v4, v5

    mul-float v5, v21, v30

    mul-float v6, v29, v22

    sub-float/2addr v5, v6

    mul-float v5, v5, v32

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 66
    mul-float v4, v25, v34

    mul-float v5, v33, v26

    sub-float/2addr v4, v5

    mul-float v4, v4, v20

    mul-float v5, v21, v34

    mul-float v6, v33, v22

    sub-float/2addr v5, v6

    mul-float v5, v5, v24

    sub-float/2addr v4, v5

    mul-float v5, v21, v26

    mul-float v6, v25, v22

    sub-float/2addr v5, v6

    mul-float v5, v5, v32

    add-float/2addr v4, v5

    mul-float v4, v4, v18

    .line 67
    move/from16 v0, v18

    neg-float v5, v0

    mul-float v6, v25, v30

    mul-float v7, v29, v26

    sub-float/2addr v6, v7

    mul-float v6, v6, v20

    mul-float v7, v21, v30

    mul-float v8, v29, v22

    sub-float/2addr v7, v8

    mul-float v7, v7, v24

    sub-float/2addr v6, v7

    mul-float v7, v21, v26

    mul-float v8, v25, v22

    sub-float/2addr v7, v8

    mul-float v7, v7, v28

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 68
    move/from16 v0, v18

    neg-float v6, v0

    mul-float v7, v29, v34

    mul-float v8, v33, v30

    sub-float/2addr v7, v8

    mul-float v7, v7, v23

    mul-float v8, v25, v34

    mul-float v9, v33, v26

    sub-float/2addr v8, v9

    mul-float v8, v8, v27

    sub-float/2addr v7, v8

    mul-float v8, v25, v30

    mul-float v9, v29, v26

    sub-float/2addr v8, v9

    mul-float v8, v8, v31

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    .line 69
    mul-float v7, v29, v34

    mul-float v8, v33, v30

    sub-float/2addr v7, v8

    mul-float v7, v7, v19

    mul-float v8, v21, v34

    mul-float v9, v33, v22

    sub-float/2addr v8, v9

    mul-float v8, v8, v27

    sub-float/2addr v7, v8

    mul-float v8, v21, v30

    mul-float v9, v29, v22

    sub-float/2addr v8, v9

    mul-float v8, v8, v31

    add-float/2addr v7, v8

    mul-float v7, v7, v18

    .line 70
    move/from16 v0, v18

    neg-float v8, v0

    mul-float v9, v25, v34

    mul-float v10, v33, v26

    sub-float/2addr v9, v10

    mul-float v9, v9, v19

    mul-float v10, v21, v34

    mul-float v11, v33, v22

    sub-float/2addr v10, v11

    mul-float v10, v10, v23

    sub-float/2addr v9, v10

    mul-float v10, v21, v26

    mul-float v11, v25, v22

    sub-float/2addr v10, v11

    mul-float v10, v10, v31

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    .line 71
    mul-float v9, v25, v30

    mul-float v10, v29, v26

    sub-float/2addr v9, v10

    mul-float v9, v9, v19

    mul-float v10, v21, v30

    mul-float v11, v29, v22

    sub-float/2addr v10, v11

    mul-float v10, v10, v23

    sub-float/2addr v9, v10

    mul-float v10, v21, v26

    mul-float v11, v25, v22

    sub-float/2addr v10, v11

    mul-float v10, v10, v27

    add-float/2addr v9, v10

    mul-float v9, v9, v18

    .line 72
    mul-float v10, v28, v34

    mul-float v11, v32, v30

    sub-float/2addr v10, v11

    mul-float v10, v10, v23

    mul-float v11, v24, v34

    mul-float v12, v32, v26

    sub-float/2addr v11, v12

    mul-float v11, v11, v27

    sub-float/2addr v10, v11

    mul-float v11, v24, v30

    mul-float v12, v28, v26

    sub-float/2addr v11, v12

    mul-float v11, v11, v31

    add-float/2addr v10, v11

    mul-float v10, v10, v18

    .line 73
    move/from16 v0, v18

    neg-float v11, v0

    mul-float v12, v28, v34

    mul-float v13, v32, v30

    sub-float/2addr v12, v13

    mul-float v12, v12, v19

    mul-float v13, v20, v34

    mul-float v14, v32, v22

    sub-float/2addr v13, v14

    mul-float v13, v13, v27

    sub-float/2addr v12, v13

    mul-float v13, v20, v30

    mul-float v14, v28, v22

    sub-float/2addr v13, v14

    mul-float v13, v13, v31

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    .line 74
    mul-float v12, v24, v34

    mul-float v13, v32, v26

    sub-float/2addr v12, v13

    mul-float v12, v12, v19

    mul-float v13, v20, v34

    mul-float v14, v32, v22

    sub-float/2addr v13, v14

    mul-float v13, v13, v23

    sub-float/2addr v12, v13

    mul-float v13, v20, v26

    mul-float v14, v24, v22

    sub-float/2addr v13, v14

    mul-float v13, v13, v31

    add-float/2addr v12, v13

    mul-float v12, v12, v18

    .line 75
    move/from16 v0, v18

    neg-float v13, v0

    mul-float v14, v24, v30

    mul-float v15, v28, v26

    sub-float/2addr v14, v15

    mul-float v14, v14, v19

    mul-float v15, v20, v30

    mul-float v16, v28, v22

    sub-float v15, v15, v16

    mul-float v15, v15, v23

    sub-float/2addr v14, v15

    mul-float v15, v20, v26

    mul-float v16, v24, v22

    sub-float v15, v15, v16

    mul-float v15, v15, v27

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    .line 76
    move/from16 v0, v18

    neg-float v14, v0

    mul-float v15, v28, v33

    mul-float v16, v32, v29

    sub-float v15, v15, v16

    mul-float v15, v15, v23

    mul-float v16, v24, v33

    mul-float v17, v32, v25

    sub-float v16, v16, v17

    mul-float v16, v16, v27

    sub-float v15, v15, v16

    mul-float v16, v24, v29

    mul-float v17, v28, v25

    sub-float v16, v16, v17

    mul-float v16, v16, v31

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    .line 77
    mul-float v15, v28, v33

    mul-float v16, v32, v29

    sub-float v15, v15, v16

    mul-float v15, v15, v19

    mul-float v16, v20, v33

    mul-float v17, v32, v21

    sub-float v16, v16, v17

    mul-float v16, v16, v27

    sub-float v15, v15, v16

    mul-float v16, v20, v29

    mul-float v17, v28, v21

    sub-float v16, v16, v17

    mul-float v16, v16, v31

    add-float v15, v15, v16

    mul-float v15, v15, v18

    .line 78
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v16, v0

    mul-float v17, v24, v33

    mul-float v35, v32, v25

    sub-float v17, v17, v35

    mul-float v17, v17, v19

    mul-float v35, v20, v33

    mul-float v36, v32, v21

    sub-float v35, v35, v36

    mul-float v35, v35, v23

    sub-float v17, v17, v35

    mul-float v35, v20, v25

    mul-float v36, v24, v21

    sub-float v35, v35, v36

    mul-float v35, v35, v31

    add-float v17, v17, v35

    mul-float v16, v16, v17

    .line 79
    mul-float v17, v24, v29

    mul-float v35, v28, v25

    sub-float v17, v17, v35

    mul-float v17, v17, v19

    mul-float v35, v20, v29

    mul-float v36, v28, v21

    sub-float v35, v35, v36

    mul-float v35, v35, v23

    sub-float v17, v17, v35

    mul-float v35, v20, v25

    mul-float v36, v24, v21

    sub-float v35, v35, v36

    mul-float v35, v35, v27

    add-float v17, v17, v35

    mul-float v17, v17, v18

    .line 63
    invoke-direct/range {v1 .. v17}, Lcom/voovio/voo3d/data/Matrix4;-><init>(FFFFFFFFFFFFFFFF)V

    goto/16 :goto_0
.end method

.method public static multiply(Lcom/voovio/voo3d/data/Matrix4;Lcom/voovio/voo3d/data/Matrix4;)Lcom/voovio/voo3d/data/Matrix4;
    .locals 51
    .param p0, "m1"    # Lcom/voovio/voo3d/data/Matrix4;
    .param p1, "m2"    # Lcom/voovio/voo3d/data/Matrix4;

    .prologue
    .line 10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move/from16 v18, v0

    .local v18, "m111":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move/from16 v22, v0

    .local v22, "m121":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move/from16 v26, v0

    .local v26, "m131":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move/from16 v30, v0

    .line 11
    .local v30, "m141":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move/from16 v19, v0

    .local v19, "m112":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v23, v0

    .local v23, "m122":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v27, v0

    .local v27, "m132":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v31, v0

    .line 12
    .local v31, "m142":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v20, v0

    .local v20, "m113":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v24, v0

    .local v24, "m123":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v28, v0

    .local v28, "m133":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v32, v0

    .line 13
    .local v32, "m143":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v21, v0

    .local v21, "m114":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v25, v0

    .local v25, "m124":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v29, v0

    .local v29, "m134":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v33, v0

    .line 14
    .local v33, "m144":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    move/from16 v34, v0

    .local v34, "m211":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    move/from16 v38, v0

    .local v38, "m221":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    move/from16 v42, v0

    .local v42, "m231":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    move/from16 v46, v0

    .line 15
    .local v46, "m241":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    move/from16 v35, v0

    .local v35, "m212":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    move/from16 v39, v0

    .local v39, "m222":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    move/from16 v43, v0

    .local v43, "m232":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    move/from16 v47, v0

    .line 16
    .local v47, "m242":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    move/from16 v36, v0

    .local v36, "m213":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    move/from16 v40, v0

    .local v40, "m223":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    move/from16 v44, v0

    .local v44, "m233":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    move/from16 v48, v0

    .line 17
    .local v48, "m243":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    move/from16 v37, v0

    .local v37, "m214":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    move/from16 v41, v0

    .local v41, "m224":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    move/from16 v45, v0

    .local v45, "m234":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    move/from16 v49, v0

    .line 19
    .local v49, "m244":F
    new-instance v1, Lcom/voovio/voo3d/data/Matrix4;

    .line 21
    mul-float v2, v18, v34

    mul-float v3, v19, v38

    add-float/2addr v2, v3

    mul-float v3, v20, v42

    add-float/2addr v2, v3

    mul-float v3, v21, v46

    add-float/2addr v2, v3

    .line 22
    mul-float v3, v18, v35

    mul-float v4, v19, v39

    add-float/2addr v3, v4

    mul-float v4, v20, v43

    add-float/2addr v3, v4

    mul-float v4, v21, v47

    add-float/2addr v3, v4

    .line 23
    mul-float v4, v18, v36

    mul-float v5, v19, v40

    add-float/2addr v4, v5

    mul-float v5, v20, v44

    add-float/2addr v4, v5

    mul-float v5, v21, v48

    add-float/2addr v4, v5

    .line 24
    mul-float v5, v18, v37

    mul-float v6, v19, v41

    add-float/2addr v5, v6

    mul-float v6, v20, v45

    add-float/2addr v5, v6

    mul-float v6, v21, v49

    add-float/2addr v5, v6

    .line 26
    mul-float v6, v22, v34

    mul-float v7, v23, v38

    add-float/2addr v6, v7

    mul-float v7, v24, v42

    add-float/2addr v6, v7

    mul-float v7, v25, v46

    add-float/2addr v6, v7

    .line 27
    mul-float v7, v22, v35

    mul-float v8, v23, v39

    add-float/2addr v7, v8

    mul-float v8, v24, v43

    add-float/2addr v7, v8

    mul-float v8, v25, v47

    add-float/2addr v7, v8

    .line 28
    mul-float v8, v22, v36

    mul-float v9, v23, v40

    add-float/2addr v8, v9

    mul-float v9, v24, v44

    add-float/2addr v8, v9

    mul-float v9, v25, v48

    add-float/2addr v8, v9

    .line 29
    mul-float v9, v22, v37

    mul-float v10, v23, v41

    add-float/2addr v9, v10

    mul-float v10, v24, v45

    add-float/2addr v9, v10

    mul-float v10, v25, v49

    add-float/2addr v9, v10

    .line 31
    mul-float v10, v26, v34

    mul-float v11, v27, v38

    add-float/2addr v10, v11

    mul-float v11, v28, v42

    add-float/2addr v10, v11

    mul-float v11, v29, v46

    add-float/2addr v10, v11

    .line 32
    mul-float v11, v26, v35

    mul-float v12, v27, v39

    add-float/2addr v11, v12

    mul-float v12, v28, v43

    add-float/2addr v11, v12

    mul-float v12, v29, v47

    add-float/2addr v11, v12

    .line 33
    mul-float v12, v26, v36

    mul-float v13, v27, v40

    add-float/2addr v12, v13

    mul-float v13, v28, v44

    add-float/2addr v12, v13

    mul-float v13, v29, v48

    add-float/2addr v12, v13

    .line 34
    mul-float v13, v26, v37

    mul-float v14, v27, v41

    add-float/2addr v13, v14

    mul-float v14, v28, v45

    add-float/2addr v13, v14

    mul-float v14, v29, v49

    add-float/2addr v13, v14

    .line 36
    mul-float v14, v30, v34

    mul-float v15, v31, v38

    add-float/2addr v14, v15

    mul-float v15, v32, v42

    add-float/2addr v14, v15

    mul-float v15, v33, v46

    add-float/2addr v14, v15

    .line 37
    mul-float v15, v30, v35

    mul-float v16, v31, v39

    add-float v15, v15, v16

    mul-float v16, v32, v43

    add-float v15, v15, v16

    mul-float v16, v33, v47

    add-float v15, v15, v16

    .line 38
    mul-float v16, v30, v36

    mul-float v17, v31, v40

    add-float v16, v16, v17

    mul-float v17, v32, v44

    add-float v16, v16, v17

    mul-float v17, v33, v48

    add-float v16, v16, v17

    .line 39
    mul-float v17, v30, v37

    mul-float v50, v31, v41

    add-float v17, v17, v50

    mul-float v50, v32, v45

    add-float v17, v17, v50

    mul-float v50, v33, v49

    add-float v17, v17, v50

    .line 19
    invoke-direct/range {v1 .. v17}, Lcom/voovio/voo3d/data/Matrix4;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v1
.end method
