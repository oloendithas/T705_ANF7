.class Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    .line 49
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 54
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 55
    .local v1, "width":I
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p2}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 56
    .local v0, "height":I
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_43

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_43

    .line 57
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_47

    .line 58
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    div-int v0, v2, v3

    .line 63
    :cond_43
    :goto_43
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 64
    return-void

    .line 59
    :cond_47
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_43

    .line 60
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_43
.end method
