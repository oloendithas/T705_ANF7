.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;
.super Landroid/os/CountDownTimer;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

.field final synthetic val$isShowContact:Z

.field final synthetic val$nextStep:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJZI)V
    .locals 1
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iput-boolean p6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->val$isShowContact:Z

    iput p7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->val$nextStep:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1665
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->count:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->val$nextStep:I

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;I)I

    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 1759
    return-void
.end method

.method public onTick(J)V
    .locals 10
    .param p1, "arg0"    # J

    .prologue
    const v9, 0x7f090222

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 1669
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->count:I

    packed-switch v0, :pswitch_data_0

    .line 1750
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->count:I

    .line 1751
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->count:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 1752
    iput v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->count:I

    .line 1753
    :cond_1
    return-void

    .line 1671
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1672
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1673
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1674
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnZero:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)V

    .line 1675
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1679
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtFavoriteNoitem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e02de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnAddContact:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1685
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1687
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnOne:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnOne:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)V

    .line 1689
    const-string v0, "feature_talkback"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1693
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1697
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1699
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1700
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnTwo:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)V

    .line 1701
    const-string v0, "feature_talkback"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1708
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->val$isShowContact:Z

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1710
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0203a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1713
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "012"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1705
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "012"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1717
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->contactName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->txtTotalCount_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->sResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1720
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->vListItem:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2900(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llFavoriteNoitem:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1726
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isSound:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundToneBtn:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1728
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnThree:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1729
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->ibtnThree:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$3100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/widget/ImageButton;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimerForDisable(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;)V

    .line 1730
    const-string v0, "feature_talkback"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1737
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->val$isShowContact:Z

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1739
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->llSearchView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$2100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1734
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1742
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$8;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
