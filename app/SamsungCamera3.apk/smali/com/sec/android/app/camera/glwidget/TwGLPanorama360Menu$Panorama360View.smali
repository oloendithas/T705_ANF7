.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Panorama360View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    }
.end annotation


# static fields
.field public static final MSG_FINISH_RENDER_PREVIEW:I = 0x0

.field public static final MSG_REQUEST_REREGISTER_TEXTURE:I = 0x2

.field public static final MSG_REQUEST_SET_POSTVIEW_DATA:I = 0x1

.field public static final PANORAMA_POSTVIEW:I = 0x1

.field public static final PANORAMA_PREVIEW:I


# instance fields
.field private isDefault:Z

.field private isFileSelect:Z

.field private isRegistered:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimationEnable:Z

.field private mAnimationProgress:I

.field private mAnimationType:I

.field private mAttachStatus:[I

.field private mDispType:I

.field private mDrawBgBlankMode:I

.field private mGyroscopeType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShootable:[I

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mOrientation:I

.field private mPrevTimestamp:J

.field private mPreviewMode:I

.field private mRenderEnable:Z

.field private mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

.field private mRenderInfoID:[I

.field private mResetCalled:Z

.field private mResetCount:I

.field private mRotateAngleX:D

.field private mRotateAngleY:D

.field private mRotateRatioX:D

.field private mRotateRatioY:D

.field private mRotation:I

.field private mScale:D

.field private mStartAnimationTime:J

.field private mSyncObj:Ljava/lang/Object;

.field private mTouchSyncObj:Ljava/lang/Object;

.field private mViewHeight:I

.field private mViewWidth:I

.field private render_count:J

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/glview/TwGLContext;FFLandroid/app/Activity;Landroid/os/Handler;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;I)V
    .locals 3
    .param p2, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "image_stitcher"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .param p8, "preview_buffer_size"    # I

    .prologue
    .line 858
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .line 859
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    .line 789
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    .line 790
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    .line 797
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    .line 798
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    .line 802
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 803
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    .line 804
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    .line 806
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    .line 808
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    .line 809
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .line 810
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    .line 811
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isRegistered:Z

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    .line 861
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv Panorama360View "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/high16 v0, 0x43fa0000

    const/high16 v1, 0x43fa0000

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setSize(FF)V

    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    .line 865
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 866
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mHandler:Landroid/os/Handler;

    .line 867
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    invoke-direct {v2, p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)V

    aput-object v2, v0, v1

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    invoke-direct {v2, p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)V

    aput-object v2, v0, v1

    .line 870
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    .line 871
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mActivity:Landroid/app/Activity;

    .line 872
    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
    .param p1, "x1"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .prologue
    .line 782
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
    .param p1, "x1"    # I

    .prologue
    .line 782
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
    .param p1, "x1"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    return-object v0
.end method

.method private pvGetDeviceRotate()I
    .locals 2

    .prologue
    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "rotate":I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    if-gez v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 1228
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1231
    const/4 v0, 0x0

    .line 1248
    :goto_0
    return v0

    .line 1235
    :pswitch_0
    const/4 v0, 0x3

    .line 1237
    goto :goto_0

    .line 1239
    :pswitch_1
    const/4 v0, 0x2

    .line 1241
    goto :goto_0

    .line 1243
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pvRenderEmptyPreview()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1252
    const/16 v0, 0x9

    new-array v6, v0, [D

    .line 1253
    .local v6, "screen_rot":[D
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v0, v6, v1, v1, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v2, 0x2

    invoke-virtual {v0, v6, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreview([BIIII)I

    .line 1256
    return-void
.end method

.method private pvRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;J)V
    .locals 22
    .param p1, "r_info"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .param p2, "pre_odf_end_time"    # J

    .prologue
    .line 1260
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1261
    :try_start_0
    new-instance v16, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    .line 1264
    .local v16, "result":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    if-eqz v1, :cond_5

    .line 1265
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    .line 1266
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    .line 1268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1269
    .local v14, "now_time":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1270
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    sub-long v1, v14, v1

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mFrameInterval:J

    .line 1272
    :cond_0
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    .line 1273
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoEndTime:J

    sub-long v1, v14, v1

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mRQRenderToOnDrawFrame:J

    .line 1274
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mCount:J

    .line 1275
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoTime:J

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mSetRenderInfoTime:J

    .line 1277
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    if-eqz v1, :cond_1

    .line 1278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_mat:[D

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGyroscopeType:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1280
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    if-eqz v1, :cond_2

    .line 1281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->rv_mat:[D

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1283
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z

    if-eqz v1, :cond_3

    .line 1284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->ac_mat:[D

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1287
    :cond_3
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 1288
    .local v11, "image_id":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1290
    .local v18, "s_time":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_image:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    invoke-virtual {v1, v2, v3, v11, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->attach([BI[I[I)I

    move-result v17

    .line 1291
    .local v17, "ret":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1293
    .local v9, "e_time":J
    const/4 v1, 0x0

    aget v1, v11, v1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    .line 1294
    sub-long v1, v9, v18

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachTime:J

    .line 1295
    move-object/from16 v0, v16

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    if-lez v1, :cond_4

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3508(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    .line 1297
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pvRenderPreview mShootingNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getIsShootable([I)I

    .line 1309
    .end local v9    # "e_time":J
    .end local v11    # "image_id":[I
    .end local v14    # "now_time":J
    .end local v17    # "ret":I
    .end local v18    # "s_time":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachStatus:I

    .line 1310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1314
    .restart local v18    # "s_time":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1315
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    .line 1318
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    if-eqz v1, :cond_d

    .line 1320
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    if-gez v1, :cond_c

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1322
    .local v12, "now":J
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    const/16 v20, 0xc8

    .line 1323
    .local v20, "time":I
    :goto_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    sub-long v1, v12, v1

    const-wide/32 v3, 0x8000

    mul-long/2addr v1, v3

    move/from16 v0, v20

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v7, v1

    .line 1324
    .local v7, "progress":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 1325
    add-int/lit16 v7, v7, 0x2aaa

    .line 1326
    :cond_7
    const v1, 0x8000

    if-lt v7, v1, :cond_8

    .line 1327
    const v7, 0x8000

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .line 1332
    .end local v12    # "now":J
    .end local v20    # "time":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreviewWithAnimation([BIIIIII)I

    .line 1336
    .end local v7    # "progress":I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1338
    .restart local v9    # "e_time":J
    sub-long v1, v9, v18

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mRenderTime:J

    .line 1339
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    .line 1340
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoStartTime:J

    sub-long v1, v1, p2

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mODFToOPF:J

    .line 1342
    :cond_9
    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->preview_id:I

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mPreviewID:I

    .line 1343
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->image:[B

    .line 1344
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->save_path:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->save_path:Ljava/lang/String;

    .line 1345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    if-eqz v1, :cond_a

    .line 1346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;->onRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;)V

    .line 1348
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p1

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mOnDrawEndTime:J

    .line 1349
    monitor-exit v21

    .line 1351
    return-void

    .line 1322
    .end local v9    # "e_time":J
    .restart local v12    # "now":J
    :cond_b
    const/16 v20, 0x12c

    goto/16 :goto_0

    .line 1330
    .end local v12    # "now":J
    :cond_c
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .restart local v7    # "progress":I
    goto :goto_1

    .line 1334
    .end local v7    # "progress":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreview([BIIII)I

    goto :goto_2

    .line 1349
    .end local v16    # "result":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;
    .end local v18    # "s_time":J
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public initSize()V
    .locals 2

    .prologue
    .line 877
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv initSize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void
.end method

.method protected onDraw()V
    .locals 22

    .prologue
    .line 1107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)J

    move-result-wide v18

    const-wide/16 v20, 0x7530

    add-long v18, v18, v20

    cmp-long v3, v16, v18

    if-gez v3, :cond_0

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->stopContinuousAF()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusRect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    if-lez v3, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    .line 1221
    :goto_1
    return-void

    .line 1116
    :catch_0
    move-exception v11

    .line 1117
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "ignore error"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1127
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    if-eqz v3, :cond_5

    .line 1128
    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "onDraw() mResetCalled"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v16, 0xbea

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v10, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1133
    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "mActivityContext is NULL!"

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    const/16 v10, 0x3e8

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v10

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    move-result-object v10

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    .line 1144
    :cond_3
    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "onDraw() resetGL(0)"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->resetGL(I)I

    .line 1146
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    .line 1150
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1151
    const/4 v3, 0x1

    const/16 v10, 0x303

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_1

    .line 1135
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v10

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    const/16 v5, 0xbea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v16

    const v17, 0x7f0b000d

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v10, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v10, 0xbea

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v16

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1155
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v10

    .line 1156
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1158
    .local v8, "scale":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3ee4f8b588e368f1L

    cmpl-double v3, v16, v18

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3ee4f8b588e368f1L

    cmpl-double v3, v16, v18

    if-lez v3, :cond_6

    .line 1159
    const/4 v15, 0x0

    .line 1160
    .local v15, "set_angle":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1161
    .local v4, "x_rot":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1162
    .local v6, "y_rot":D
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1163
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1171
    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1173
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v10

    .line 1174
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    if-nez v3, :cond_7

    .line 1175
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1176
    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1177
    const/4 v3, 0x1

    const/16 v16, 0x303

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1178
    monitor-exit v10

    goto/16 :goto_1

    .line 1180
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1165
    .end local v4    # "x_rot":D
    .end local v6    # "y_rot":D
    .end local v15    # "set_angle":Z
    :cond_6
    const/4 v15, 0x1

    .line 1166
    .restart local v15    # "set_angle":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1167
    .restart local v4    # "x_rot":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 1168
    .restart local v6    # "y_rot":D
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1169
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    goto :goto_3

    .line 1171
    .end local v4    # "x_rot":D
    .end local v6    # "y_rot":D
    .end local v8    # "scale":D
    .end local v15    # "set_angle":Z
    :catchall_1
    move-exception v3

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1180
    .restart local v4    # "x_rot":D
    .restart local v6    # "y_rot":D
    .restart local v8    # "scale":D
    .restart local v15    # "set_angle":Z
    :cond_7
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1183
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1184
    :try_start_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    if-eqz v3, :cond_8

    .line 1185
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvRenderEmptyPreview()V

    .line 1186
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1187
    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1188
    const/4 v3, 0x1

    const/16 v17, 0x303

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1189
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit v10

    goto/16 :goto_1

    .line 1192
    :catchall_2
    move-exception v3

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 1191
    :cond_8
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1192
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1194
    :try_start_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    if-nez v3, :cond_b

    .line 1197
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    monitor-enter v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1198
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/16 v17, 0x0

    aget v3, v3, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_a

    const/4 v12, 0x0

    .line 1199
    .local v12, "id":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    aget-object v14, v3, v12

    .line 1200
    .local v14, "render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    aget-object v13, v3, v17

    .line 1201
    .local v13, "pre_render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1202
    :try_start_c
    iget-wide v0, v13, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mOnDrawEndTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;J)V

    .line 1203
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1204
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v10, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1217
    .end local v12    # "id":I
    .end local v13    # "pre_render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .end local v14    # "render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    :cond_9
    :goto_5
    const/4 v3, 0x1

    const/16 v10, 0x303

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1218
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1219
    monitor-exit v16

    goto/16 :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v3

    .line 1191
    :catchall_4
    move-exception v3

    :try_start_d
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1198
    :cond_a
    const/4 v12, 0x1

    goto :goto_4

    .line 1201
    :catchall_5
    move-exception v3

    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v3

    .line 1205
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    .line 1206
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    if-eqz v3, :cond_c

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostviewDefault(I)I

    .line 1208
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    goto :goto_5

    .line 1210
    :cond_c
    if-eqz v15, :cond_d

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostviewAngle(DDDI)I

    goto :goto_5

    .line 1213
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostview(DDDI)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_5
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 884
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv onLoad "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1097
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pv onOrientationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    .line 1099
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 1100
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 891
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv onReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 893
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    .line 894
    const/16 v0, 0x1388

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    .line 895
    return-void
.end method

.method public pvGetOrientation()I
    .locals 2

    .prologue
    .line 1073
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    if-gez v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 1077
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1080
    const/4 v0, 0x0

    .line 1092
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 1083
    .end local v0    # "orientation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 1084
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 1086
    .end local v0    # "orientation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 1087
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 1089
    .end local v0    # "orientation":I
    :pswitch_2
    const/16 v0, 0x10e

    .restart local v0    # "orientation":I
    goto :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pvGetRenderEnable()Z
    .locals 2

    .prologue
    .line 1058
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvGetRenderEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    return v0
.end method

.method public pvSetAnimationEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1046
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetAnimationEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    .line 1048
    return-void
.end method

.method public pvSetAnimationInfo(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "progress"    # I

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1037
    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    .line 1038
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .line 1039
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    if-gez v0, :cond_0

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    .line 1042
    :cond_0
    monitor-exit v1

    .line 1043
    return-void

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDefault()V
    .locals 4

    .prologue
    .line 997
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 999
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1000
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1001
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1002
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 1003
    const-wide/high16 v2, 0x3ff0000000000000L

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    .line 1005
    monitor-exit v1

    .line 1006
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDefaultScale(D)V
    .locals 2
    .param p1, "scale"    # D

    .prologue
    .line 990
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetDefaultScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 992
    :try_start_0
    iput-wide p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 993
    monitor-exit v1

    .line 994
    return-void

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDispType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    .line 1031
    monitor-exit v1

    .line 1032
    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDrawBgBlankMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1064
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    if-ne v0, p1, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1067
    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setDrawBgBlankMode(I)I

    .line 1069
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetInputGyroscopeType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 902
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGyroscopeType:I

    .line 903
    return-void
.end method

.method public pvSetPanorama360ViewEventListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    .line 899
    return-void
.end method

.method public pvSetPreviewRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1010
    sparse-switch p1, :sswitch_data_0

    .line 1024
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 1025
    return-void

    .line 1012
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1015
    :sswitch_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    .line 1018
    :sswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    .line 1021
    :sswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1010
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public pvSetRenderEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1053
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    .line 1054
    monitor-exit v1

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V
    .locals 11
    .param p1, "input_img"    # [B
    .param p3, "gr_mat"    # [D
    .param p4, "rv_mat"    # [D
    .param p5, "ac_mat"    # [D
    .param p6, "use_image"    # I
    .param p7, "id"    # I
    .param p8, "save_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[F>;[D[D[DII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 908
    .local p2, "gr_value_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    monitor-enter v7

    .line 910
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v3, v6, v8

    .line 911
    .local v3, "r_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v10, 0x0

    aget v6, v6, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    const/4 v6, 0x0

    :goto_0
    aput v6, v8, v9

    .line 912
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    iget-object v7, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 915
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 918
    .local v4, "s_time":J
    move-object/from16 v0, p8

    iput-object v0, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->save_path:Ljava/lang/String;

    .line 919
    if-eqz p1, :cond_0

    .line 920
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    array-length v10, v10

    invoke-static {p1, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    :cond_0
    if-eqz p2, :cond_1

    .line 923
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    .line 926
    :cond_1
    if-eqz p3, :cond_3

    .line 927
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_mat:[D

    const/4 v9, 0x0

    array-length v10, p3

    invoke-static {p3, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    .line 932
    :goto_1
    if-eqz p4, :cond_4

    .line 933
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->rv_mat:[D

    const/4 v9, 0x0

    array-length v10, p4

    invoke-static {p4, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    .line 938
    :goto_2
    if-eqz p5, :cond_5

    .line 939
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->ac_mat:[D

    const/4 v9, 0x0

    move-object/from16 v0, p5

    array-length v10, v0

    move-object/from16 v0, p5

    invoke-static {v0, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z

    .line 944
    :goto_3
    move/from16 v0, p6

    iput v0, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_image:I

    .line 945
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    .line 946
    move/from16 v0, p7

    iput v0, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->preview_id:I

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 950
    .local v1, "e_time":J
    sub-long v8, v1, v4

    iput-wide v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoTime:J

    .line 951
    iput-wide v4, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoStartTime:J

    .line 952
    iput-wide v1, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoEndTime:J

    .line 953
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 955
    return-void

    .line 911
    .end local v1    # "e_time":J
    .end local v4    # "s_time":J
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 912
    .end local v3    # "r_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 930
    .restart local v3    # "r_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .restart local v4    # "s_time":J
    :cond_3
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    goto :goto_1

    .line 953
    .end local v4    # "s_time":J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 936
    .restart local v4    # "s_time":J
    :cond_4
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    goto :goto_2

    .line 942
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3
.end method

.method public pvSetScale(F)V
    .locals 10
    .param p1, "scale"    # F

    .prologue
    const-wide/high16 v8, 0x4008000000000000L

    const-wide v6, 0x3fe999999999999aL

    .line 974
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 977
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    cmpl-double v0, v2, v8

    if-lez v0, :cond_1

    .line 978
    const-wide/high16 v2, 0x4008000000000000L

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 982
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 983
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 984
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 985
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 986
    monitor-exit v1

    .line 987
    return-void

    .line 979
    :cond_1
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    .line 980
    const-wide v2, 0x3fe999999999999aL

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    goto :goto_0

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetSwipeAngle(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 966
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetSwipeAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 969
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 970
    monitor-exit v1

    .line 971
    return-void

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetSwipeDistance(FF)V
    .locals 6
    .param p1, "distance_x"    # F
    .param p2, "distance_y"    # F

    .prologue
    .line 958
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetSwipeDistance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mViewWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 961
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mViewHeight:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 962
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
