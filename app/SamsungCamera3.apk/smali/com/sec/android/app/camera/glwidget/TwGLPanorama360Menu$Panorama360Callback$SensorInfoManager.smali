.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfoManager"
.end annotation


# instance fields
.field public a_ix:I

.field public g_ix:I

.field public img_ix:I

.field public m_ix:I

.field public o_ix:I

.field public r_ix:I

.field public stop_thres:I

.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

.field public time:J


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3243
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3244
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    .line 3245
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    .line 3246
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    .line 3247
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->o_ix:I

    .line 3248
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->r_ix:I

    .line 3249
    return-void
.end method
