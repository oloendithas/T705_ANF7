.class Lcom/voovio/sweep/SweepOffScreen$2;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->init(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$2;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen$2;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;
    invoke-static {v0}, Lcom/voovio/sweep/SweepOffScreen;->access$1(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/GLOffScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen$2;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/voovio/sweep/SweepOffScreen;->access$2(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen$2;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/voovio/sweep/SweepOffScreen;->access$3(Lcom/voovio/sweep/SweepOffScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen$2;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/voovio/sweep/SweepOffScreen;->access$4(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen$2;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I
    invoke-static {v2}, Lcom/voovio/sweep/SweepOffScreen;->access$5(Lcom/voovio/sweep/SweepOffScreen;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method
