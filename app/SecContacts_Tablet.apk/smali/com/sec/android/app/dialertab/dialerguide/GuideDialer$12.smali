.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;
.super Ljava/lang/Object;
.source "GuideDialer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V
    .locals 0

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2315
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->GuidePointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$12;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # operator++ for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->aniTime:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3408(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    .line 2318
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2310
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2305
    return-void
.end method
