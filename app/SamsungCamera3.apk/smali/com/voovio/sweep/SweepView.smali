.class public final Lcom/voovio/sweep/SweepView;
.super Landroid/widget/RelativeLayout;
.source "SweepView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/voovio/sweep/ResourceManager$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    }
.end annotation


# static fields
.field private static OPERATION_FADE:I = 0x0

.field private static OPERATION_NAVIGATION:I = 0x0

.field private static OPERATION_TRANSITION:I = 0x0

.field private static OPERATION_ZOOM:I = 0x0

.field private static TRANSITION_FINISH_FRAMES:I = 0x0

.field static final m_movAveragePeriod:F = 40.0f

.field static final smoothFactor:F = 0.1f


# instance fields
.field private m_aTransitionPositions:[I

.field private m_aVoovioPositions:[I

.field private m_aVoovioTotals:[F

.field private m_bAutoDrive:Z

.field private m_bAvailableDirections:[Z

.field private m_bFirstDraw:Z

.field private m_bGLViewReady:Z

.field private m_bRestore:Z

.field private m_bStart:Z

.field private m_bWillFadeToNextVoovio:Z

.field private m_fAngleStepX:F

.field private m_fAngleStepY:F

.field private m_fAutodriveDirection:F

.field private m_fAutodriveFOV:F

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field private m_fCurFOV:F

.field private m_fFovStep:F

.field private m_fMaxFOV:F

.field private m_fMinFOV:F

.field private m_fTransitionAccumD:F

.field private m_fTransitionCurVel:F

.field private m_fTransitionFactor:F

.field private m_fTransitionMatrices:[[F

.field private m_fVelocityForward:F

.field private m_fVelocityRightward:F

.field private m_fVelocityUpward:F

.field private m_fVoovioMatrices:[[F

.field m_lastRealTimeMeasurement_ms:J

.field m_movAverageDeltaTime_ms:F

.field private m_nAutodriveOnStart:I

.field private m_nCurrentPosition:I

.field private m_nFadeCurStep:I

.field private m_nFadeSteps:I

.field private m_nLastPostedPosition:I

.field private m_nOperation:I

.field private m_nZoomCurStep:I

.field private m_nZoomSteps:I

.field private m_oActivityIndicator:Landroid/widget/ProgressBar;

.field private m_oAutodriveRunnable:Ljava/lang/Runnable;

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oDepthRenderBufferIDs:[I

.field private m_oFrameBuffersIDs:[I

.field private m_oGLView:Landroid/opengl/GLSurfaceView;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oImageChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oRMLock:Ljava/lang/Object;

.field private m_oRenderLock:Ljava/lang/Object;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field private m_oRotation:Lcom/voovio/sweep/Rotation;

.field private m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

.field private m_oSnapshot:Lcom/voovio/gles/Snapshot;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

.field private m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

.field private m_oTransition:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

.field private m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

.field private m_pt0:Lcom/voovio/voo3d/data/Vector3;

.field private m_pt1:Lcom/voovio/voo3d/data/Vector3;

.field private m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field m_smoothedDeltaRealTime_ms:F

.field private m_vDir:Lcom/voovio/voo3d/data/Vector3;

.field m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    .line 91
    const/4 v0, 0x2

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_TRANSITION:I

    .line 92
    const/4 v0, 0x3

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    .line 109
    const/16 v0, 0xc

    sput v0, Lcom/voovio/sweep/SweepView;->TRANSITION_FINISH_FRAMES:I

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/voovio/sweep/SweepView;-><init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    .line 50
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    .line 53
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    .line 54
    iput-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    .line 57
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    .line 60
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 63
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 66
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 67
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    .line 70
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 73
    iput-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    .line 76
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 79
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 80
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    .line 83
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    .line 84
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 85
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    .line 94
    sget v0, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 98
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    .line 99
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    .line 100
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    .line 104
    const/16 v0, 0xc

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nFadeSteps:I

    .line 105
    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    .line 111
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 112
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    .line 114
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    .line 115
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    .line 116
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 120
    iput-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    .line 121
    iput v8, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    .line 122
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    .line 124
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    .line 126
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    .line 127
    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    .line 131
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    .line 132
    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    .line 133
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    .line 134
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 136
    const/16 v0, 0x8

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    .line 137
    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    .line 139
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    .line 140
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    .line 141
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    .line 145
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 146
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 147
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    .line 151
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    .line 152
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    .line 153
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 154
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 158
    const/high16 v0, 0x418c0000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 159
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 168
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 172
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    .line 173
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    .line 174
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    .line 176
    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 177
    iput v8, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    .line 181
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    .line 182
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    .line 183
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    .line 184
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

    .line 186
    iput-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    .line 187
    iput-boolean v9, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    .line 188
    iput-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    .line 190
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    .line 192
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    .line 193
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    .line 210
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 212
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    .line 216
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 218
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v6, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    new-instance v0, Lcom/voovio/sweep/ResourceManager;

    invoke-direct {v0, p2}, Lcom/voovio/sweep/ResourceManager;-><init>(Lcom/voovio/sweep/ImageProvider;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 227
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/ResourceManager;->setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V

    .line 230
    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/high16 v3, 0x42480000

    const/high16 v4, 0x3f000000

    const v5, 0x461c4000

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 233
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    .line 236
    new-instance v0, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v0}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 239
    new-instance v0, Lcom/voovio/sweep/Rotation;

    invoke-direct {v0}, Lcom/voovio/sweep/Rotation;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    .line 242
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    .line 243
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    .line 246
    new-array v0, v9, [I

    aput v8, v0, v7

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    .line 247
    new-array v0, v9, [I

    aput v8, v0, v7

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    .line 250
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    .line 251
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    .line 252
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 253
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 256
    new-instance v0, Lcom/voovio/sweep/SweepView$1;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$1;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    .line 263
    new-instance v0, Lcom/voovio/sweep/SweepView$2;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$2;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    .line 270
    new-instance v0, Lcom/voovio/sweep/SweepView$3;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$3;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Lcom/voovio/sweep/SweepView$4;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$4;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

    .line 283
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    .line 287
    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return v0
.end method

.method static synthetic access$10(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->cameraToPositionInVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method

.method static synthetic access$11(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    return-void
.end method

.method static synthetic access$12(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method

.method static synthetic access$13(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    return-void
.end method

.method static synthetic access$14(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V

    return-void
.end method

.method static synthetic access$15(Lcom/voovio/sweep/SweepView;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    return v0
.end method

.method static synthetic access$16(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return v0
.end method

.method static synthetic access$17(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    return v0
.end method

.method static synthetic access$18(Lcom/voovio/sweep/SweepView;F)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return-void
.end method

.method static synthetic access$19(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepView;)[I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    return-object v0
.end method

.method static synthetic access$20(Lcom/voovio/sweep/SweepView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$21(Lcom/voovio/sweep/SweepView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$22(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/FrustumLimiter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    return-void
.end method

.method static synthetic access$24(Lcom/voovio/sweep/SweepView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$25(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method

.method static synthetic access$26(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToTransition(Lcom/voovio/sweep/Transition;)V

    return-void
.end method

.method static synthetic access$27(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->startFrom(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepView;Lcom/voovio/voo3d/view/Viewport;)V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V

    return-void
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepView;)[I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    return-object v0
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 1560
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    return v0
.end method

.method static synthetic access$7(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    return-void
.end method

.method static synthetic access$8(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    return-void
.end method

.method static synthetic access$9(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return-void
.end method

.method private cameraToPositionInVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 16
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 903
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v3, v11, v12

    .line 906
    .local v3, "oNextTransition":Lcom/voovio/sweep/Transition;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    .line 907
    .local v7, "ptPos":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v9

    .line 908
    .local v9, "vDir":Lcom/voovio/voo3d/data/Vector3;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 909
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v10, v11, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 910
    .local v10, "vN":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v6, v11, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 912
    .local v6, "ptOut":Lcom/voovio/voo3d/data/Vector3;
    iget v11, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v12, 0x3dcccccd

    iget v13, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 913
    iget v12, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    const v13, 0x3dcccccd

    iget v14, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    .line 914
    iget v13, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const v14, 0x3dcccccd

    iget v15, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 912
    invoke-virtual {v7, v11, v12, v13}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 928
    .end local v6    # "ptOut":Lcom/voovio/voo3d/data/Vector3;
    .end local v10    # "vN":Lcom/voovio/voo3d/data/Vector3;
    :goto_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 931
    move-object/from16 v0, p1

    iget v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 932
    .local v1, "index":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 934
    .local v2, "nVoovios":I
    add-int/lit8 v11, v2, -0x1

    if-ge v1, v11, :cond_4

    .line 935
    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 936
    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v12, v12, v1

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v13, v1, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v13, v13, v1

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 938
    .local v8, "s":F
    iget-object v11, v3, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 939
    neg-float v11, v8

    iget v12, v3, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    mul-float/2addr v11, v12

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 960
    .end local v8    # "s":F
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v12, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v14, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 961
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v12, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v13, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v14, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 963
    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 964
    invoke-static {v9}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 965
    return-void

    .line 916
    .end local v1    # "index":I
    .end local v2    # "nVoovios":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_2

    .line 917
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_0

    .line 920
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v10, v11, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 921
    .restart local v10    # "vN":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v6, v11, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 923
    .restart local v6    # "ptOut":Lcom/voovio/voo3d/data/Vector3;
    iget v11, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v12, 0x3dcccccd

    iget v13, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 924
    iget v12, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    const v13, 0x3dcccccd

    iget v14, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 925
    iget v13, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const v14, 0x3dcccccd

    iget v15, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    .line 923
    invoke-virtual {v7, v11, v12, v13}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_0

    .line 942
    .end local v6    # "ptOut":Lcom/voovio/voo3d/data/Vector3;
    .end local v10    # "vN":Lcom/voovio/voo3d/data/Vector3;
    .restart local v1    # "index":I
    .restart local v2    # "nVoovios":I
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v12, v12, v1

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v12, v12, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v13, v13, v1

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 944
    .restart local v8    # "s":F
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v5, v11, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 946
    .local v5, "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    iget v11, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v12, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 947
    iget v11, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v12, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 948
    iget v11, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v12, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto/16 :goto_1

    .line 952
    .end local v5    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .end local v8    # "s":F
    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x1

    aget-object v4, v11, v12

    .line 953
    .local v4, "oPrevTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 954
    iget-object v11, v4, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 955
    iget-object v11, v4, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v11, v9}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_1
.end method

.method private computeAllPositions()V
    .locals 19

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v14, v14, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 404
    .local v7, "nVoovios":I
    new-array v14, v7, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    .line 405
    add-int/lit8 v14, v7, -0x1

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    .line 406
    new-array v14, v7, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    .line 408
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 409
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    add-int/lit8 v15, v7, -0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 414
    const/high16 v5, 0x42700000

    .line 416
    .local v5, "fMultiplier":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    .line 417
    .local v12, "ptPortalIn":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v13

    .line 419
    .local v13, "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    const/4 v10, 0x0

    .line 420
    .local v10, "oVoovio":Lcom/voovio/sweep/Voovio;
    const/4 v9, 0x0

    .local v9, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/4 v8, 0x0

    .line 421
    .local v8, "oNextTransition":Lcom/voovio/sweep/Transition;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    add-int/lit8 v14, v7, -0x1

    if-lt v6, v14, :cond_0

    .line 457
    invoke-static {v12}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 458
    invoke-static {v13}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 459
    return-void

    .line 422
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v14, v14, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "oVoovio":Lcom/voovio/sweep/Voovio;
    check-cast v10, Lcom/voovio/sweep/Voovio;

    .line 423
    .restart local v10    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v14, v10, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v15, 0x1

    aget-object v9, v14, v15

    .line 424
    iget-object v14, v10, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v15, 0x0

    aget-object v8, v14, v15

    .line 426
    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 427
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v2, 0x1

    .line 428
    .local v2, "bPrev":Z
    :goto_1
    if-eqz v2, :cond_3

    iget-object v14, v9, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v14}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    :goto_2
    iput-object v14, v8, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    .line 429
    if-eqz v2, :cond_1

    .line 430
    iget-object v14, v9, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v15, v8, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v14, v15}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 432
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v8, v10, v15, v0}, Lcom/voovio/sweep/Rotation;->compute_v2(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;)V

    .line 434
    iget v14, v8, Lcom/voovio/sweep/Transition;->m_fAngle_v1_vt:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-float v3, v14

    .line 436
    .local v3, "fAngleIn":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    iget v15, v8, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    double-to-float v15, v15

    aput v15, v14, v6

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    move-object/from16 v17, v0

    aget v17, v17, v6

    mul-float v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    aput v16, v14, v15

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v15, v15, v6

    mul-float v16, v5, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    aput v15, v14, v6

    .line 421
    .end local v2    # "bPrev":Z
    .end local v3    # "fAngleIn":F
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 427
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 428
    .restart local v2    # "bPrev":Z
    :cond_3
    iget-object v14, v10, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_2

    .line 441
    .end local v2    # "bPrev":Z
    :cond_4
    if-nez v9, :cond_5

    iget-object v11, v10, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    .line 443
    .local v11, "ptO":Lcom/voovio/voo3d/data/Vector3;
    :goto_4
    iget-object v14, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v12, v14}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 444
    iget-object v14, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v13, v14}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 446
    invoke-virtual {v13, v12}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 447
    invoke-virtual {v12, v11}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 449
    invoke-virtual {v12}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v14

    const/high16 v15, 0x3f800000

    sub-float v4, v14, v15

    .line 451
    .local v4, "fDistanceIn":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    invoke-virtual {v12}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v15

    invoke-virtual {v13}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v16

    add-float v15, v15, v16

    aput v15, v14, v6

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    move-object/from16 v17, v0

    aget v17, v17, v6

    mul-float v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    aput v16, v14, v15

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v15, v15, v6

    mul-float v16, v5, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    aput v15, v14, v6

    goto/16 :goto_3

    .line 441
    .end local v4    # "fDistanceIn":F
    .end local v11    # "ptO":Lcom/voovio/voo3d/data/Vector3;
    :cond_5
    iget-object v14, v9, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget-object v11, v14, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_4
.end method

.method private computeAutodriveVelocity()V
    .locals 14

    .prologue
    .line 1358
    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    const/high16 v10, -0x40800000

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    .line 1359
    .local v1, "fAutodriveFOV":F
    :goto_0
    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    cmpl-float v9, v9, v1

    if-eqz v9, :cond_0

    .line 1360
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1362
    const/16 v9, 0xc

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    .line 1363
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v9

    sub-float v9, v1, v9

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    .line 1365
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v10, v10, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v11, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v11, v11, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v9

    const v10, 0x42652ee0

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    .line 1366
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v10, v10, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v11, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v9

    const v10, 0x42652ee0

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    .line 1369
    const/4 v9, 0x0

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    .line 1370
    sget v9, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1372
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v9, :cond_0

    .line 1373
    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v11, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v10, v9}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 1377
    :cond_0
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 1378
    .local v3, "oTransition":Lcom/voovio/sweep/Transition;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    .line 1379
    .local v0, "fAngle":F
    :goto_2
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float v9, v0, v9

    :goto_3
    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    .line 1380
    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 1383
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-nez v9, :cond_1

    .line 1384
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 1386
    .local v6, "ptStart":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 1387
    .local v5, "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    .line 1389
    .local v7, "vDir":Lcom/voovio/voo3d/data/Vector3;
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v4, v9, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 1390
    .local v4, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v8, v9, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 1391
    .local v8, "vN":Lcom/voovio/voo3d/data/Vector3;
    iget v9, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v10, 0x3dcccccd

    iget v11, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    const v11, 0x3dcccccd

    iget v12, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget v11, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const v12, 0x3dcccccd

    iget v13, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v5, v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 1393
    iget v9, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v10, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v9, v10

    iget v10, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v11, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v10, v11

    iget v11, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v12, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v11, v12

    invoke-virtual {v7, v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 1394
    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 1396
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v9}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    .line 1397
    .local v2, "fDot":F
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_7

    .line 1398
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v10, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 1399
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v10, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 1400
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v10, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 1408
    :goto_4
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1409
    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1411
    .end local v2    # "fDot":F
    .end local v4    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .end local v5    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .end local v6    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    .end local v7    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v8    # "vN":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    return-void

    .line 1358
    .end local v0    # "fAngle":F
    .end local v1    # "fAutodriveFOV":F
    .end local v3    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_2
    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    goto/16 :goto_0

    .line 1373
    .restart local v1    # "fAutodriveFOV":F
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1378
    .restart local v3    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1379
    .restart local v0    # "fAngle":F
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1403
    .restart local v2    # "fDot":F
    .restart local v4    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .restart local v5    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .restart local v6    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    .restart local v7    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .restart local v8    # "vN":Lcom/voovio/voo3d/data/Vector3;
    :cond_7
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 1404
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 1405
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_4
.end method

.method private computeCurrentPosition()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 464
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-nez v8, :cond_2

    const/4 v3, 0x0

    .line 466
    .local v3, "oCurTransition":Lcom/voovio/sweep/Transition;
    :goto_0
    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 467
    .local v5, "oVoovio":Lcom/voovio/sweep/Voovio;
    :goto_1
    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v8, v9

    .line 469
    .local v4, "oTransition":Lcom/voovio/sweep/Transition;
    iget v2, v5, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 470
    .local v2, "index":I
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v8, v8, v2

    iput v8, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 472
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "fPercentage":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    .line 476
    .local v6, "v":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 477
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v8}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 478
    if-eqz v3, :cond_0

    iget v8, v3, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v9, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v8, v9, :cond_0

    .line 479
    iget-object v8, v3, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v8, v6}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 482
    :cond_0
    invoke-virtual {v4, v6}, Lcom/voovio/sweep/Transition;->getAngleToV1(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    .line 483
    .local v0, "fAngle":F
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    aget v9, v9, v2

    div-float v1, v8, v9

    .line 497
    .end local v0    # "fAngle":F
    :goto_2
    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 499
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v10, v10, v2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 501
    .end local v1    # "fPercentage":F
    .end local v6    # "v":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    return-void

    .line 464
    .end local v2    # "index":I
    .end local v3    # "oCurTransition":Lcom/voovio/sweep/Transition;
    .end local v4    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_2
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v8, v8, Lcom/voovio/sweep/Rotation;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v8, Lcom/voovio/sweep/Rotation;

    iget-object v3, v8, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto :goto_0

    .line 466
    .restart local v3    # "oCurTransition":Lcom/voovio/sweep/Transition;
    :cond_4
    iget-object v8, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    move-object v5, v8

    goto/16 :goto_1

    .line 486
    .restart local v1    # "fPercentage":F
    .restart local v2    # "index":I
    .restart local v4    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .restart local v6    # "v":Lcom/voovio/voo3d/data/Vector3;
    :cond_5
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v8}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 487
    if-eqz v3, :cond_6

    iget v8, v3, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v9, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v8, v9, :cond_6

    .line 488
    iget-object v8, v3, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v8, v6}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 491
    :cond_6
    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v8, v8, v10

    if-nez v8, :cond_7

    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 493
    .local v7, "w":Lcom/voovio/voo3d/data/Vector3;
    :goto_3
    invoke-virtual {v6, v7}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 494
    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v8

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    aget v9, v9, v2

    div-float v1, v8, v9

    goto :goto_2

    .line 491
    .end local v7    # "w":Lcom/voovio/voo3d/data/Vector3;
    :cond_7
    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v8, v8, v10

    aget-object v8, v8, v10

    iget-object v7, v8, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_3
.end method

.method private computeTransitionMatrices()V
    .locals 4

    .prologue
    .line 1178
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    .line 1180
    .local v1, "oTempMatrix":Lcom/voovio/voo3d/data/Matrix4;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1191
    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 1192
    return-void

    .line 1181
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 1182
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 1188
    :goto_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 1184
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    goto :goto_1

    .line 1186
    :cond_2
    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    goto :goto_1
.end method

.method private computeVoovioMatrices()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1198
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v2, v4

    .line 1199
    .local v0, "oNextTransition":Lcom/voovio/sweep/Transition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    iget-object v2, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 1202
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v2, v5

    .line 1203
    .local v1, "oPrevTransition":Lcom/voovio/sweep/Transition;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    iget-object v2, v1, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 1205
    :cond_1
    return-void
.end method

.method private createSnapshot(IIII)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "clientWidth"    # I
    .param p4, "clientHeight"    # I

    .prologue
    const/4 v8, 0x1

    const v7, 0x8d41

    const v6, 0x8d40

    const/4 v5, 0x0

    .line 1079
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v2, v2, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    int-to-float v3, p3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v2, v2, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->y:F

    int-to-float v3, p4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->destroySnapshot()V

    .line 1082
    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-nez v2, :cond_4

    .line 1085
    new-instance v2, Lcom/voovio/gles/Snapshot;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/voovio/gles/Snapshot;-><init>(IIII)V

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    .line 1086
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v2}, Lcom/voovio/gles/Snapshot;->Create()V

    .line 1089
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    invoke-static {v8, v2, v5}, Landroid/opengl/GLES11Ext;->glGenRenderbuffersOES(I[II)V

    .line 1090
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    aget v2, v2, v5

    invoke-static {v7, v2}, Landroid/opengl/GLES11Ext;->glBindRenderbufferOES(II)V

    .line 1091
    const v2, 0x81a5

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v3, v3, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v4, v4, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v4, v4, Lcom/voovio/geometry/Point;->y:F

    float-to-int v4, v4

    invoke-static {v7, v2, v3, v4}, Landroid/opengl/GLES11Ext;->glRenderbufferStorageOES(IIII)V

    .line 1092
    invoke-static {v7, v5}, Landroid/opengl/GLES11Ext;->glBindRenderbufferOES(II)V

    .line 1095
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    invoke-static {v8, v2, v5}, Landroid/opengl/GLES11Ext;->glGenFramebuffersOES(I[II)V

    .line 1096
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    aget v2, v2, v5

    invoke-static {v6, v2}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    .line 1097
    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v4, v4, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    aget v4, v4, v5

    invoke-static {v6, v2, v3, v4, v5}, Landroid/opengl/GLES11Ext;->glFramebufferTexture2DOES(IIIII)V

    .line 1098
    const v2, 0x8d00

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    aget v3, v3, v5

    invoke-static {v6, v2, v7, v3}, Landroid/opengl/GLES11Ext;->glFramebufferRenderbufferOES(IIII)V

    .line 1099
    invoke-static {v6, v5}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    .line 1101
    invoke-static {}, Landroid/opengl/GLES11;->glGetError()I

    move-result v0

    .line 1102
    .local v0, "error":I
    if-eqz v0, :cond_3

    .line 1103
    const-string v2, "SweepView::Snapshot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GLES11 GLError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .end local v0    # "error":I
    :cond_2
    :goto_0
    return-void

    .line 1107
    .restart local v0    # "error":I
    :cond_3
    invoke-static {v6}, Landroid/opengl/GLES11Ext;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 1108
    .local v1, "status":I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_2

    .line 1109
    const-string v2, "SweepView::Snapshot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GLES11Ext Status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    .end local v0    # "error":I
    .end local v1    # "status":I
    :cond_4
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v2, p1, p2}, Lcom/voovio/gles/Snapshot;->setTextureSize(II)V

    goto :goto_0
.end method

.method private destroySnapshot()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1120
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-nez v0, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v0}, Lcom/voovio/gles/Snapshot;->Destroy()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    .line 1128
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    .line 1129
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    aput v2, v0, v1

    .line 1132
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    .line 1133
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    aput v2, v0, v1

    goto :goto_0
.end method

.method private destroySnapshotWithoutOpenGLContext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1139
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-nez v0, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v0}, Lcom/voovio/gles/Snapshot;->DestroyWithoutOpenGLContext()V

    .line 1144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    .line 1147
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    aput v1, v0, v2

    .line 1150
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    aput v1, v0, v2

    goto :goto_0
.end method

.method private drawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1561
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1564
    const/16 v1, 0x1700

    invoke-static {v1}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    .line 1565
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glLoadMatrixf([FI)V

    .line 1568
    const/4 v6, 0x1

    .line 1569
    .local v6, "bDrawVoovio":Z
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_0

    .line 1570
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 1571
    .local v0, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/voovio/sweep/Voovio;

    .line 1574
    .local v12, "oVoovio1":Lcom/voovio/sweep/Voovio;
    iget-boolean v1, v0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v12, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_9

    const/4 v6, 0x0

    .line 1577
    :goto_0
    if-nez v6, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1579
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 1581
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1582
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1584
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1586
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1587
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v12}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v3

    invoke-virtual {v12, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1589
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1591
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1592
    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v5, Lcom/voovio/sweep/Rotation;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Voovio;->drawRotation(Ljavax/microedition/khronos/opengles/GL10;F[FILcom/voovio/sweep/Rotation;)V

    .line 1594
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 1615
    .end local v0    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v12    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_0
    :goto_1
    if-eqz v6, :cond_8

    .line 1617
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-boolean v1, v1, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_7

    .line 1618
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v8, v1, v2

    .line 1619
    .local v8, "oNextTransition":Lcom/voovio/sweep/Transition;
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v10, v1, v2

    .line 1621
    .local v10, "oPrevTransition":Lcom/voovio/sweep/Transition;
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v8, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    move-object v9, v1

    .line 1622
    .local v9, "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :goto_2
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v10, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    move-object v11, v1

    .line 1624
    .local v11, "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :goto_3
    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v1, :cond_d

    .line 1625
    if-nez v11, :cond_1

    if-eqz v9, :cond_1

    iget-boolean v1, v9, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v1, :cond_3

    .line 1626
    :cond_1
    if-nez v9, :cond_2

    if-eqz v11, :cond_2

    iget-boolean v1, v11, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v1, :cond_3

    .line 1627
    :cond_2
    if-eqz v11, :cond_d

    iget-boolean v1, v11, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_d

    if-eqz v9, :cond_d

    iget-boolean v1, v9, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_d

    .line 1628
    :cond_3
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 1630
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1631
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1633
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1635
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1636
    if-eqz v11, :cond_4

    .line 1637
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v11}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v3

    invoke-virtual {v11, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1638
    :cond_4
    if-eqz v9, :cond_5

    .line 1639
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v9}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v3

    invoke-virtual {v9, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1641
    :cond_5
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1643
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1644
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1646
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 1654
    :goto_4
    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    if-eqz v1, :cond_7

    .line 1655
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_6

    .line 1656
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v2, Lcom/voovio/sweep/SweepView$8;

    invoke-direct {v2, p0}, Lcom/voovio/sweep/SweepView$8;-><init>(Lcom/voovio/sweep/SweepView;)V

    .line 1660
    const-wide/16 v3, 0x10

    .line 1656
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1663
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    .line 1668
    .end local v8    # "oNextTransition":Lcom/voovio/sweep/Transition;
    .end local v9    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    .end local v10    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .end local v11    # "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :cond_7
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    if-ne v1, v2, :cond_8

    .line 1669
    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_nFadeSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v7, v1, v2

    .line 1670
    .local v7, "fAlpha":F
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v1, p1, v7}, Lcom/voovio/gles/Snapshot;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 1673
    .end local v7    # "fAlpha":F
    :cond_8
    return-void

    .line 1574
    .restart local v0    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .restart local v12    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1597
    :cond_a
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1599
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1601
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v12, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1603
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1605
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 1606
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1608
    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1610
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    goto/16 :goto_1

    .line 1621
    .end local v0    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v12    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    .restart local v8    # "oNextTransition":Lcom/voovio/sweep/Transition;
    .restart local v10    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1622
    .restart local v9    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1649
    .restart local v11    # "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :cond_d
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 1651
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, p1, v2}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto/16 :goto_4
.end method

.method private executeMoveToTransition(Lcom/voovio/sweep/Transition;)V
    .locals 9
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 736
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v8

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 739
    .local v6, "index":I
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eq p1, v0, :cond_1

    .line 740
    iget-object v0, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    .line 741
    .local v7, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v7, v0, :cond_0

    .line 742
    iget v0, v7, Lcom/voovio/sweep/Voovio;->m_nId:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 743
    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Rotation;->Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V

    .line 749
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 758
    .end local v7    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_1
    :goto_1
    iget v0, p1, Lcom/voovio/sweep/Transition;->m_nMoveToPosition:I

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 760
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v2, v6, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v2, v2, v6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 761
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, v1, Lcom/voovio/sweep/Transition;->m_fD:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    .line 764
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 765
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 766
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 769
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 771
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeTransitionMatrices()V

    .line 736
    monitor-exit v8

    .line 773
    return-void

    .line 742
    .restart local v7    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget v1, v7, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    goto/16 :goto_0

    .line 752
    :cond_3
    invoke-virtual {p1}, Lcom/voovio/sweep/Transition;->Setup()V

    .line 754
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto :goto_1

    .line 736
    .end local v6    # "index":I
    .end local v7    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 3
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    const/4 v0, 0x0

    .line 644
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    if-eqz v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/voovio/sweep/SweepView$5;

    invoke-direct {v1, p0, p1}, Lcom/voovio/sweep/SweepView$5;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 706
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 693
    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nMoveToPosition:I

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 694
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->cameraToPositionInVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 695
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq p1, v2, :cond_2

    .line 696
    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    if-nez v2, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 697
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 702
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    .line 704
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V

    .line 690
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 696
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    goto :goto_1

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v2}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private finishTransitionIfNeeded()V
    .locals 3

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1290
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, v1, Lcom/voovio/sweep/Transition;->m_fD:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    sub-float/2addr v1, v2

    sget v2, Lcom/voovio/sweep/SweepView;->TRANSITION_FINISH_FRAMES:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1291
    .local v0, "fVel":F
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1292
    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    .line 1294
    :cond_0
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_TRANSITION:I

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1296
    .end local v0    # "fVel":F
    :cond_1
    return-void
.end method

.method private processDisplacements(FFFZ)V
    .locals 29
    .param p1, "fX"    # F
    .param p2, "fAngleX"    # F
    .param p3, "fAngleY"    # F
    .param p4, "bCheckRotationTriggers"    # Z

    .prologue
    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_14

    .line 1681
    const/16 v24, 0x0

    .line 1682
    .local v24, "fTurnDirection":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v2, v2, Lcom/voovio/sweep/Rotation;

    if-eqz v2, :cond_b

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v2, Lcom/voovio/sweep/Rotation;

    iget v0, v2, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    move/from16 v24, v0

    .line 1684
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_8

    const/high16 v2, -0x40800000

    cmpl-float v2, v24, v2

    if-nez v2, :cond_8

    .line 1685
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    .line 1696
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1698
    .local v21, "fDeltaD":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1699
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1701
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_4

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1703
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 1705
    const/4 v15, 0x0

    .line 1706
    .local v15, "bSetCurrentVoovio":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/voovio/sweep/Voovio;

    .line 1707
    .local v26, "oNextVoovio":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    .line 1708
    const/4 v15, 0x1

    .line 1710
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v25, v2, v3

    .line 1711
    .local v25, "oNextTransition":Lcom/voovio/sweep/Transition;
    if-eqz v25, :cond_5

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    move/from16 v0, v24

    neg-float v3, v0

    move/from16 v0, v21

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 1716
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 1723
    .end local v25    # "oNextTransition":Lcom/voovio/sweep/Transition;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 1727
    if-eqz v15, :cond_13

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 1729
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 1828
    .end local v15    # "bSetCurrentVoovio":Z
    .end local v21    # "fDeltaD":F
    .end local v24    # "fTurnDirection":F
    .end local v26    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    .line 1829
    :goto_4
    return-void

    .line 1686
    .restart local v24    # "fTurnDirection":F
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_9

    const/high16 v2, -0x40800000

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x3f800000

    cmpl-float v2, v24, v2

    if-nez v2, :cond_2

    .line 1687
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    goto/16 :goto_0

    .line 1690
    :cond_b
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-eq v2, v3, :cond_d

    :cond_c
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_e

    .line 1691
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    goto/16 :goto_0

    .line 1692
    :cond_e
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-eq v2, v3, :cond_10

    :cond_f
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_2

    .line 1693
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    goto/16 :goto_0

    .line 1700
    .restart local v21    # "fDeltaD":F
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    goto/16 :goto_1

    .line 1718
    .restart local v15    # "bSetCurrentVoovio":Z
    .restart local v26    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1719
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto/16 :goto_2

    .line 1732
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    goto/16 :goto_3

    .line 1734
    .end local v15    # "bSetCurrentVoovio":Z
    .end local v21    # "fDeltaD":F
    .end local v24    # "fTurnDirection":F
    .end local v26    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_7

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v5, v2, p1

    .line 1737
    .local v5, "fDeltaX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v6, v2, p1

    .line 1738
    .local v6, "fDeltaY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float v7, v2, p1

    .line 1740
    .local v7, "fDeltaZ":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v3, v6

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v3, v7

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 1746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    const v3, 0x42652ee0

    mul-float v18, v2, v3

    .line 1747
    .local v18, "fAngleDiffX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    const v3, 0x42652ee0

    mul-float v19, v2, v3

    .line 1748
    .local v19, "fAngleDiffY":F
    const v2, 0x3e19999a

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v20, v2, v3

    .line 1750
    .local v20, "fAngularStep":F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_16

    .line 1751
    :cond_15
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_18

    .line 1752
    :cond_16
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1753
    .local v16, "fAbsAngleDiffX":F
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 1755
    .local v17, "fAbsAngleDiffY":F
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_17

    .line 1756
    div-float v22, v18, v16

    .line 1757
    .local v22, "fSignX":F
    cmpg-float v2, v20, v16

    if-gez v2, :cond_1a

    move/from16 v0, v22

    neg-float v2, v0

    mul-float p2, v2, v20

    .line 1760
    .end local v22    # "fSignX":F
    :cond_17
    :goto_5
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_18

    .line 1761
    div-float v23, v19, v17

    .line 1762
    .local v23, "fSignY":F
    cmpg-float v2, v20, v17

    if-gez v2, :cond_1b

    move/from16 v0, v23

    neg-float v2, v0

    mul-float p3, v2, v20

    .line 1767
    .end local v16    # "fAbsAngleDiffX":F
    .end local v17    # "fAbsAngleDiffY":F
    .end local v23    # "fSignY":F
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/voovio/sweep/SweepView;->testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;

    move-result-object v27

    .line 1768
    .local v27, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_1c

    .line 1769
    if-eqz v27, :cond_1d

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1770
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 1772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    .line 1773
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_19

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1776
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeTransitionMatrices()V

    goto/16 :goto_4

    .line 1757
    .end local v27    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v16    # "fAbsAngleDiffX":F
    .restart local v17    # "fAbsAngleDiffY":F
    .restart local v22    # "fSignX":F
    :cond_1a
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 p2, v0

    goto :goto_5

    .line 1762
    .end local v22    # "fSignX":F
    .restart local v23    # "fSignY":F
    :cond_1b
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_6

    .line 1781
    .end local v16    # "fAbsAngleDiffX":F
    .end local v17    # "fAbsAngleDiffY":F
    .end local v23    # "fSignY":F
    .restart local v27    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_1c
    if-eqz v27, :cond_1d

    .line 1782
    const/4 v7, 0x0

    move v6, v7

    move v5, v7

    .line 1787
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    move-result v14

    .line 1795
    .local v14, "bLimitReached":Z
    if-eqz v27, :cond_1e

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 1800
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-nez v2, :cond_1f

    if-eqz p4, :cond_7

    .line 1801
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    invoke-virtual {v2}, Lcom/voovio/sweep/FrustumLimiter;->getTriggerIntersection()Ljava/lang/String;

    move-result-object v28

    .line 1802
    .local v28, "strTriggerIntersection":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1803
    .local v9, "oTurnTransition":Lcom/voovio/sweep/Transition;
    const-string v2, "left"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_20

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_22

    .line 1804
    :cond_20
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_22

    .line 1805
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 1810
    :cond_21
    :goto_7
    if-eqz v9, :cond_7

    .line 1811
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/voovio/sweep/Rotation;->Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget v2, v2, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    .line 1816
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1818
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeTransitionMatrices()V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    goto/16 :goto_3

    .line 1806
    :cond_22
    const-string v2, "right"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_23

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_21

    .line 1807
    :cond_23
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_21

    .line 1808
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_7
.end method

.method private requestMoveToTransition(Lcom/voovio/sweep/Transition;)V
    .locals 5
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    const/4 v4, 0x0

    .line 711
    iget-object v2, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 712
    .local v0, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v2, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 714
    .local v1, "oVoovio1":Lcom/voovio/sweep/Voovio;
    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-lt v2, v3, :cond_0

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ge v2, v3, :cond_2

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/ResourceManager;->isWaitingForReady(Lcom/voovio/sweep/Transition;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 716
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 718
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v3, v2, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 719
    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    .line 721
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Transition;)V

    .line 718
    monitor-exit v3

    .line 729
    :cond_1
    :goto_0
    return-void

    .line 718
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 726
    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Transition;)V

    .line 727
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToTransition(Lcom/voovio/sweep/Transition;)V

    goto :goto_0
.end method

.method private requestMoveToVoovio(Lcom/voovio/sweep/Voovio;Z)V
    .locals 2
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "bFade"    # Z

    .prologue
    .line 621
    iput-boolean p2, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    .line 623
    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ge v0, v1, :cond_2

    .line 624
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->isWaitingForReady(Lcom/voovio/sweep/Voovio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, v0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    .line 631
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Voovio;)V

    .line 628
    monitor-exit v1

    .line 639
    :cond_1
    :goto_0
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Voovio;)V

    .line 637
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_0
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 12
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    const/high16 v11, 0x3f800000

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 794
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 796
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeVoovioMatrices()V

    .line 799
    const/4 v3, 0x0

    .local v3, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/4 v2, 0x0

    .line 800
    .local v2, "oNextTransition":Lcom/voovio/sweep/Transition;
    const/4 v1, 0x0

    .local v1, "fPrevAngle":F
    const/4 v0, 0x0

    .line 802
    .local v0, "fNextAngle":F
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    iput-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 803
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_0

    .line 804
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v6, v8

    .line 805
    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    .line 808
    :cond_0
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_1

    .line 809
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v6, v10

    .line 810
    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    .line 813
    :cond_1
    if-eqz v2, :cond_9

    cmpl-float v6, v0, v9

    if-lez v6, :cond_9

    if-eqz v3, :cond_9

    cmpg-float v6, v1, v9

    if-gez v6, :cond_9

    .line 814
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_8

    .line 815
    :cond_2
    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 824
    :cond_3
    :goto_0
    if-eqz v2, :cond_c

    cmpg-float v6, v0, v9

    if-gez v6, :cond_c

    if-eqz v3, :cond_c

    cmpl-float v6, v1, v9

    if-lez v6, :cond_c

    .line 825
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_b

    .line 826
    :cond_4
    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 836
    :cond_5
    :goto_1
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 837
    .local v5, "ptStart":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    .line 838
    .local v4, "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v6, v6, Lcom/voovio/sweep/Rotation;

    if-eqz v6, :cond_e

    .line 839
    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->reset()V

    .line 840
    invoke-virtual {v4, v11, v9, v9}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 867
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 868
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 869
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 870
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 872
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 873
    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 876
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 879
    iget-boolean v6, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v6, :cond_7

    .line 881
    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->hasAutodrive()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 882
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAutodriveVelocity()V

    .line 893
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 896
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 897
    return-void

    .line 816
    .end local v4    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .end local v5    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    :cond_8
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 817
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    .line 819
    :cond_9
    if-eqz v2, :cond_a

    cmpl-float v6, v0, v9

    if-lez v6, :cond_a

    .line 820
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    .line 821
    :cond_a
    if-eqz v3, :cond_3

    cmpg-float v6, v1, v9

    if-gez v6, :cond_3

    .line 822
    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    .line 827
    :cond_b
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 828
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    .line 830
    :cond_c
    if-eqz v2, :cond_d

    cmpg-float v6, v0, v9

    if-gez v6, :cond_d

    .line 831
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    .line 832
    :cond_d
    if-eqz v3, :cond_5

    cmpl-float v6, v1, v9

    if-lez v6, :cond_5

    .line 833
    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    .line 842
    .restart local v4    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .restart local v5    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    :cond_e
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v6, :cond_12

    .line 843
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v6, v7, :cond_10

    .line 844
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 845
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_f

    .line 846
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    .line 849
    :cond_f
    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v6, v11

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    .line 852
    :cond_10
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v6, v7, :cond_6

    .line 853
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v10

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    :goto_4
    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 854
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    .line 853
    :cond_11
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_4

    .line 858
    :cond_12
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 859
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_13

    .line 860
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    .line 863
    :cond_13
    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v6, v11

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    .line 884
    :cond_14
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v7, Lcom/voovio/sweep/SweepView$7;

    invoke-direct {v7, p0}, Lcom/voovio/sweep/SweepView$7;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V
    .locals 4
    .param p1, "oViewport"    # Lcom/voovio/voo3d/view/Viewport;

    .prologue
    .line 1065
    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11;->glViewport(IIII)V

    .line 1068
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    .line 1069
    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    .line 1070
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getRatio()F

    move-result v1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-static {v0, v1, v2, v3}, Lcom/voovio/gles/GLESUtil;->gluPerspective(FFFF)V

    .line 1073
    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/voovio/sweep/SweepView;->createSnapshot(IIII)V

    .line 1074
    return-void
.end method

.method private setGLViewportAndProjection(Z)V
    .locals 23
    .param p1, "bQueueEvent"    # Z

    .prologue
    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v13

    .line 1005
    .local v13, "oViewport":Lcom/voovio/voo3d/view/Viewport;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1006
    .local v3, "clientWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1007
    .local v2, "clientHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v7

    .line 1009
    .local v7, "fFOV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1010
    int-to-float v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v18, v19

    .line 1011
    .local v9, "fScaleX":F
    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v18, v19

    .line 1012
    .local v10, "fScaleY":F
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1014
    .local v8, "fScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1015
    .local v14, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v11, v0

    .line 1018
    .local v11, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 1019
    .local v4, "fAspectSweep":F
    int-to-float v0, v3

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 1020
    .local v5, "fAspectViewport":F
    const/high16 v18, 0x3f000000

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    const-wide/high16 v19, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v18, v19

    .line 1022
    .local v6, "fF":F
    cmpg-float v18, v4, v5

    if-gez v18, :cond_2

    .line 1023
    const/high16 v18, 0x40000000

    mul-float v18, v18, v6

    const-wide/high16 v19, 0x3fe0000000000000L

    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v12, v0

    .line 1024
    .local v12, "h_new":F
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v18, v18, v19

    div-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1026
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1027
    move v11, v2

    .line 1040
    .end local v12    # "h_new":F
    :goto_0
    sub-int v18, v3, v14

    div-int/lit8 v16, v18, 0x2

    .line 1041
    .local v16, "x":I
    sub-int v18, v2, v11

    div-int/lit8 v17, v18, 0x2

    .line 1044
    .local v17, "y":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    .line 1045
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    .line 1046
    invoke-virtual {v13, v14}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    .line 1047
    invoke-virtual {v13, v11}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    .line 1052
    .end local v4    # "fAspectSweep":F
    .end local v5    # "fAspectViewport":F
    .end local v6    # "fF":F
    .end local v8    # "fScale":F
    .end local v9    # "fScaleX":F
    .end local v10    # "fScaleY":F
    .end local v11    # "h":I
    .end local v14    # "w":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1053
    if-eqz p1, :cond_3

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1059
    :cond_1
    :goto_1
    return-void

    .line 1030
    .restart local v4    # "fAspectSweep":F
    .restart local v5    # "fAspectViewport":F
    .restart local v6    # "fF":F
    .restart local v8    # "fScale":F
    .restart local v9    # "fScaleX":F
    .restart local v10    # "fScaleY":F
    .restart local v11    # "h":I
    .restart local v14    # "w":I
    :cond_2
    const/high16 v18, 0x40000000

    mul-float v18, v18, v6

    const-wide/high16 v19, 0x3fe0000000000000L

    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    mul-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v15, v0

    .line 1031
    .local v15, "w_new":F
    mul-int v18, v3, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v19, v15, v4

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v11, v0

    .line 1036
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1037
    move v14, v3

    goto :goto_0

    .line 1056
    .end local v4    # "fAspectSweep":F
    .end local v5    # "fAspectViewport":F
    .end local v6    # "fF":F
    .end local v8    # "fScale":F
    .end local v9    # "fScaleX":F
    .end local v10    # "fScaleY":F
    .end local v11    # "h":I
    .end local v14    # "w":I
    .end local v15    # "w_new":F
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V

    goto :goto_1
.end method

.method private startAutodriveIfNeeded()V
    .locals 4

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    if-ltz v0, :cond_0

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    .line 781
    new-instance v0, Lcom/voovio/sweep/SweepView$6;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$6;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    .line 787
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 789
    :cond_0
    return-void
.end method

.method private startFrom(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 595
    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 598
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    .line 601
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    .line 604
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/voovio/sweep/SweepView;->requestMoveToVoovio(Lcom/voovio/sweep/Voovio;Z)V

    goto :goto_0

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1
.end method

.method private testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;
    .locals 4
    .param p1, "pt0"    # Lcom/voovio/voo3d/data/Vector3;
    .param p2, "pt1"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v2, 0x0

    .line 1157
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1171
    :cond_0
    :goto_0
    return-object v1

    .line 1161
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    move-object v1, v2

    .line 1171
    goto :goto_0

    .line 1163
    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 1164
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v3, v0

    .line 1166
    .local v1, "oTransition":Lcom/voovio/sweep/Transition;
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/voovio/sweep/Transition;->TestTransition(ILcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/scenegraph/Camera3D;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1161
    .end local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCameraViewport()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 970
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 971
    .local v2, "clientWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 974
    .local v1, "clientHeight":I
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v3

    .line 975
    .local v3, "oViewport":Lcom/voovio/voo3d/view/Viewport;
    invoke-virtual {v3, v8}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    .line 976
    invoke-virtual {v3, v8}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    .line 977
    invoke-virtual {v3, v2}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    .line 978
    invoke-virtual {v3, v1}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    .line 982
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v7, v7, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    .line 984
    .local v4, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    move v0, v5

    .line 986
    .local v0, "bZoomIn":Z
    :goto_0
    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    .line 987
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 989
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 991
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v7, v8}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 993
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v7, :cond_0

    .line 994
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v7, v6}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 997
    :cond_0
    invoke-direct {p0, v5}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    .line 998
    return-void

    .end local v0    # "bZoomIn":Z
    :cond_1
    move v0, v6

    .line 984
    goto :goto_0
.end method

.method private updateScene()V
    .locals 19

    .prologue
    .line 1416
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-ne v1, v2, :cond_f

    .line 1418
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    const/high16 v2, 0x447a0000

    div-float v12, v1, v2

    .line 1419
    .local v12, "fFactor":F
    const/4 v15, 0x0

    .local v15, "fX":F
    const/4 v9, 0x0

    .local v9, "fAngleX":F
    const/4 v10, 0x0

    .line 1421
    .local v10, "fAngleY":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v1, :cond_5

    .line 1422
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 1423
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    mul-float v15, v1, v12

    .line 1490
    :cond_0
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_2

    .line 1491
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9, v10, v1}, Lcom/voovio/sweep/SweepView;->processDisplacements(FFFZ)V

    .line 1551
    .end local v9    # "fAngleX":F
    .end local v10    # "fAngleY":F
    .end local v12    # "fFactor":F
    .end local v15    # "fX":F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_3

    .line 1552
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    if-eq v1, v2, :cond_3

    .line 1553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1554
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    .line 1556
    :cond_3
    return-void

    .line 1426
    .restart local v9    # "fAngleX":F
    .restart local v10    # "fAngleY":F
    .restart local v12    # "fFactor":F
    .restart local v15    # "fX":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    mul-float/2addr v1, v2

    mul-float v10, v1, v12

    .line 1428
    goto :goto_0

    .line 1430
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d

    .line 1431
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    mul-float v13, v1, v12

    .line 1433
    .local v13, "fLength":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v1, v1, Lcom/voovio/sweep/Rotation;

    if-nez v1, :cond_6

    .line 1434
    move v15, v13

    .line 1435
    goto :goto_0

    .line 1436
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    .line 1437
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    .line 1438
    .local v18, "ptStart":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    .line 1440
    .local v17, "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v14, v1, v2

    .line 1442
    .local v14, "fSign":F
    const/16 v16, 0x0

    .line 1443
    .local v16, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_a

    .line 1444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    .line 1447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 1448
    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1449
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1470
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 1471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 1472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 1473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 1475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v11

    .line 1476
    .local v11, "fDot":F
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_7

    .line 1477
    move v15, v13

    .line 1480
    :cond_7
    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1481
    invoke-static/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_0

    .line 1451
    .end local v11    # "fDot":F
    :cond_8
    move-object/from16 v0, v18

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    move-object/from16 v0, v18

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2

    .line 1454
    :cond_9
    move-object/from16 v0, v18

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    move-object/from16 v0, v18

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2

    .line 1457
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_c

    .line 1460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v16, v1, v2

    .line 1461
    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1462
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    .line 1464
    :cond_b
    move-object/from16 v0, v17

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v2, 0x3f800000

    sub-float/2addr v1, v2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v17

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    .line 1467
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    .line 1484
    .end local v13    # "fLength":F
    .end local v14    # "fSign":F
    .end local v16    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v17    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .end local v18    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1485
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    mul-float v9, v1, v12

    .line 1486
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    mul-float v10, v1, v12

    goto/16 :goto_0

    .line 1493
    .end local v9    # "fAngleX":F
    .end local v10    # "fAngleY":F
    .end local v12    # "fFactor":F
    .end local v15    # "fX":F
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    if-ne v1, v2, :cond_10

    .line 1495
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    .line 1497
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_nFadeSteps:I

    if-ne v1, v2, :cond_2

    .line 1499
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1500
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    goto/16 :goto_1

    .line 1503
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_TRANSITION:I

    if-ne v1, v2, :cond_17

    .line 1504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_16

    .line 1505
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    .line 1506
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1507
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1509
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, v1, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v1, v2, :cond_12

    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    .line 1512
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 1517
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_fD:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_15

    .line 1518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 1519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 1521
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 1522
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1529
    :cond_13
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    goto/16 :goto_1

    .line 1508
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    goto/16 :goto_3

    .line 1524
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 1525
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 1526
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto :goto_4

    .line 1532
    :cond_16
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto/16 :goto_1

    .line 1534
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    if-ne v1, v2, :cond_2

    .line 1535
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    if-ne v1, v2, :cond_18

    .line 1536
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto/16 :goto_1

    .line 1539
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addFov(F)V

    .line 1541
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    neg-float v8, v8

    invoke-virtual/range {v1 .. v8}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    .line 1546
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    goto/16 :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 313
    :cond_0
    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    .line 315
    invoke-virtual {p0, v1}, Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 317
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    .line 319
    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    .line 324
    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 326
    :cond_2
    return-void
.end method

.method public getAutodrive()Z
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    return v0
.end method

.method public getAutodriveFov()F
    .locals 1

    .prologue
    .line 1937
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    return v0
.end method

.method public getAvailableDirections()[Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1961
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 1965
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v3, :cond_0

    .line 1969
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v8, :cond_2

    .line 1985
    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    return-object v3

    .line 1962
    :cond_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v7, v3, v1

    .line 1961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1970
    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v1

    if-eqz v3, :cond_a

    .line 1971
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v3, v1

    .line 1972
    .local v2, "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    .line 1973
    .local v0, "fAngle":F
    if-nez v1, :cond_3

    cmpg-float v3, v0, v6

    if-ltz v3, :cond_4

    :cond_3
    if-ne v1, v5, :cond_5

    cmpl-float v3, v0, v6

    if-lez v3, :cond_5

    .line 1974
    :cond_4
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v5, v3, v7

    .line 1975
    :cond_5
    if-nez v1, :cond_6

    cmpl-float v3, v0, v6

    if-nez v3, :cond_6

    .line 1976
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v5, v3, v5

    .line 1977
    :cond_6
    if-nez v1, :cond_7

    cmpl-float v3, v0, v6

    if-gtz v3, :cond_8

    :cond_7
    if-ne v1, v5, :cond_9

    cmpg-float v3, v0, v6

    if-gez v3, :cond_9

    .line 1978
    :cond_8
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v5, v3, v8

    .line 1979
    :cond_9
    if-ne v1, v5, :cond_a

    cmpl-float v3, v0, v6

    if-nez v3, :cond_a

    .line 1980
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    const/4 v4, 0x3

    aput-boolean v5, v3, v4

    .line 1969
    .end local v0    # "fAngle":F
    .end local v2    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getImagePositions()[I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    return-object v0
.end method

.method public getMaxPosition()I
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getTotalNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getZoomInFov()F
    .locals 1

    .prologue
    .line 1949
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    return v0
.end method

.method public hasAutodrive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1241
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveToPosition(IZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "fade"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1210
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v4, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/voovio/sweep/SweepView;->setAutodrive(ZZ)V

    .line 1214
    sget v4, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1216
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1217
    :try_start_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1218
    .local v1, "nVoovios":I
    const/4 v0, 0x0

    .line 1219
    .local v0, "index":I
    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v4, v4, v0

    if-gt p1, v4, :cond_4

    .line 1222
    :cond_1
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v4, v4, v0

    if-eq p1, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 1224
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v4, v4, v0

    if-ge p1, v4, :cond_5

    .line 1225
    :cond_3
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 1226
    .local v3, "oVoovio":Lcom/voovio/sweep/Voovio;
    iput p1, v3, Lcom/voovio/sweep/Voovio;->m_nMoveToPosition:I

    .line 1227
    invoke-direct {p0, v3, p2}, Lcom/voovio/sweep/SweepView;->requestMoveToVoovio(Lcom/voovio/sweep/Voovio;Z)V

    .line 1216
    .end local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "nVoovios":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1220
    .restart local v0    # "index":I
    .restart local v1    # "nVoovios":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1230
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Transition;

    .line 1231
    .local v2, "oTransition":Lcom/voovio/sweep/Transition;
    iput p1, v2, Lcom/voovio/sweep/Transition;->m_nMoveToPosition:I

    .line 1232
    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->requestMoveToTransition(Lcom/voovio/sweep/Transition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 2127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2128
    .local v0, "currTimePick_ms":J
    iget-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    sub-long v3, v0, v3

    long-to-float v2, v3

    .line 2132
    .local v2, "realTimeElapsed_ms":F
    :goto_0
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const/high16 v4, 0x421c0000

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v4, 0x42200000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 2135
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    sub-float/2addr v4, v5

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 2137
    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 2143
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2144
    :try_start_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v3}, Lcom/voovio/sweep/ResourceManager;->loop()V

    .line 2143
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2148
    :try_start_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateScene()V

    .line 2149
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2147
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2151
    return-void

    .line 2128
    .end local v2    # "realTimeElapsed_ms":F
    :cond_0
    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    goto :goto_0

    .line 2143
    .restart local v2    # "realTimeElapsed_ms":F
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2147
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 331
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 334
    invoke-virtual {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 336
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 338
    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    .line 339
    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 340
    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    .line 342
    const/high16 v3, 0x418c0000

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 343
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 344
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 346
    sget v3, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 348
    iput-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    .line 350
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/high16 v4, -0x40800000

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 353
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 354
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 357
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v4, v4, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 358
    .local v2, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v2, v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 360
    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 363
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 368
    .end local v2    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->destroySnapshotWithoutOpenGLContext()V

    .line 371
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_2

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-lt v0, v1, :cond_3

    .line 382
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_2
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->clearWithoutOpenGLContext()V

    .line 385
    iput-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    .line 386
    return-void

    .line 373
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_3
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 374
    .restart local v2    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v4, :cond_4

    .line 375
    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->DestroyWithoutOpenGLContext()V

    .line 376
    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 372
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 392
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 295
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    .line 298
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 300
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 302
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    .line 305
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2120
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 2078
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES11;->glFrontFace(I)V

    .line 2080
    const/16 v0, 0x1d01

    invoke-static {v0}, Landroid/opengl/GLES11;->glShadeModel(I)V

    .line 2081
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES11;->glClearColor(FFFF)V

    .line 2082
    invoke-static {v2}, Landroid/opengl/GLES11;->glClearDepthf(F)V

    .line 2083
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 2084
    const/16 v0, 0x201

    invoke-static {v0}, Landroid/opengl/GLES11;->glDepthFunc(I)V

    .line 2086
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-static {v0, v1}, Landroid/opengl/GLES11;->glHint(II)V

    .line 2089
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexEnvx(III)V

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    .line 2093
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v0, :cond_1

    .line 2096
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$11;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepView$11;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2114
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    .line 2107
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$12;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepView$12;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTransitionReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Transition;)V
    .locals 2
    .param p1, "rm"    # Lcom/voovio/sweep/ResourceManager;
    .param p2, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$10;

    invoke-direct {v1, p0, p2}, Lcom/voovio/sweep/SweepView$10;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2068
    return-void
.end method

.method public onVoovioReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1, "rm"    # Lcom/voovio/sweep/ResourceManager;
    .param p2, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$9;

    invoke-direct {v1, p0, p2}, Lcom/voovio/sweep/SweepView$9;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2056
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 610
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 613
    :cond_0
    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/voovio/sweep/SweepView;->moveToPosition(IZ)V

    goto :goto_0
.end method

.method public setAutodrive(Z)V
    .locals 1
    .param p1, "bAutodrive"    # Z

    .prologue
    .line 1255
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/SweepView;->setAutodrive(ZZ)V

    .line 1256
    return-void
.end method

.method public setAutodrive(ZZ)V
    .locals 2
    .param p1, "bAutodrive"    # Z
    .param p2, "bFinishTransition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1262
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->hasAutodrive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1263
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAutodriveVelocity()V

    .line 1279
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eq p1, v0, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v0, p1}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onAutodriveStateChanged(Z)V

    .line 1282
    :cond_1
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    .line 1283
    return-void

    .line 1264
    :cond_2
    if-nez p1, :cond_0

    .line 1266
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v0, :cond_3

    .line 1267
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    .line 1268
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 1270
    if-eqz p2, :cond_0

    .line 1271
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->finishTransitionIfNeeded()V

    goto :goto_0

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public setAutodriveFov(F)V
    .locals 0
    .param p1, "fov"    # F

    .prologue
    .line 1943
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    .line 1944
    return-void
.end method

.method public setAutodriveOnStart(I)V
    .locals 0
    .param p1, "nAutodriveOnStart"    # I

    .prologue
    .line 1844
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    .line 1845
    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0
    .param p1, "fForward"    # F
    .param p2, "fSideward"    # F

    .prologue
    .line 1930
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    .line 1931
    iput p2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    .line 1932
    return-void
.end method

.method public setCameraDisplacements(FF)V
    .locals 8
    .param p1, "fY"    # F
    .param p2, "fZ"    # F

    .prologue
    .line 1887
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v3, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v2, v3, :cond_1

    .line 1896
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1891
    const/high16 v2, 0x40000000

    :try_start_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v0, v2, v4

    .line 1892
    .local v0, "fH":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1894
    .local v1, "fScale":F
    const/4 v2, 0x0

    mul-float v4, p1, v1

    mul-float v5, p2, v1

    const/4 v6, 0x0

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/voovio/sweep/SweepView;->processDisplacements(FFFZ)V

    .line 1890
    monitor-exit v3

    goto :goto_0

    .end local v0    # "fH":F
    .end local v1    # "fScale":F
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCameraZoomIncrement(FFF)V
    .locals 5
    .param p1, "fIncrement"    # F
    .param p2, "fCenterX"    # F
    .param p3, "fCenterY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1850
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v1, v2, :cond_1

    .line 1882
    :cond_0
    :goto_0
    return-void

    .line 1853
    :cond_1
    cmpl-float v1, p1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gtz v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    cmpg-float v1, p1, v3

    if-ltz v1, :cond_0

    .line 1862
    :cond_3
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1864
    .local v0, "fPrevFOV":F
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const v2, 0x3dcccccd

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1865
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1866
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1870
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 1872
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    .line 1874
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v1, v2, v3}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 1876
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_0

    .line 1877
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 1878
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v1, v4}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 1879
    :cond_5
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1880
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    goto :goto_0

    .line 1867
    :cond_6
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 1868
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    goto :goto_1
.end method

.method public setImageProvider(Lcom/voovio/sweep/ImageProvider;)V
    .locals 1
    .param p1, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->setImageProvider(Lcom/voovio/sweep/ImageProvider;)V

    .line 398
    return-void
.end method

.method public setOnSweepViewListener(Lcom/voovio/sweep/SweepView$OnSweepViewListener;)V
    .locals 0
    .param p1, "oListener"    # Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    .line 1839
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 1
    .param p1, "sweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;I)V

    .line 529
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;I)V
    .locals 6
    .param p1, "sweep"    # Lcom/voovio/sweep/Sweep;
    .param p2, "index"    # I

    .prologue
    .line 534
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v3, p1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 539
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 541
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 543
    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    .line 544
    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 545
    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    .line 547
    sget v3, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 549
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 550
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    .line 552
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 554
    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 556
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    .line 557
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    .line 558
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    .line 562
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_1

    .line 563
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-lt v0, v1, :cond_4

    .line 572
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 574
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 576
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_3

    .line 577
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    .line 579
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    .line 581
    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v3, :cond_2

    .line 582
    invoke-direct {p0, p2}, Lcom/voovio/sweep/SweepView;->startFrom(I)V

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAllPositions()V

    .line 537
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 564
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 565
    .local v2, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v5, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v5, :cond_5

    .line 566
    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->Destroy()V

    .line 567
    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setVelocity(FFF)V
    .locals 4
    .param p1, "fForward"    # F
    .param p2, "fUpward"    # F
    .param p3, "fRightward"    # F

    .prologue
    const/4 v3, 0x0

    .line 1901
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v1, v2, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    .line 1905
    iput p3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 1906
    iput p2, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    .line 1908
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_2

    .line 1909
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    .line 1910
    .local v0, "fVel":F
    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    mul-float/2addr v1, v0

    const/high16 v2, 0x447a0000

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    .line 1913
    .end local v0    # "fVel":F
    :cond_2
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 1914
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 1915
    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    goto :goto_0

    .line 1909
    :cond_3
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    goto :goto_1

    .line 1916
    :cond_4
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1917
    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    goto :goto_0
.end method

.method public setZoomInFov(F)V
    .locals 0
    .param p1, "fov"    # F

    .prologue
    .line 1955
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    .line 1956
    return-void
.end method

.method public startRequestingFrames(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "config"    # I

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v0, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2000
    new-instance v0, Lcom/voovio/sweep/SweepOffScreen;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;-><init>(IIIILcom/voovio/sweep/ResourceManager;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 2001
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/SweepOffScreen;->setAutodriveVelocity(FF)V

    .line 2002
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v1}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    goto :goto_0
.end method

.method public stopInteraction()V
    .locals 0

    .prologue
    .line 1924
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->finishTransitionIfNeeded()V

    .line 1925
    return-void
.end method

.method public stopRequestingFrames()V
    .locals 2

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    .line 2009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 2011
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/ResourceManager;->setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V

    .line 2012
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 2013
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 2015
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2016
    return-void
.end method

.method public toogleZoomLevel(FF)V
    .locals 12
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 1302
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v7, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v6, v7, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v1, v6

    .line 1306
    .local v1, "clientWidth":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 1309
    .local v0, "clientHeight":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 1311
    .local v5, "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 1312
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v6, v6, v7

    if-lez v6, :cond_0

    .line 1315
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    div-float v2, v6, v0

    .line 1316
    .local v2, "fScale":F
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    div-float v4, v6, v7

    .line 1317
    .local v4, "s":F
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v6, v4

    .line 1318
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v7, v4

    const/high16 v8, 0x40000000

    div-float v8, v0, v8

    sub-float/2addr v8, p2

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 1319
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v8, v4

    const/high16 v9, 0x40000000

    div-float v9, v1, v9

    sub-float v9, p1, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 1317
    invoke-virtual {v5, v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 1320
    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 1322
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1329
    .end local v2    # "fScale":F
    .end local v4    # "s":F
    :goto_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v3

    .line 1330
    .local v3, "oTempCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 1331
    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v9, 0x1

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 1333
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v3, v7}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 1335
    iget-object v6, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1337
    const/16 v6, 0x8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    .line 1338
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    .line 1340
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v7}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v7, 0x42652ee0

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    .line 1341
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v7, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v7}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v7, 0x42652ee0

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    .line 1343
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1346
    const/4 v6, 0x0

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    .line 1347
    sget v6, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1349
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v6, :cond_0

    .line 1350
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v7, v6}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    goto/16 :goto_0

    .line 1324
    .end local v3    # "oTempCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    :cond_2
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1326
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    goto/16 :goto_1

    .line 1350
    .restart local v3    # "oTempCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method
