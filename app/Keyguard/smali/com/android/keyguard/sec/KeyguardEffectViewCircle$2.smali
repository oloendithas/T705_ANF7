.class Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewCircle.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createArrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$900(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 324
    :cond_20
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 318
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 314
    return-void
.end method
