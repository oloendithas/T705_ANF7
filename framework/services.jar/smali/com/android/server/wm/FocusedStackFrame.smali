.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 1.0f

.field private static final DEBUG_STACK_FRAME:Z = true

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplayId:I

.field private final mFocusedFrameImage:Landroid/graphics/NinePatch;

.field private final mFocusedFrameOutShadowSize:I

.field private mForceReDraw:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private final mLineColor:I

.field final mLock:Ljava/lang/Object;

.field private final mScreenSize:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I

.field private final mThicknessForUnFocused:I

.field private final mTmpDrawRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v9, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    .line 61
    iput-object v9, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 71
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    .line 77
    const/4 v7, 0x0

    .line 83
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 87
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 93
    iput-object p4, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    .line 95
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    .line 96
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mThicknessForUnFocused:I

    .line 98
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    .line 100
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805ed

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 101
    .local v8, "focusedFrameBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v1, v8, v2, v9}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/NinePatch;

    .line 102
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    .line 104
    return-void

    .line 89
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "focusedFrameBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private adjustUnFocusedBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "unFocusBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 158
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 159
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 160
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 161
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 162
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 165
    :cond_0
    return-void
.end method

.method private draw(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "color"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 191
    :goto_0
    if-nez v0, :cond_0

    .line 192
    :try_start_1
    monitor-exit v2

    .line 210
    :goto_1
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/NinePatch;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 208
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0

    .line 188
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 216
    return-void
.end method


# virtual methods
.method public adjustBounds(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thick"    # I

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f000000

    .line 125
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    .line 126
    iget v1, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 128
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1

    .line 129
    iget v1, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 131
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    .line 132
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, p2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 134
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_3

    .line 135
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, p2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 140
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_4

    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 141
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 142
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 143
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 144
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 148
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 149
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 150
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 151
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 153
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 115
    :goto_0
    if-nez v0, :cond_0

    .line 116
    :try_start_1
    monitor-exit v2

    .line 122
    :goto_1
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 121
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 275
    return-void
.end method

.method public setForceReDraw(Z)V
    .locals 0
    .param p1, "isUnFocusedRectResized"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 293
    return-void
.end method

.method public setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 279
    return-void
.end method

.method public setScreenSize(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "screenSize"    # Landroid/graphics/Rect;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/FocusedStackFrame;->clear()V

    .line 175
    :cond_0
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FocusedStackFrame;->setVisibility(ZZ)V

    .line 223
    return-void
.end method

.method setVisibility(ZZ)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "forceDraw"    # Z

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 233
    :cond_0
    if-eqz p1, :cond_5

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_4

    .line 251
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 252
    .local v0, "adjustbounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/FocusedStackFrame;->adjustBounds(Landroid/graphics/Rect;I)V

    .line 255
    :cond_3
    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/FocusedStackFrame;->draw(Landroid/graphics/Rect;I)V

    .line 257
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 261
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    .end local v0    # "adjustbounds":Landroid/graphics/Rect;
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 265
    .end local v1    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_0
.end method
