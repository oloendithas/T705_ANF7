.class Lcom/voovio/sweep/SweepView$4;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;-><init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView$4;->this$0:Lcom/voovio/sweep/SweepView;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$4;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$4;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, v1, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v1

    # invokes: Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V
    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$3(Lcom/voovio/sweep/SweepView;Lcom/voovio/voo3d/view/Viewport;)V

    .line 280
    return-void
.end method
