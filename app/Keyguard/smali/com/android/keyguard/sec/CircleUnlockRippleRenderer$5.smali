.class Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V
    .registers 2

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/high16 v4, 0x40000000

    .line 2064
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$600(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2066
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F
    invoke-static {v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$700(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$800(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 2067
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I
    invoke-static {v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$800(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 2068
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I
    invoke-static {v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$1000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 2069
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I
    invoke-static {v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 2078
    :goto_68
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$1100(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Z)V

    .line 2079
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable run, and ripple()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v3, v3, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x40800000

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    # invokes: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V

    .line 2081
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$1202(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2082
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # invokes: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$1300(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    .line 2083
    return-void

    .line 2072
    :cond_96
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F
    invoke-static {v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$700(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$800(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 2073
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I
    invoke-static {v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$800(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 2074
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I
    invoke-static {v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$1000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 2075
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    # getter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I
    invoke-static {v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_68
.end method
