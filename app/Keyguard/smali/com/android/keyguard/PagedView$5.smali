.class Lcom/android/keyguard/PagedView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->zoomOut()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .registers 2

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/android/keyguard/PagedView$5;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/keyguard/PagedView$5;->this$0:Lcom/android/keyguard/PagedView;

    # getter for: Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/PagedView;->access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 2223
    iget-object v0, p0, Lcom/android/keyguard/PagedView$5;->this$0:Lcom/android/keyguard/PagedView;

    # getter for: Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/PagedView;->access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2224
    iget-object v0, p0, Lcom/android/keyguard/PagedView$5;->this$0:Lcom/android/keyguard/PagedView;

    # getter for: Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/PagedView;->access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView$5;->this$0:Lcom/android/keyguard/PagedView;

    # getter for: Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J
    invoke-static {v1}, Lcom/android/keyguard/PagedView;->access$600(Lcom/android/keyguard/PagedView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/PagedView$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$5$1;-><init>(Lcom/android/keyguard/PagedView$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2233
    :cond_34
    return-void
.end method