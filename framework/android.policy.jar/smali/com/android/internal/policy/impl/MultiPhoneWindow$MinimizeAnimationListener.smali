.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, -0x1

    .line 1841
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    .line 1845
    .local v2, "state":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    .line 1898
    :cond_a
    :goto_a
    return-void

    .line 1851
    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1854
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1855
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_29

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_34

    .line 1857
    :cond_29
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    .line 1858
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto :goto_a

    .line 1862
    :cond_34
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1863
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v4

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V

    .line 1865
    :cond_47
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1866
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    .line 1867
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a0059

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1868
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1892
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_7f

    .line 1893
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 1894
    :cond_7f
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1895
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1896
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1833
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v4, 0x8

    .line 1821
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    .line 1822
    .local v2, "state":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 1830
    :cond_b
    return-void

    .line 1825
    :cond_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1826
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1827
    .local v0, "contents":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    .line 1828
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f
.end method
