.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startCalibrationThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1331
    const/4 v1, 0x2

    .line 1332
    .local v1, "orientation":I
    const/4 v5, 0x3

    new-array v3, v5, [D

    fill-array-data v3, :array_0

    .line 1334
    .local v3, "pf64Angle":[D
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1339
    const/4 v5, 0x3

    :try_start_0
    new-array v2, v5, [F

    fill-array-data v2, :array_1

    .line 1340
    .local v2, "pf32AccVec3":[F
    invoke-static {v2}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->SNGetAccelerationLpfVector([F)I

    move-result v4

    .line 1342
    .local v4, "ret":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1343
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1353
    :goto_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 1354
    const/4 v5, 0x2

    const/4 v6, 0x1

    aget v6, v2, v6

    float-to-double v6, v6

    const/4 v8, 0x0

    aget v8, v2, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    add-double/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1355
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v2, v6

    float-to-double v6, v6

    const/4 v8, 0x2

    aget v8, v2, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L

    add-double/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1356
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    double-to-float v6, v6

    const/4 v7, 0x2

    aget-wide v7, v3, v7

    double-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setAngles(FF)V

    .line 1363
    :cond_0
    :goto_2
    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1367
    .end local v2    # "pf32AccVec3":[F
    .end local v4    # "ret":I
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/4 v6, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3702(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    goto :goto_0

    .line 1346
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pf32AccVec3":[F
    .restart local v4    # "ret":I
    :pswitch_0
    const/4 v1, 0x2

    .line 1347
    goto :goto_1

    .line 1350
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1357
    :cond_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 1358
    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_1
    aget v6, v2, v6

    float-to-double v6, v6

    const/4 v8, 0x0

    aget v8, v2, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    add-double/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1359
    const/4 v5, 0x0

    const/4 v6, 0x1

    aget v6, v2, v6

    float-to-double v6, v6

    const/4 v8, 0x2

    aget v8, v2, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L

    add-double/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1360
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    double-to-float v6, v6

    const/4 v7, 0x2

    aget-wide v7, v3, v7

    double-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setAngles(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1371
    .end local v2    # "pf32AccVec3":[F
    .end local v4    # "ret":I
    :cond_2
    return-void

    .line 1332
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    .line 1339
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 1343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
