.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsPerfBoostEnabled:Z

.field private mIsPerfLockAcquired:Z

.field private mOver:I

.field private mPerf:Lorg/codeaurora/Performance;

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    .line 802
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 810
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 811
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 827
    const/4 v7, 0x0

    .line 828
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 829
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    const/16 v11, 0x64

    if-ge v3, v11, :cond_ca

    .line 830
    int-to-float v11, v3

    const/high16 v12, 0x42c80000

    div-float v0, v11, v12

    .line 832
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000

    .line 835
    .local v6, "x_max":F
    :goto_30
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 836
    .local v5, "x":F
    const/high16 v11, 0x40400000

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 837
    .local v1, "coef":F
    const/high16 v11, 0x3f800000

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 838
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_b8

    .line 842
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 844
    const/high16 v9, 0x3f800000

    .line 847
    .local v9, "y_max":F
    :goto_73
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 848
    .local v8, "y":F
    const/high16 v11, 0x40400000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 849
    const/high16 v11, 0x3f800000

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 850
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_c2

    .line 854
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 829
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    .line 839
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_b8
    cmpl-float v11, v4, v0

    if-lez v11, :cond_bf

    move v6, v5

    goto/16 :goto_30

    .line 840
    :cond_bf
    move v7, v5

    goto/16 :goto_30

    .line 851
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_c2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_c8

    move v9, v8

    goto :goto_73

    .line 852
    :cond_c8
    move v10, v8

    goto :goto_73

    .line 856
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_ca
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000

    aput v15, v13, v14

    aput v15, v11, v12

    .line 857
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 794
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 822
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    .line 823
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 824
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 864
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 865
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000

    mul-float v0, v1, v2

    .line 866
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 871
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 873
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .registers 16
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000

    .line 891
    sub-int v2, p2, p1

    .line 892
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 893
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 894
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 895
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_37

    .line 896
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 897
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 898
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 899
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 900
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 901
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 903
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_37
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1039
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 1040
    .local v2, "durationToApex":F
    int-to-long v4, p3

    int-to-long v6, p3

    mul-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 1041
    .local v0, "distanceToApex":F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 1042
    .local v1, "distanceToEdge":F
    const-wide/high16 v4, 0x4000000000000000L

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1044
    .local v3, "totalDuration":F
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a0000

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1045
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 1046
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1047
    return-void
.end method

.method private static getDeceleration(I)F
    .registers 2
    .param p0, "velocity"    # I

    .prologue
    .line 883
    if-lez p0, :cond_5

    const/high16 v0, -0x3b060000

    :goto_4
    return v0

    :cond_5
    const/high16 v0, 0x44fa0000

    goto :goto_4
.end method

.method private getSplineDeceleration(I)D
    .registers 5
    .param p1, "velocity"    # I

    .prologue
    .line 1021
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .registers 10
    .param p1, "velocity"    # I

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 1026
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L

    sub-double v0, v4, v6

    .line 1027
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .registers 10
    .param p1, "velocity"    # I

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 1033
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L

    sub-double v0, v4, v6

    .line 1034
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .registers 6

    .prologue
    const/high16 v4, 0x40000000

    .line 1091
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 1092
    .local v0, "distance":F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1094
    .local v1, "sign":F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_32

    .line 1096
    neg-float v2, v1

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1097
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v2

    .line 1100
    :cond_32
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1101
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1102
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v3, :cond_50

    .end local v0    # "distance":F
    :goto_3e
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1103
    const/high16 v2, 0x447a0000

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1104
    return-void

    .line 1102
    .restart local v0    # "distance":F
    :cond_50
    neg-float v0, v0

    goto :goto_3e
.end method

.method private startAfterEdge(IIII)V
    .registers 18
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 1056
    if-le p1, p2, :cond_12

    move/from16 v0, p3

    if-ge p1, v0, :cond_12

    .line 1057
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1076
    :goto_11
    return-void

    .line 1061
    :cond_12
    move/from16 v0, p3

    if-le p1, v0, :cond_2a

    const/4 v10, 0x1

    .line 1062
    .local v10, "positive":Z
    :goto_17
    if-eqz v10, :cond_2c

    move/from16 v7, p3

    .line 1063
    .local v7, "edge":I
    :goto_1b
    sub-int v9, p1, v7

    .line 1064
    .local v9, "overDistance":I
    mul-int v1, v9, p4

    if-ltz v1, :cond_2e

    const/4 v8, 0x1

    .line 1065
    .local v8, "keepIncreasing":Z
    :goto_22
    if-eqz v8, :cond_30

    .line 1067
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_11

    .line 1061
    .end local v7    # "edge":I
    .end local v8    # "keepIncreasing":Z
    .end local v9    # "overDistance":I
    .end local v10    # "positive":Z
    :cond_2a
    const/4 v10, 0x0

    goto :goto_17

    .restart local v10    # "positive":Z
    :cond_2c
    move v7, p2

    .line 1062
    goto :goto_1b

    .line 1064
    .restart local v7    # "edge":I
    .restart local v9    # "overDistance":I
    :cond_2e
    const/4 v8, 0x0

    goto :goto_22

    .line 1069
    .restart local v8    # "keepIncreasing":Z
    :cond_30
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 1070
    .local v11, "totalDistance":D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_54

    .line 1071
    if-eqz v10, :cond_4f

    move v4, p2

    :goto_42
    if-eqz v10, :cond_51

    move v5, p1

    :goto_45
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_11

    :cond_4f
    move v4, p1

    goto :goto_42

    :cond_51
    move/from16 v5, p3

    goto :goto_45

    .line 1073
    :cond_54
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_11
.end method

.method private startBounceAfterEdge(III)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1050
    if-nez p3, :cond_11

    sub-int v0, p1, p2

    :goto_4
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1051
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 1052
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 1053
    return-void

    :cond_11
    move v0, p3

    .line 1050
    goto :goto_4
.end method

.method private startSpringback(III)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 964
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 965
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 966
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 967
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 968
    sub-int v0, p1, p2

    .line 969
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 971
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 972
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 973
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000000000000000L

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 974
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1107
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_3e

    .line 1131
    :goto_6
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1132
    const/4 v0, 0x1

    :cond_a
    :pswitch_a
    return v0

    .line 1110
    :pswitch_b
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_a

    .line 1112
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 1114
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1115
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1116
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1117
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_6

    .line 1124
    :pswitch_2e
    iget-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1125
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_6

    .line 1107
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_2e
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 7
    .param p1, "extend"    # I

    .prologue
    .line 938
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 939
    .local v1, "time":J
    iget-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 940
    .local v0, "elapsedTime":I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 941
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 942
    return-void
.end method

.method finish()V
    .registers 2

    .prologue
    .line 920
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_10

    .line 921
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 925
    :cond_10
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 930
    return-void
.end method

.method fling(IIIII)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 977
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 978
    iput-boolean v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 979
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 980
    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 981
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 982
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 984
    if-gt p1, p4, :cond_1d

    if-ge p1, p3, :cond_21

    .line 985
    :cond_1d
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1018
    :cond_20
    :goto_20
    return-void

    .line 989
    :cond_21
    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 990
    const-wide/16 v0, 0x0

    .line 992
    .local v0, "totalDistance":D
    if-eqz p2, :cond_61

    .line 993
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 994
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 995
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    if-nez v2, :cond_42

    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v2, :cond_42

    .line 996
    new-instance v2, Lorg/codeaurora/Performance;

    invoke-direct {v2}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    .line 999
    :cond_42
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v2, :cond_61

    .line 1000
    iput-boolean v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 1001
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    iget-object v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Lorg/codeaurora/Performance;

    const/16 v5, 0x702

    aput v5, v4, v6

    const/16 v5, 0x20b

    aput v5, v4, v7

    const/4 v5, 0x2

    const/16 v6, 0x30b

    aput v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 1005
    :cond_61
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 1006
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1009
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_7d

    .line 1010
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 1011
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1014
    :cond_7d
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_20

    .line 1015
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 1016
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_20
.end method

.method notifyEdgeReached(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 1080
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    .line 1081
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1082
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1085
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1087
    :cond_12
    return-void
.end method

.method setFinalPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 933
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 935
    return-void
.end method

.method setFriction(F)V
    .registers 2
    .param p1, "friction"    # F

    .prologue
    .line 860
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 861
    return-void
.end method

.method springback(III)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 945
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 947
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 948
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 950
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 951
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 953
    if-ge p1, p2, :cond_1c

    .line 954
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 959
    :cond_17
    :goto_17
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_22

    :goto_1b
    return v0

    .line 955
    :cond_1c
    if-le p1, p3, :cond_17

    .line 956
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_17

    :cond_22
    move v0, v1

    .line 959
    goto :goto_1b
.end method

.method startScroll(III)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 906
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 908
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 909
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 911
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 912
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 916
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 917
    return-void
.end method

.method update()Z
    .registers 22

    .prologue
    .line 1141
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    .line 1142
    .local v15, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v2, v15, v18

    .line 1144
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v2, v18

    if-lez v18, :cond_1e

    .line 1145
    const/16 v18, 0x0

    .line 1193
    :goto_1d
    return v18

    .line 1148
    :cond_1e
    const-wide/16 v6, 0x0

    .line 1149
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_17a

    .line 1191
    :cond_29
    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1193
    const/16 v18, 0x1

    goto :goto_1d

    .line 1151
    :pswitch_43
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 1152
    .local v11, "t":F
    const/high16 v18, 0x42c80000

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v9, v0

    .line 1153
    .local v9, "index":I
    const/high16 v8, 0x3f800000

    .line 1154
    .local v8, "distanceCoef":F
    const/16 v17, 0x0

    .line 1155
    .local v17, "velocityCoef":F
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v9, v0, :cond_8c

    .line 1156
    int-to-float v0, v9

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v13, v18, v19

    .line 1157
    .local v13, "t_inf":F
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v14, v18, v19

    .line 1158
    .local v14, "t_sup":F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v18, v9

    .line 1159
    .local v4, "d_inf":F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v19, v9, 0x1

    aget v5, v18, v19

    .line 1160
    .local v5, "d_sup":F
    sub-float v18, v5, v4

    sub-float v19, v14, v13

    div-float v17, v18, v19

    .line 1161
    sub-float v18, v11, v13

    mul-float v18, v18, v17

    add-float v8, v4, v18

    .line 1164
    .end local v4    # "d_inf":F
    .end local v5    # "d_sup":F
    .end local v13    # "t_inf":F
    .end local v14    # "t_sup":F
    :cond_8c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-double v6, v0

    .line 1165
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x447a0000

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_29

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_29

    .line 1175
    .end local v8    # "distanceCoef":F
    .end local v9    # "index":I
    .end local v11    # "t":F
    .end local v17    # "velocityCoef":F
    :pswitch_d6
    long-to-float v0, v2

    move/from16 v18, v0

    const/high16 v19, 0x447a0000

    div-float v11, v18, v19

    .line 1176
    .restart local v11    # "t":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1177
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    mul-float v19, v19, v11

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 1178
    goto/16 :goto_29

    .line 1182
    .end local v11    # "t":F
    :pswitch_11a
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 1183
    .restart local v11    # "t":F
    mul-float v12, v11, v11

    .line 1184
    .local v12, "t2":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 1185
    .local v10, "sign":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40400000

    mul-float v19, v19, v12

    const/high16 v20, 0x40000000

    mul-float v20, v20, v11

    mul-float v20, v20, v12

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 1186
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40c00000

    mul-float v18, v18, v19

    neg-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, v12

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_29

    .line 1149
    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_43
        :pswitch_11a
        :pswitch_d6
    .end packed-switch
.end method

.method updateScroll(F)V
    .registers 5
    .param p1, "q"    # F

    .prologue
    .line 876
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 877
    return-void
.end method
