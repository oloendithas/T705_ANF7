.class public Lcom/sec/android/glview/TwGLContext;
.super Ljava/lang/Object;
.source "TwGLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/IGLContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;,
        Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;
    }
.end annotation


# static fields
.field public static final FOCUSED:I = 0x1

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final HOVER_ENTER:I = 0x0

.field public static final HOVER_EXIT:I = 0x1

.field public static final NOT_FOCUSED:I = 0x0

.field public static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TwGLContext"

.field private static mLastOrientation:I

.field private static mOrientationCompensationValue:I

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field private mAlignToPixel:Z

.field protected mApplicationContext:Landroid/content/Context;

.field private mAutoOrientationStatus:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mDensity:F

.field private mDirty:Z

.field private mEffectLibInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFocusResId:I

.field private mFrameNum:I

.field private mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

.field private mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

.field private mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHeight:I

.field private mHoverBaseView:Landroid/view/View;

.field private mHoverResId:I

.field private mIdentityMatrix:[F

.field private mIsFocusIndicatorVisible:Z

.field public mIsFocusIndicatorrefresh:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastHoverView:Lcom/sec/android/glview/TwGLView;

.field private mLastTouchView:Lcom/sec/android/glview/TwGLView;

.field private mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedToUpdateOrientation:Z

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPaused:Z

.field private mPreviewTransparent:Z

.field private mProjMatrix:[F

.field private mRootView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mScrollBarAutoHide:Z

.field private mTapDir:I

.field private mTapDirState:I

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 96
    sput v0, Lcom/sec/android/glview/TwGLContext;->mOrientationCompensationValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;
    .param p3, "surfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 89
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 91
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    .line 112
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 114
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 117
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    .line 119
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 122
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mProjMatrix:[F

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 138
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 139
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 141
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 143
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mPaused:Z

    .line 145
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 147
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 149
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mAlignToPixel:Z

    .line 151
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 154
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 158
    const v0, 0x7f020310

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 160
    const v0, 0x7f02031c

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    .line 162
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    .line 164
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 166
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 168
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 171
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mPreviewTransparent:Z

    .line 173
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mFrameNum:I

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorrefresh:Z

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mEffectLibInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    new-instance v0, Lcom/sec/android/glview/TwGLContext$1;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$1;-><init>(Lcom/sec/android/glview/TwGLContext;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    .line 229
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 230
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    .line 231
    iput-object p2, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 232
    iput-object p3, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 234
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 236
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i).*talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V

    .line 243
    return-void
.end method

.method private HandlingKeyEventTap()Z
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1325
    const/4 v0, 0x0

    .line 1326
    .local v0, "res":Z
    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    if-nez v1, :cond_14

    .line 1327
    if-nez v0, :cond_0

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-nez v1, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1329
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1330
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1331
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1332
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1333
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1351
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v4, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1353
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1354
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1355
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1356
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1357
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1375
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v6, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1377
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1378
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1379
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1380
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1381
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1399
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v7, :cond_3

    .line 1400
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1401
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1402
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1403
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1404
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1405
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1521
    :cond_3
    :goto_3
    return v0

    .line 1335
    :cond_4
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1336
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1339
    :cond_5
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1340
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1343
    :cond_6
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1347
    :cond_7
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1348
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1359
    :cond_8
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1360
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1363
    :cond_9
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1364
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1367
    :cond_a
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1368
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1371
    :cond_b
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1372
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1383
    :cond_c
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1384
    const/4 v0, 0x1

    goto :goto_2

    .line 1387
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1388
    const/4 v0, 0x1

    goto :goto_2

    .line 1391
    :cond_e
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1392
    const/4 v0, 0x1

    goto :goto_2

    .line 1395
    :cond_f
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1396
    const/4 v0, 0x1

    goto :goto_2

    .line 1407
    :cond_10
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1408
    const/4 v0, 0x1

    goto :goto_3

    .line 1411
    :cond_11
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1412
    const/4 v0, 0x1

    goto :goto_3

    .line 1415
    :cond_12
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1416
    const/4 v0, 0x1

    goto :goto_3

    .line 1419
    :cond_13
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1420
    const/4 v0, 0x1

    goto :goto_3

    .line 1424
    :cond_14
    if-nez v0, :cond_15

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v6, :cond_15

    .line 1425
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1426
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1427
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1428
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1429
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1430
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1448
    :cond_15
    :goto_4
    if-nez v0, :cond_16

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v4, :cond_16

    .line 1449
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1450
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1451
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1452
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1453
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1454
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1472
    :cond_16
    :goto_5
    if-nez v0, :cond_17

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-nez v1, :cond_17

    .line 1473
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1474
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1475
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1476
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1477
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1478
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1496
    :cond_17
    :goto_6
    if-nez v0, :cond_3

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v7, :cond_3

    .line 1497
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1498
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1499
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1500
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1501
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1502
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    goto/16 :goto_3

    .line 1432
    :cond_18
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1433
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1436
    :cond_19
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1437
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1440
    :cond_1a
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1441
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1444
    :cond_1b
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1445
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1456
    :cond_1c
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1457
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1460
    :cond_1d
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1461
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1464
    :cond_1e
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1465
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1468
    :cond_1f
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1469
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1480
    :cond_20
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1481
    const/4 v0, 0x1

    goto :goto_6

    .line 1484
    :cond_21
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1485
    const/4 v0, 0x1

    goto :goto_6

    .line 1488
    :cond_22
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1489
    const/4 v0, 0x1

    goto :goto_6

    .line 1492
    :cond_23
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1493
    const/4 v0, 0x1

    goto :goto_6

    .line 1504
    :cond_24
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1505
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1508
    :cond_25
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1509
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1512
    :cond_26
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1513
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1516
    :cond_27
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1517
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLContext;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    return v0
.end method

.method private convertTimeInfoForTTS(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 867
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "Min":Ljava/lang/String;
    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "Sec":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 874
    .local v4, "minute":I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 876
    .local v7, "second":I
    const/4 v11, 0x1

    if-le v4, v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0220

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 877
    .local v9, "ttsMin":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x1

    if-le v7, v11, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0222

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 880
    .local v10, "ttsSec":Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "convertedText":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 887
    const/16 v11, 0x8

    const/16 v12, 0xa

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, "minMax":Ljava/lang/String;
    const/16 v11, 0xb

    const/16 v12, 0xd

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, "secMax":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 891
    .local v5, "minuteMax":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 893
    .local v8, "secondMax":I
    const/4 v11, 0x1

    if-le v5, v11, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0220

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 894
    :goto_2
    const/4 v11, 0x1

    if-le v8, v11, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0222

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 897
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 899
    .end local v3    # "minMax":Ljava/lang/String;
    .end local v5    # "minuteMax":I
    .end local v6    # "secMax":Ljava/lang/String;
    .end local v8    # "secondMax":I
    :cond_0
    return-object v2

    .line 876
    .end local v2    # "convertedText":Ljava/lang/String;
    .end local v9    # "ttsMin":Ljava/lang/String;
    .end local v10    # "ttsSec":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b021f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 877
    .restart local v9    # "ttsMin":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0221

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 893
    .restart local v2    # "convertedText":Ljava/lang/String;
    .restart local v3    # "minMax":Ljava/lang/String;
    .restart local v5    # "minuteMax":I
    .restart local v6    # "secMax":Ljava/lang/String;
    .restart local v8    # "secondMax":I
    .restart local v10    # "ttsSec":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b021f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 894
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0221

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method private getAudioSoundOfTapDirection()I
    .locals 1

    .prologue
    .line 1525
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    packed-switch v0, :pswitch_data_0

    .line 1535
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1527
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1529
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1531
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1533
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 279
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getInteger(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 275
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLastOrientation()I
    .locals 1

    .prologue
    .line 1207
    sget v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method public static getOrientationCompensationValue()I
    .locals 1

    .prologue
    .line 1190
    sget v0, Lcom/sec/android/glview/TwGLContext;->mOrientationCompensationValue:I

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 283
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTimeInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 848
    const-string v0, "[0-5][0-9]:[0-5][0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[0-5][0-9]:[0-5][0-9] / [0-5][0-9]:[0-5][0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    :cond_0
    const/4 v0, 0x1

    .line 852
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOrientationComensationValue(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 1186
    sput p0, Lcom/sec/android/glview/TwGLContext;->mOrientationCompensationValue:I

    .line 1187
    return-void
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Lcom/sec/android/glview/TwGLContext$2;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$2;-><init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1183
    return-void
.end method

.method private declared-synchronized updateTouchExplorationEnabled()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1285
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1286
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 1286
    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/sec/android/glview/TwGLTexture;

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    monitor-exit v1

    .line 1252
    return-void

    .line 1251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 296
    :cond_0
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 298
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 300
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 302
    :cond_1
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 304
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 306
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 311
    return-void

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 403
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 407
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 409
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 410
    return-void
.end method

.method public dumpViewHierarchy()V
    .locals 2

    .prologue
    .line 1241
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->dumpViewHierarchy(I)V

    .line 1245
    :cond_0
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-void
.end method

.method public enableOrientation(Z)V
    .locals 0
    .param p1, "orientation"    # Z

    .prologue
    .line 1221
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 1222
    return-void
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "rootView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p3, "direction"    # I

    .prologue
    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "resultView":Lcom/sec/android/glview/TwGLView;
    if-nez p1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 938
    :goto_0
    return-object v0

    .line 936
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 925
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 928
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 914
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlignToPixel()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAlignToPixel:Z

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    return v0
.end method

.method public getEffectLibInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mEffectLibInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getFocusResourceId()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    return v0
.end method

.method public getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    return-object v0
.end method

.method public getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    return-object v0
.end method

.method public getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    return-object v0
.end method

.method public getGLRootView()Landroid/view/IGLViewGroup;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverResourceId()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    return v0
.end method

.method public getLastHoverView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProjMatrix()[F
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mProjMatrix:[F

    return-object v0
.end method

.method public getRootView()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScreenGeometry()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 1264
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isFocusIndicatorRefesh()Z
    .locals 1

    .prologue
    .line 1593
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorrefresh:Z

    return v0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    .prologue
    .line 1540
    const/4 v0, 0x0

    return v0
.end method

.method protected isHoveringIconLabelEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1550
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1553
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isHoveringPointerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1558
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1561
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1270
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1277
    :cond_1
    :goto_0
    return v0

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 1277
    goto :goto_0
.end method

.method public isTalkBackServiceActive()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1298
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1314
    :goto_0
    return v2

    .line 1301
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1302
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_2

    .line 1303
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 1304
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1305
    const/4 v0, 0x0

    move v2, v3

    .line 1306
    goto :goto_0

    .line 1308
    :cond_1
    const-string v3, "TwGLContext"

    const-string v4, "There cannot use TalkBack service."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v0, 0x0

    .line 1310
    goto :goto_0

    .line 1313
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_2
    const/4 v0, 0x0

    .line 1314
    goto :goto_0
.end method

.method public isTalkbackPaused()Z
    .locals 1

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTalkBackServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1281
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;->onHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 393
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v6, 0x3f800000

    const-wide/16 v9, 0x400

    const/4 v8, 0x0

    .line 1012
    const-string v4, "onDrawFrame"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1013
    const-string v4, "onDrawFrame"

    invoke-static {v8, v4}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 1017
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    if-nez v4, :cond_0

    .line 1019
    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1020
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLTexture;

    .line 1021
    .local v3, "texture":Lcom/sec/android/glview/TwGLTexture;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTexture;->clearTexture()V

    goto :goto_0

    .line 1024
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "texture":Lcom/sec/android/glview/TwGLTexture;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1071
    :catchall_1
    move-exception v4

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1072
    invoke-static {v8}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    throw v4

    .line 1023
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1024
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1025
    :try_start_4
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mPaused:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    .line 1071
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1072
    invoke-static {v8}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 1074
    :goto_1
    return-void

    .line 1030
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getScreenAspectRatio()F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    .line 1031
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1033
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 1035
    const/16 v4, 0x4100

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1043
    const-wide/16 v4, 0x400

    const-string v6, "draw"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1045
    const-wide/16 v1, 0x0

    .line 1046
    .local v1, "sTime":J
    iget v4, p0, Lcom/sec/android/glview/TwGLContext;->mFrameNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mFrameNum:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_4

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1049
    const-string v4, "TwGLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start drawing frame #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/glview/TwGLContext;->mFrameNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_5

    .line 1053
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1055
    :cond_5
    iget v4, p0, Lcom/sec/android/glview/TwGLContext;->mFrameNum:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    const-string v4, "TwGLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End drawing frame #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/glview/TwGLContext;->mFrameNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Elapsed time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_6
    const-wide/16 v4, 0x400

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1059
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mPreviewTransparent:Z

    if-nez v4, :cond_7

    .line 1060
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 1061
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1062
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1063
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 1064
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1067
    :cond_7
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    if-eqz v4, :cond_8

    .line 1068
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLPreviewData;->doUpdate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1071
    :cond_8
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1072
    invoke-static {v8}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    goto/16 :goto_1
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v2, 0x1

    .line 765
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 768
    :cond_0
    if-eqz p1, :cond_1

    .line 769
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 771
    :cond_1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 772
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    if-nez p1, :cond_4

    .line 774
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 777
    :cond_2
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 782
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 783
    return-void

    .line 779
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 786
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_8

    .line 790
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_2

    .line 792
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 794
    :cond_2
    invoke-virtual {p1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 795
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "tts":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 798
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    .line 803
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 804
    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLContext;->isTimeInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 805
    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLContext;->convertTimeInfoForTTS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 808
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 809
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 810
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 814
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 815
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 817
    .end local v1    # "tts":Ljava/lang/String;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_6
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 818
    invoke-virtual {p0, v6}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_0

    .line 799
    .restart local v1    # "tts":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 800
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 820
    .end local v1    # "tts":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_9

    .line 822
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 824
    :cond_9
    invoke-virtual {p1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 825
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_a

    .line 826
    if-eqz p2, :cond_a

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 827
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;

    move-result-object v0

    .line 829
    .local v0, "popup":Lcom/sec/android/glview/HoverPopupWindow;
    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 830
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/HoverPopupWindow;->setHoveringPoint(II)V

    .line 832
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    .line 833
    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 840
    .end local v0    # "popup":Lcom/sec/android/glview/HoverPopupWindow;
    :cond_a
    :goto_2
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    goto/16 :goto_0

    .line 835
    .restart local v0    # "popup":Lcom/sec/android/glview/HoverPopupWindow;
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->show()V

    goto :goto_2
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;I)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 657
    .local v0, "originEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, p2, v3, v4}, Lcom/sec/android/app/camera/Util;->getTransformedEventByScreenOrientation(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;

    move-result-object v2

    .line 660
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 662
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    .line 663
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_2

    .line 664
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/glview/TwGLContext;->notifyHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    .line 665
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    .line 704
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    :cond_1
    return v6

    .line 667
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_0

    .line 669
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 674
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 675
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 676
    .local v1, "tempView":Lcom/sec/android/glview/TwGLView;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eq v1, v3, :cond_1

    .line 679
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    .line 680
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_4

    .line 681
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 682
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_0

    .line 684
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 688
    .end local v1    # "tempView":Lcom/sec/android/glview/TwGLView;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 690
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_0

    .line 691
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 694
    :cond_6
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 695
    .restart local v1    # "tempView":Lcom/sec/android/glview/TwGLView;
    if-nez v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/glview/TwGLContext;->notifyHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x82

    const/16 v8, 0x42

    const/16 v7, 0x21

    const/16 v6, 0x11

    const/4 v3, 0x1

    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 432
    .local v1, "res":Z
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-nez v4, :cond_0

    .line 433
    sparse-switch p1, :sswitch_data_0

    .line 451
    :cond_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v4, :cond_2

    .line 453
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    if-nez v4, :cond_1

    .line 454
    sparse-switch p1, :sswitch_data_1

    .line 469
    :cond_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 470
    if-nez v2, :cond_2

    .line 471
    sparse-switch p1, :sswitch_data_2

    .line 564
    :cond_2
    :goto_0
    if-eq v2, v3, :cond_3

    if-ne v1, v3, :cond_4

    .line 565
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 566
    .local v0, "audioManager":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_3

    .line 589
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v3, v2

    .line 590
    :goto_2
    :sswitch_0
    return v3

    .line 442
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 444
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 445
    const/4 v3, 0x0

    goto :goto_2

    .line 447
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 463
    :sswitch_2
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 464
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 465
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_2

    .line 473
    :sswitch_3
    iget v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 474
    const/4 v1, 0x1

    .line 475
    goto :goto_0

    .line 477
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->HandlingKeyEventTap()Z

    move-result v1

    .line 478
    goto :goto_0

    .line 486
    :sswitch_5
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 488
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 489
    goto :goto_0

    .line 491
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 492
    goto :goto_0

    .line 494
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 495
    goto :goto_0

    .line 497
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto :goto_0

    .line 506
    :sswitch_6
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 508
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 509
    goto :goto_0

    .line 511
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 512
    goto :goto_0

    .line 514
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 515
    goto/16 :goto_0

    .line 517
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto/16 :goto_0

    .line 526
    :sswitch_7
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 528
    :pswitch_8
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 529
    goto/16 :goto_0

    .line 531
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 532
    goto/16 :goto_0

    .line 534
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 535
    goto/16 :goto_0

    .line 537
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto/16 :goto_0

    .line 546
    :sswitch_8
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_0

    .line 548
    :pswitch_c
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 549
    goto/16 :goto_0

    .line 551
    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 552
    goto/16 :goto_0

    .line 554
    :pswitch_e
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 555
    goto/16 :goto_0

    .line 557
    :pswitch_f
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto/16 :goto_0

    .line 568
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_9
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 571
    :sswitch_a
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 574
    :sswitch_b
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 577
    :sswitch_c
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 580
    :sswitch_d
    if-ne v1, v3, :cond_4

    .line 581
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->getAudioSoundOfTapDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 585
    :sswitch_e
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 454
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch

    .line 471
    :sswitch_data_2
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_0
        0x3d -> :sswitch_4
        0x3e -> :sswitch_3
    .end sparse-switch

    .line 566
    :sswitch_data_3
    .sparse-switch
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x3d -> :sswitch_d
        0x3e -> :sswitch_e
    .end sparse-switch

    .line 486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 506
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 526
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 546
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 594
    const/4 v0, 0x0

    .line 634
    .local v0, "result":Z
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v2, :cond_0

    .line 635
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 652
    :goto_0
    return v1

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 643
    :cond_1
    if-nez v0, :cond_2

    .line 644
    packed-switch p1, :pswitch_data_0

    .line 651
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v1, v0

    .line 652
    goto :goto_0

    .line 646
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 644
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mPaused:Z

    .line 971
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 980
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    invoke-static {v0}, Lcom/sec/android/glview/TwGLProgram;->releaseInstance(Lcom/sec/android/glview/TwGLProgram;)V

    .line 983
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    invoke-static {v0}, Lcom/sec/android/glview/TwGLProgram;->releaseInstance(Lcom/sec/android/glview/TwGLProgram;)V

    .line 985
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 987
    :cond_1
    invoke-static {}, Lcom/sec/android/glview/TwGLPreviewData;->releaseInstance()V

    .line 989
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 991
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 995
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 996
    return-void

    .line 980
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 949
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mPaused:Z

    .line 950
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 954
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V

    .line 956
    const-string v1, "touch_exploration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 957
    .local v0, "touchExplorationEnabledURI":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 958
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 960
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1083
    const-string v0, "TwGLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v0, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLSurfaceChanged**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iput p2, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    .line 1087
    iput p3, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    .line 1089
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mProjMatrix:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    neg-int v5, v5

    int-to-float v6, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v7, v5

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1091
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1092
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1094
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 1101
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1103
    const-wide/16 v2, 0x1000

    const-string v0, "GL Surface"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1104
    invoke-static {v8}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 1105
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9
    .param p1, "gUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v8, 0xcf

    const/16 v7, 0xcc

    const/16 v6, 0x66

    const/16 v5, 0x67

    const/4 v4, 0x0

    .line 1114
    const-wide/16 v0, 0x400

    const-string v2, "GL Surface"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1115
    const/4 v0, 0x1

    const-string v1, "GL Surface"

    invoke-static {v0, v1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 1117
    const-string v0, "TwGLContext"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1122
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1124
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1126
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1127
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1129
    const/high16 v0, 0x3f800000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 1130
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1131
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 1134
    invoke-static {p0}, Lcom/sec/android/glview/TwGLPreviewData;->getInstance(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    .line 1136
    const-string v0, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 1137
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_position"

    invoke-virtual {v0, v1, v6, v8}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1138
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_texcoord"

    const/16 v2, 0xcd

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1139
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_MVPMatrix"

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1140
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1, v5, v7}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1142
    const-string v0, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute float a_pointsize;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  gl_PointSize = a_pointsize;\n}\n"

    const-string v1, "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 1143
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_position"

    invoke-virtual {v0, v1, v6, v8}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_pointsize"

    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1, v5, v8}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1146
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_MVPMatrix"

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1147
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1, v5, v7}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {v0, p0, v4, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1152
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    .line 723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 724
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 760
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 761
    return v0

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 734
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_4

    .line 736
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 738
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 739
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 744
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 745
    const/4 v0, 0x1

    goto :goto_0

    .line 749
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_6

    .line 750
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 754
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public queueGLEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Runnable;

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1606
    return-void
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 1216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1218
    :cond_0
    return-void
.end method

.method public registerHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeOrientationListener()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    .line 1001
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1003
    :cond_0
    return-void
.end method

.method public rotationFocusView()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 1581
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1582
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1583
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 1586
    :cond_1
    return-void
.end method

.method public setAlignToPixel(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1233
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mAlignToPixel:Z

    .line 1234
    return-void
.end method

.method public setDirty(Z)V
    .locals 1
    .param p1, "dirty"    # Z

    .prologue
    .line 942
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 943
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 946
    :cond_0
    return-void
.end method

.method public setEffectLibInitialized(Z)V
    .locals 1
    .param p1, "initialize"    # Z

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mEffectLibInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1598
    return-void
.end method

.method public setFirstOrientation(I)V
    .locals 2
    .param p1, "firstOrientation"    # I

    .prologue
    .line 963
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 964
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 967
    :cond_0
    return-void
.end method

.method public setFocusIndicatorRefesh(Z)V
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 1589
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorrefresh:Z

    .line 1590
    return-void
.end method

.method public setFocusResourceId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 414
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 1567
    return-void
.end method

.method public setHoverResourceId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    .line 422
    return-void
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLPreviewData;->setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :cond_0
    monitor-exit p0

    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewTransparent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1256
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mPreviewTransparent:Z

    .line 1257
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1225
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 1226
    return-void
.end method

.method public unregisterHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
