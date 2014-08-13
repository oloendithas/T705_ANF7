.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/TutorialPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # operator++ for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2008(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 406
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 402
    return-void
.end method
