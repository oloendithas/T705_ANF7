.class Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView$4;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView$4;Z)V
    .registers 3

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iput-boolean p2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 286
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_13

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 289
    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->val$success:Z

    if-eqz v1, :cond_78

    .line 290
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 291
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 292
    invoke-static {v4}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 295
    :cond_2c
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 296
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "PINPUKUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    .end local v0    # "i":Landroid/content/Intent;
    :cond_5b
    :goto_5b
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iput-boolean v4, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 318
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 319
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$700(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 320
    return-void

    .line 303
    :cond_78
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f0600a6

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 306
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # invokes: Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$300(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I
    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;I)I

    .line 307
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$600(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    if-ne v1, v2, :cond_e0

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x1040885

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v1, v4}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 315
    :cond_e0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    goto/16 :goto_5b
.end method
