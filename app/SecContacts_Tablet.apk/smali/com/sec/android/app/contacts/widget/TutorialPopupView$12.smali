.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;
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
    .line 470
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 475
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 476
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$2300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 478
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 479
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 480
    .local v4, "totalHeight":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v2, v4, v6

    .line 481
    .local v2, "notiBarHeight":I
    const/high16 v6, 0x41200000

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 482
    .local v3, "speedDialTutorialBottomPadding":I
    sub-int v6, v4, v2

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v1, v6, v3

    .line 484
    .local v1, "dynamicTopPos":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 485
    return-void
.end method
