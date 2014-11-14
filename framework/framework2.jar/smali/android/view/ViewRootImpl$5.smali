.class Landroid/view/ViewRootImpl$5;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 7351
    iput-object p1, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 7368
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 7358
    iget-object v0, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 7409
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    .line 7363
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 7396
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 7401
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 7372
    return-void
.end method

.method public setFixedSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 7376
    return-void
.end method

.method public setFormat(I)V
    .registers 2
    .param p1, "format"    # I

    .prologue
    .line 7384
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 7392
    return-void
.end method

.method public setSizeFromLayout()V
    .registers 1

    .prologue
    .line 7380
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 7388
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 7406
    return-void
.end method
