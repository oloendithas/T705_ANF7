.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;
.super Ljava/lang/Object;
.source "GuideDialer.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setLayout()V
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
    .line 588
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 635
    :cond_0
    :goto_0
    return v7

    .line 595
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isAvailableAirView(Landroid/view/MotionEvent;)Z
    invoke-static {v3, p2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isEnableSoundAndHaptic(Landroid/view/MotionEvent;)Z
    invoke-static {v3, p2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 602
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0401f7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 604
    .local v0, "HoverPopupView":Landroid/view/View;
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 607
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/HoverPopupWindow;->setInstanceOfDialer(Z)V

    .line 608
    const v3, 0x7f0207c2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    const/16 v4, 0x3031

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 611
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_2

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v7, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 616
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 618
    :cond_3
    const v3, 0x7f090298

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 619
    .local v2, "mContactPhoto":Landroid/widget/ImageView;
    const v3, 0x7f0203a7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    const v3, 0x7f09029b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e0455

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 622
    const v3, 0x7f09029f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "0123"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 625
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v3, v9}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;I)I

    .line 626
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    goto/16 :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
