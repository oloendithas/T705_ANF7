.class Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

.field final synthetic val$delay:J

.field final synthetic val$pIntensity:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FJ)V
    .registers 5

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->val$pIntensity:F

    iput-wide p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v3, v3, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->val$pIntensity:F

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    # invokes: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V

    .line 1263
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1264
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget-object v1, v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    iget v3, v3, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->val$delay:J

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->val$pIntensity:F

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck(Landroid/view/View;FFJF)V

    .line 1265
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->access$102(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1267
    return-void
.end method
