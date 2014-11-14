.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1736
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1725
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1726
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    :goto_f
    return-void

    .line 1728
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_f

    .line 1730
    :catch_16
    move-exception v0

    goto :goto_f
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1734
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1718
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1721
    :goto_5
    return-void

    .line 1719
    :catch_6
    move-exception v0

    goto :goto_5
.end method
