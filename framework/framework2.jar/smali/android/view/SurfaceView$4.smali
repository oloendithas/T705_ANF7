.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2

    .prologue
    .line 731
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 12
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 838
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v6, :cond_1c

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v6, :cond_1c

    .line 846
    :try_start_14
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_27

    move-result-object v0

    .line 853
    :cond_1c
    :goto_1c
    if-eqz v0, :cond_30

    .line 854
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 873
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_26
    return-object v0

    .line 847
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_27
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 861
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 862
    .local v4, "now":J
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-wide v6, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 863
    .local v2, "nextTime":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_49

    .line 865
    sub-long v6, v2, v4

    :try_start_42
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_56

    .line 868
    :goto_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 870
    :cond_49
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-wide v4, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 871
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 873
    const/4 v0, 0x0

    goto :goto_26

    .line 866
    :catch_56
    move-exception v6

    goto :goto_45
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 742
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 745
    :try_start_5
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 746
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_16
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 814
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;

    .prologue
    .line 834
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 753
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 754
    :try_start_5
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 755
    monitor-exit v1

    .line 756
    return-void

    .line 755
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setFixedSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 760
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_19

    .line 761
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 762
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 763
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 765
    :cond_19
    return-void
.end method

.method public setFormat(I)V
    .registers 4
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x0

    .line 780
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 781
    const/4 p1, 0x4

    .line 783
    :cond_5
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 784
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_14

    .line 785
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    # invokes: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    .line 787
    :cond_14
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 5
    .param p1, "screenOn"    # Z

    .prologue
    const/4 v1, 0x1

    .line 798
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_15

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 800
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    return-void

    .line 799
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setSizeFromLayout()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 769
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1a

    .line 770
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 771
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 773
    :cond_1a
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 794
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 884
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 885
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 886
    return-void
.end method