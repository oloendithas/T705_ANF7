.class Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;
.super Ljava/lang/Object;
.source "TwGLModeMenuDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mRelocating:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Z)Z

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetClipRect()V

    .line 175
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
