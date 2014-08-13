.class Lcom/android/contacts/quickcontact/FloatingChildLayout$3;
.super Ljava/lang/Object;
.source "FloatingChildLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/FloatingChildLayout;->showTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 342
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$400(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090401

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "create_button":Landroid/view/View;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$400(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090402

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, "update_button":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 345
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v6, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v7, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$600(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_QUICKCONTACT:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-direct {v6, v7, v8, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    # setter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v5, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$302(Lcom/android/contacts/quickcontact/FloatingChildLayout;Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 347
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 348
    .local v2, "loc":[I
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 349
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 350
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$700(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 351
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 352
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v5

    const v6, 0x7f0e0431

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(I)V

    .line 353
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setSoundDisable()V

    .line 354
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;

    invoke-direct {v6, p0, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout$3;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setOnIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V

    .line 369
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$2;

    invoke-direct {v6, p0, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$2;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout$3;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setOnSecondIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V

    .line 384
    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->show()V

    .line 386
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "loc":[I
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method
