.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 2

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAttemptLockout(J)V
    .registers 12
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 837
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 839
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 840
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 841
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1302(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 843
    :cond_1b
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v8, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1302(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 868
    return-void
.end method

.method public resetSpass()V
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 832
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 833
    return-void
.end method

.method public updateButtonArea()V
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 827
    return-void
.end method
