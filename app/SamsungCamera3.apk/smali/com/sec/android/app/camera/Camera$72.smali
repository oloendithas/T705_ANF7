.class Lcom/sec/android/app/camera/Camera$72;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 8544
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x400

    const/16 v5, 0x29

    const/4 v1, 0x0

    .line 8546
    const-string v0, "BaseMenu-loading"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 8547
    const-string v0, "BaseMenu-loading"

    invoke-static {v1, v0}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 8548
    const-string v0, "Add View"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 8549
    const/4 v0, 0x1

    const-string v1, "Add View"

    invoke-static {v0, v1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 8551
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8552
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8553
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # setter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .line 8554
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8555
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mBaseMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    # setter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .line 8558
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0x31

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # setter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$1802(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 8559
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 8561
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/Camera$72$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$72$1;-><init>(Lcom/sec/android/app/camera/Camera$72;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8585
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mModeResourceLoadingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8597
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mBaseMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$4402(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 8598
    return-void

    .line 8586
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8587
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/Camera$72$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$72$2;-><init>(Lcom/sec/android/app/camera/Camera$72;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
