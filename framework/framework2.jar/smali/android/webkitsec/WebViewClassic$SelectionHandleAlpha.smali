.class Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field private mTargetAlpha:I

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7396
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7397
    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 7398
    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "x1"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 7396
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    .prologue
    .line 7415
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public getTargetAlpha()I
    .registers 2

    .prologue
    .line 7422
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 7400
    iput p1, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 7401
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 7403
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7404
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7405
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3700(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7406
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3800(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7410
    :cond_2d
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 7412
    :cond_32
    return-void
.end method

.method public setTargetAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 7419
    iput p1, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    .line 7420
    return-void
.end method
