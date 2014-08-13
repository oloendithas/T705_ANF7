.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;
.super Landroid/os/CountDownTimer;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # operator++ for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$208(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    const v1, 0x7f0e04d2

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$1600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;II)V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$7;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1648
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 1638
    return-void
.end method
