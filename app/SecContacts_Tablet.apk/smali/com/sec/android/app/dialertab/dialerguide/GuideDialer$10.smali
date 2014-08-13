.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;
.super Landroid/os/CountDownTimer;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runVoiceCallAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field aniDirect:I

.field aniStep:I

.field count:I

.field direct:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

.field final synthetic val$nextStep:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJI)V
    .locals 2
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2050
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iput p6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->val$nextStep:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2051
    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->count:I

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->direct:I

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniStep:I

    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniDirect:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->val$nextStep:I

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$202(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;I)I

    .line 2109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 2110
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const v2, 0x7f09035a

    const v1, 0x7f09035b

    .line 2055
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->count:I

    packed-switch v0, :pswitch_data_0

    .line 2080
    :goto_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniStep:I

    packed-switch v0, :pswitch_data_1

    .line 2097
    :goto_1
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->count:I

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->direct:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->count:I

    .line 2098
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->direct:I

    .line 2099
    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->count:I

    if-gtz v0, :cond_1

    iput v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->direct:I

    .line 2101
    :cond_1
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniStep:I

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniDirect:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniStep:I

    .line 2102
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniStep:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniDirect:I

    .line 2103
    :cond_2
    iget v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniStep:I

    if-gtz v0, :cond_3

    iput v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->aniDirect:I

    .line 2104
    :cond_3
    return-void

    .line 2057
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020610

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2061
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020611

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2065
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020612

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2069
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020613

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2073
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020614

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2082
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02060d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2086
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02060e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2090
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$10;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02060f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2055
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2080
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
