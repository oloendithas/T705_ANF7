.class Lcom/android/internal/widget/ScrollingTabContainerView$2;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 582
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 583
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$2;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 584
    return-void
.end method
