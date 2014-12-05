.class Lcom/android/keyguard/sec/SPassUnlock$2;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SPassUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SPassUnlock;)V
    .registers 2

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(I)V
    .registers 12
    .param p1, "status"    # I

    .prologue
    const/4 v9, 0x1

    .line 555
    packed-switch p1, :pswitch_data_be

    .line 601
    :cond_4
    :goto_4
    return-void

    .line 557
    :pswitch_5
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 558
    .local v5, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 559
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v6, v6, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 560
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    if-eqz v6, :cond_2b

    .line 561
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->updateButtonArea()V

    .line 564
    :cond_2b
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    .line 566
    .local v3, "failedAttempts":I
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 568
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v4

    .line 569
    .local v4, "mDeviceDisableFailedAttempts":I
    const-string v6, "SPassUnlock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "max failed attempt for device disable :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-lez v4, :cond_6b

    if-lt v3, v4, :cond_6b

    .line 571
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    .line 572
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SPassUnlock;->cleanUp()V

    .line 576
    :cond_6b
    if-eqz v3, :cond_93

    rem-int/lit8 v6, v3, 0x5

    if-nez v6, :cond_93

    .line 577
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    .line 578
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$300(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 579
    .local v0, "deadline":J
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 580
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->handleAttemptLockout(J)V

    goto/16 :goto_4

    .line 583
    .end local v0    # "deadline":J
    :cond_93
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V
    invoke-static {v6, v9}, Lcom/android/keyguard/sec/SPassUnlock;->access$400(Lcom/android/keyguard/sec/SPassUnlock;Z)V

    goto/16 :goto_4

    .line 588
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "failedAttempts":I
    .end local v4    # "mDeviceDisableFailedAttempts":I
    .end local v5    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :pswitch_9a
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # setter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z
    invoke-static {v6, v9}, Lcom/android/keyguard/sec/SPassUnlock;->access$502(Lcom/android/keyguard/sec/SPassUnlock;Z)Z

    .line 589
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$600(Lcom/android/keyguard/sec/SPassUnlock;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 590
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$700(Lcom/android/keyguard/sec/SPassUnlock;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 591
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$800(Lcom/android/keyguard/sec/SPassUnlock;)V

    goto/16 :goto_4

    .line 593
    :cond_b6
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$900(Lcom/android/keyguard/sec/SPassUnlock;)V

    goto/16 :goto_4

    .line 555
    nop

    :pswitch_data_be
    .packed-switch 0x2
        :pswitch_9a
        :pswitch_5
    .end packed-switch
.end method
