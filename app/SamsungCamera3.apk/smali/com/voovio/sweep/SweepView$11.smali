.class Lcom/voovio/sweep/SweepView$11;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
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
    iput-object p1, p0, Lcom/voovio/sweep/SweepView$11;->this$0:Lcom/voovio/sweep/SweepView;

    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$11;->this$0:Lcom/voovio/sweep/SweepView;

    const/4 v1, 0x0

    # invokes: Lcom/voovio/sweep/SweepView;->startFrom(I)V
    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$27(Lcom/voovio/sweep/SweepView;I)V

    .line 2099
    return-void
.end method
