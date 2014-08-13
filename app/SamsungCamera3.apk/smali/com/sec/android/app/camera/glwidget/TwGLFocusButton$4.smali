.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;
.super Ljava/lang/Object;
.source "TwGLFocusButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 268
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 279
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/16 v1, 0xa

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I

    .line 274
    return-void
.end method
