.class Lcom/android/internal/widget/ScrollingTabContainerView$3;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 2

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .registers 6
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 711
    if-nez p1, :cond_53

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mIsInTouchMode:Z
    invoke-static {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Z

    move-result v1

    if-eq v1, p1, :cond_53

    .line 712
    const-string v1, "ScrollingTabContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isTabHasFocus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->isTabHasFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSelectedTabIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
    invoke-static {v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$600(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->isTabHasFocus()Z

    move-result v1

    if-nez v1, :cond_53

    .line 714
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
    invoke-static {v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$600(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 715
    .local v0, "tabView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 718
    .end local v0    # "tabView":Landroid/view/View;
    :cond_53
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$3;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # setter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mIsInTouchMode:Z
    invoke-static {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$502(Lcom/android/internal/widget/ScrollingTabContainerView;Z)Z

    .line 719
    return-void
.end method
