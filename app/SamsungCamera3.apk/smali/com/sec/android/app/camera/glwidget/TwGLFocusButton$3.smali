.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;
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
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/16 v1, 0xa

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I

    .line 248
    return-void
.end method
