.class Landroid/view/View$TransformationInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformationInfo"
.end annotation


# instance fields
.field mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mCamera:Landroid/graphics/Camera;

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private mInverseMatrixDirty:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field mMatrixDirty:Z

.field private mMatrixIsIdentity:Z

.field mPivotX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mPivotY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mPrevHeight:I

.field private mPrevWidth:I

.field mRotation:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mRotationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mRotationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mScaleX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mScaleY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mTransitionAlpha:F

.field mTranslationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mTranslationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private matrix3D:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 2892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2900
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 2916
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 2923
    iput-boolean v4, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    .line 2932
    iput-boolean v4, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    .line 2937
    iput-object v5, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 2942
    iput-object v5, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 2949
    iput v3, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    .line 2950
    iput v3, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    .line 2955
    iput v1, p0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 2961
    iput v1, p0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 2967
    iput v1, p0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 2973
    iput v1, p0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 2979
    iput v1, p0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 2986
    iput v2, p0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 2993
    iput v2, p0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 2999
    iput v1, p0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 3005
    iput v1, p0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 3012
    iput v2, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 3020
    iput v2, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    return-void
.end method

.method static synthetic access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/view/View$TransformationInfo;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget-boolean v0, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/view/View$TransformationInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 2892
    iput-boolean p1, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/view/View$TransformationInfo;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget v0, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    return v0
.end method

.method static synthetic access$1802(Landroid/view/View$TransformationInfo;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2892
    iput p1, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    return p1
.end method

.method static synthetic access$1900(Landroid/view/View$TransformationInfo;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget v0, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    return v0
.end method

.method static synthetic access$1902(Landroid/view/View$TransformationInfo;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2892
    iput p1, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    return p1
.end method

.method static synthetic access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Camera;

    .prologue
    .line 2892
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 2892
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/view/View$TransformationInfo;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget-boolean v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/view/View$TransformationInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 2892
    iput-boolean p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 2892
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method
