.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
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
    .line 326
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 329
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 330
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 335
    .local v1, "loc":[I
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    sget-object v5, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    invoke-static {v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1400(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 356
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->X:I
    invoke-static {}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1800()I

    move-result v6

    aget v6, v1, v6

    # invokes: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrow(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1900(Lcom/sec/android/app/contacts/widget/TutorialPopupView;I)V

    .line 358
    .end local v1    # "loc":[I
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1400(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_CREATE_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v5, v6, :cond_1

    .line 359
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v6, 0x0

    # invokes: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrow(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1900(Lcom/sec/android/app/contacts/widget/TutorialPopupView;I)V

    .line 361
    :cond_1
    return-void

    .line 341
    .restart local v1    # "loc":[I
    :pswitch_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1500(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 343
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 344
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v2, v5, v6

    .line 346
    .local v2, "notiBarHeight":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I

    move-result v6

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 349
    .local v4, "yOffset":I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->Y:I
    invoke-static {}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1700()I

    move-result v6

    aget v6, v1, v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    goto/16 :goto_0

    .line 346
    .end local v4    # "yOffset":I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I

    move-result v4

    goto :goto_1

    .line 353
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "notiBarHeight":I
    .end local v3    # "wm":Landroid/view/WindowManager;
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setDynamicTopPosition()V

    goto/16 :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
