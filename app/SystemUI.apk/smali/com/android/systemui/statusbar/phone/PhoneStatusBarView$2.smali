.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 10
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 451
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    .line 452
    .local v0, "coverType":I
    if-eq v0, v8, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseSViewCover2:Z

    if-nez v3, :cond_8

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    if-ne v3, v8, :cond_5

    .line 456
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 457
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseCoverMarqueeDelay:Z

    if-eqz v3, :cond_2

    .line 458
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 459
    .local v1, "mHandler":Landroid/os/Handler;
    const/16 v2, 0x12c

    .line 460
    .local v2, "marqueeDelay":I
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;)V

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 524
    .end local v1    # "mHandler":Landroid/os/Handler;
    .end local v2    # "marqueeDelay":I
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear cover opened : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 484
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseSViewCover2:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDisableClockOnCoverUI:Z

    if-eqz v3, :cond_4

    .line 485
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 487
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0

    .line 490
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScoverMargin:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    if-lez v3, :cond_1

    .line 492
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear cover closed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 499
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 501
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseSViewCover2:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDisableClockOnCoverUI:Z

    if-eqz v3, :cond_7

    .line 502
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 505
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto/16 :goto_0

    .line 509
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    if-lez v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 511
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear cover opened : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 518
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseSViewCover2:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDisableClockOnCoverUI:Z

    if-eqz v3, :cond_a

    .line 519
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 521
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto/16 :goto_0
.end method
