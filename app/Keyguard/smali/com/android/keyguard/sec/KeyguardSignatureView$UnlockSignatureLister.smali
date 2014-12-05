.class Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/keyguard/sec/KeyguardSignatureView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p2, "x1"    # Lcom/android/keyguard/sec/KeyguardSignatureView$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .registers 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_7
    const-string v0, "KeyguardSignatureView"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 488
    const-string v0, "KeyguardSignatureView"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 490
    monitor-exit v1

    .line 503
    :goto_2d
    return-void

    .line 493
    :cond_2e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 494
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 498
    :cond_4c
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$2002(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 502
    monitor-exit v1

    goto :goto_2d

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public onAddSignFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 478
    return-void
.end method

.method public onAddSignSucceeded(I)V
    .registers 2
    .param p1, "nCount"    # I

    .prologue
    .line 481
    return-void
.end method

.method public onSignatureCleared()V
    .registers 3

    .prologue
    .line 414
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method public onSignatureDetected()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 424
    const-string v3, "KeyguardSignatureView"

    const-string v4, "onSignatureDetected is called by SignView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 441
    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 442
    const-string v3, "KeyguardSignatureView"

    const-string v4, "Signature verification is successful, let\'s unlock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_22
    sget-object v3, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->SUCCESS:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 445
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 446
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1402(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I

    .line 447
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 475
    :goto_3e
    return-void

    .line 449
    :cond_3f
    sget-object v3, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 451
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 452
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getFailedAttempts()I

    move-result v4

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1402(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I

    .line 454
    const-string v3, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sign verification is failed, count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_a2

    .line 464
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 465
    .local v0, "deadline":J
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1600(Lcom/android/keyguard/sec/KeyguardSignatureView;J)V

    goto :goto_3e

    .line 467
    .end local v0    # "deadline":J
    :cond_a2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "guideMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v3

    invoke-interface {v3, v2, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 472
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3e
.end method

.method public onSignatureInputting()V
    .registers 4

    .prologue
    .line 418
    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 421
    return-void
.end method

.method public onSignatureStart()V
    .registers 3

    .prologue
    .line 403
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 408
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1100()Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    .line 409
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->IDENTIFYING:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 411
    :cond_1e
    return-void
.end method
