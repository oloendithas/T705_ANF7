.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;
.super Landroid/os/Handler;
.source "TwGL3DTourMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
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
    .line 371
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0b0179

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 374
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 379
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 381
    :sswitch_1
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "Calibration started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 384
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02e4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    goto :goto_0

    .line 393
    :sswitch_3
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 394
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "Calibration done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setProgress(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 401
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 402
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 403
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    .line 404
    :cond_4
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getRemainCount()I

    .line 405
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02e3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->createTemplate()V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    goto/16 :goto_0

    .line 413
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 414
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 415
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    goto/16 :goto_0

    .line 420
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xe

    const/16 v1, 0xa

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_6

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/16 v1, 0xc

    # += operator for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1512(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v1

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setProgress(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 425
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1408(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    goto/16 :goto_0

    .line 428
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    .line 429
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 430
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 431
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    .line 432
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->createTemplate()V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    if-lt v0, v6, :cond_8

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 437
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 447
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02db

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    if-le v0, v3, :cond_9

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    .line 465
    :goto_1
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    const v1, 0x7f0b02e2

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 463
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto :goto_1

    .line 469
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02dd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02df

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :sswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02e3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    goto/16 :goto_0

    .line 507
    :sswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ZI)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 518
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    goto/16 :goto_0

    .line 538
    :sswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto/16 :goto_0

    .line 586
    :sswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    if-le v0, v3, :cond_a

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    .line 591
    :goto_2
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    const v1, 0x7f0b02e0

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 589
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto :goto_2

    .line 600
    :sswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02da

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 610
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02dc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;IZ)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 620
    :sswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02de

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;IZ)V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 634
    :sswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02de

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;IZ)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 647
    :sswitch_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02dc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;IZ)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 661
    :sswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v0, v3, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ZI)V

    goto/16 :goto_0

    .line 664
    :sswitch_15
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ZI)V

    goto/16 :goto_0

    .line 668
    :sswitch_16
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto/16 :goto_0

    .line 671
    :sswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto/16 :goto_0

    .line 674
    :sswitch_18
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    .line 676
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    const v1, 0x7f0b02e0

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 679
    :sswitch_19
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetDirectionEstimator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    .line 686
    :cond_b
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 687
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    .line 688
    :cond_c
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    .line 689
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    goto/16 :goto_0

    .line 692
    :sswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    if-le v0, v3, :cond_d

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    .line 697
    :goto_3
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    const v1, 0x7f0b02e6

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 695
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto :goto_3

    .line 714
    :sswitch_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02e1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 738
    :sswitch_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02db

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :sswitch_1d
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->removeMessages(I)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 753
    const/16 v0, 0xcc

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 757
    :sswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v0

    if-le v0, v3, :cond_e

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto/16 :goto_0

    .line 760
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V

    goto/16 :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_0
        0x12 -> :sswitch_d
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_e
        0x18 -> :sswitch_0
        0x19 -> :sswitch_f
        0x1a -> :sswitch_10
        0x1b -> :sswitch_11
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_12
        0x1f -> :sswitch_13
        0x20 -> :sswitch_14
        0x21 -> :sswitch_14
        0x23 -> :sswitch_1a
        0x24 -> :sswitch_15
        0x25 -> :sswitch_0
        0x26 -> :sswitch_1c
        0x27 -> :sswitch_1e
        0xc8 -> :sswitch_16
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_1b
        0xcc -> :sswitch_1d
        0x3e8 -> :sswitch_19
    .end sparse-switch
.end method
