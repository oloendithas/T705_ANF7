.class Lcom/android/keyguard/KeyguardWidgetPager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardWidgetPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetPager;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetPager;Z)V
    .registers 3

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 888
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->val$show:Z

    if-nez v1, :cond_3b

    .line 889
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->disablePageContentLayers()V

    .line 890
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    # getter for: Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I
    invoke-static {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->access$200(Lcom/android/keyguard/KeyguardWidgetPager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 891
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v2, v2, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v1

    if-nez v1, :cond_30

    .line 893
    :cond_2d
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 895
    :cond_30
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v2, -0x1

    # setter for: Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->access$202(Lcom/android/keyguard/KeyguardWidgetPager;I)I

    .line 896
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 898
    .end local v0    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_3b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    # invokes: Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->access$300(Lcom/android/keyguard/KeyguardWidgetPager;)V

    .line 899
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->val$show:Z

    if-eqz v0, :cond_9

    .line 882
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$4;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 884
    :cond_9
    return-void
.end method
