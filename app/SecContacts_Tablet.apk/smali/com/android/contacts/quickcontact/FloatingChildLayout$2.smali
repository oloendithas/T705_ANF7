.class Lcom/android/contacts/quickcontact/FloatingChildLayout$2;
.super Ljava/lang/Object;
.source "FloatingChildLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field final synthetic val$isExitAnimation:Z

.field final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$isExitAnimation:Z

    iput-object p3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 313
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x2

    .line 317
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$400(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 318
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$isExitAnimation:Z

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$500(Lcom/android/contacts/quickcontact/FloatingChildLayout;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const/4 v1, 0x4

    # setter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$502(Lcom/android/contacts/quickcontact/FloatingChildLayout;I)I

    .line 321
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 329
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$200(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->showTutorial()V

    .line 332
    :cond_1
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$500(Lcom/android/contacts/quickcontact/FloatingChildLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # setter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I
    invoke-static {v0, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$502(Lcom/android/contacts/quickcontact/FloatingChildLayout;I)I

    .line 326
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 310
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$200(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->val$isExitAnimation:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 307
    :cond_0
    return-void
.end method
