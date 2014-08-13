.class Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;
.super Landroid/view/OrientationEventListener;
.source "TwGLGolfMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 472
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 477
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 478
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 479
    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v3, :cond_2

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showGolfImage()V

    .line 494
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showText()V

    goto :goto_0

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->onGolfshotCancel()V

    .line 489
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 492
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    goto :goto_1
.end method
