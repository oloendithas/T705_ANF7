.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setDynamicTopPosition()V
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
    .line 490
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 495
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 496
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2400(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 498
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 499
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 500
    .local v6, "totalHeight":I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v4, v6, v8

    .line 501
    .local v4, "notiBarHeight":I
    const/4 v2, 0x0

    .line 502
    .local v2, "dynamicTopPos":I
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 507
    .local v3, "loc":[I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 509
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2500(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    .local v0, "bubbleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v5

    .line 512
    .local v5, "rules":[I
    const/4 v8, 0x3

    aget v8, v5, v8

    const v9, 0x7f09047f

    if-ne v8, v9, :cond_0

    .line 514
    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->Y:I
    invoke-static {}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1700()I

    move-result v8

    aget v8, v3, v8

    sub-int v2, v8, v4

    .line 522
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10, v2, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 523
    return-void

    .line 517
    :cond_0
    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->Y:I
    invoke-static {}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1700()I

    move-result v8

    aget v8, v3, v8

    iget-object v9, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;
    invoke-static {v9}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2500(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v2, v8, v4

    goto :goto_0
.end method
