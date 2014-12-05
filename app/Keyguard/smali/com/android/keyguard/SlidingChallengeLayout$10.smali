.class Lcom/android/keyguard/SlidingChallengeLayout$10;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;)V
    .registers 2

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1506
    const/4 v0, 0x0

    .line 1508
    .local v0, "DEBUG_TOUCH":Z
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$400(Lcom/android/keyguard/SlidingChallengeLayout;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 1509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1c4

    .line 1517
    :goto_10
    :pswitch_10
    const/4 v5, 0x1

    .line 1602
    :goto_11
    return v5

    .line 1512
    :pswitch_12
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    goto :goto_10

    .line 1520
    :cond_19
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$500(Lcom/android/keyguard/SlidingChallengeLayout;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1521
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 1522
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    .line 1524
    :cond_2e
    const/4 v5, 0x1

    goto :goto_11

    .line 1527
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 1528
    .local v3, "touchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 1530
    .local v4, "touchedEventY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1ce

    .line 1590
    :cond_3f
    :goto_3f
    :pswitch_3f
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockEffect:I
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1400(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v5

    packed-switch v5, :pswitch_data_1e0

    .line 1602
    :goto_48
    const/4 v5, 0x1

    goto :goto_11

    .line 1532
    :pswitch_4a
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1533
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v5, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->access$702(Lcom/android/keyguard/SlidingChallengeLayout;F)F

    .line 1534
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v5, v4}, Lcom/android/keyguard/SlidingChallengeLayout;->access$802(Lcom/android/keyguard/SlidingChallengeLayout;F)F

    .line 1535
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D

    goto :goto_3f

    .line 1538
    :pswitch_66
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 1539
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-interface {v5, v6, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 1542
    :cond_79
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$700(Lcom/android/keyguard/SlidingChallengeLayout;)F

    move-result v5

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 1543
    .local v1, "diffX":I
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/keyguard/SlidingChallengeLayout;)F

    move-result v5

    sub-float v5, v4, v5

    float-to-int v2, v5

    .line 1545
    .local v2, "diffY":I
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D

    .line 1546
    if-eqz v0, :cond_c3

    .line 1547
    const-string v5, "SlidingChallengeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_c3
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v7

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_3f

    .line 1550
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    .line 1551
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    .line 1552
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_f5

    .line 1553
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1556
    :cond_f5
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v5

    if-nez v5, :cond_103

    .line 1557
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1559
    :cond_103
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1560
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_3f

    .line 1564
    .end local v1    # "diffX":I
    .end local v2    # "diffY":I
    :pswitch_114
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    .line 1566
    :pswitch_11a
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D

    .line 1567
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3f

    .line 1570
    :pswitch_12e
    if-eqz v0, :cond_14e

    .line 1571
    const-string v5, "SlidingChallengeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_14e
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mFirstBorder:I
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1300(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_191

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_191

    .line 1574
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    .line 1575
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    .line 1576
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_191

    .line 1577
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1581
    :cond_191
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v5

    if-nez v5, :cond_19f

    .line 1582
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1584
    :cond_19f
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3f

    .line 1593
    :pswitch_1ac
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_48

    .line 1599
    :pswitch_1b7
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_48

    .line 1509
    nop

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 1530
    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_12e
        :pswitch_66
        :pswitch_11a
        :pswitch_3f
        :pswitch_3f
        :pswitch_114
    .end packed-switch

    .line 1590
    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_1ac
        :pswitch_1b7
        :pswitch_1b7
    .end packed-switch
.end method
