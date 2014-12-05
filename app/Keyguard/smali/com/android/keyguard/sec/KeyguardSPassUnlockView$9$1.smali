.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1502(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)I

    .line 860
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 861
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 862
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1302(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 863
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 865
    :cond_3b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 866
    return-void
.end method

.method public onTick(J)V
    .registers 9
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 847
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 848
    .local v1, "secondsRemaining":I
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 849
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "remainText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    .end local v0    # "remainText":Ljava/lang/String;
    :cond_3b
    return-void
.end method
