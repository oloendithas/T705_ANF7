.class Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;
.super Ljava/lang/Object;
.source "ShootingModeGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformAnimation"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/TranslateAnimation;

.field private final mAnimationView:Landroid/view/View;

.field mDuration:I

.field mFromX:I

.field mFromY:I

.field mOffset:I

.field mToX:I

.field mToY:I

.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V
    .locals 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "duration"    # I
    .param p8, "offset"    # I

    .prologue
    .line 715
    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromX:I

    .line 709
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToX:I

    .line 710
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromY:I

    .line 711
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToY:I

    .line 712
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mDuration:I

    .line 713
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mOffset:I

    .line 716
    iput-object p2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mAnimationView:Landroid/view/View;

    .line 717
    iput p3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromX:I

    .line 718
    iput p4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromY:I

    .line 719
    iput p5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToX:I

    .line 720
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToY:I

    .line 721
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mDuration:I

    .line 722
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mOffset:I

    .line 723
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromX:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToX:I

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromY:I

    int-to-float v7, v7

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToY:I

    int-to-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    .line 726
    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->startAnimation()V

    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1102(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Z)Z

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 737
    return-void
.end method
