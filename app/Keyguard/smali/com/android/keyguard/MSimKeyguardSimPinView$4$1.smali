.class Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView$4;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView$4;Z)V
    .registers 3

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iput-boolean p2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 332
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_13

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 335
    :cond_13
    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimCheckResponse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->val$success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->val$success:Z

    if-eqz v1, :cond_bc

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-boolean v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->val$success:Z

    # invokes: Lcom/android/keyguard/MSimKeyguardSimPinView;->closeKeyGuard(Z)V
    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$500(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)V

    .line 340
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 341
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$600(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DSNETWORK"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate--DSNETWORK VALUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$700(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "DSNETWORK"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "PINPUKUnlock"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    .end local v0    # "i":Landroid/content/Intent;
    :cond_9f
    :goto_9f
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 364
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iput-boolean v6, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 365
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$1100(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 366
    return-void

    .line 349
    :cond_bc
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f0600a3

    invoke-interface {v1, v2, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z
    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z

    .line 352
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # invokes: Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v2

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I
    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I

    .line 353
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_126

    .line 354
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$900(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v2

    if-ne v1, v2, :cond_126

    .line 355
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x1040885

    invoke-interface {v1, v2, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 356
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z
    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$1002(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z

    .line 358
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z
    invoke-static {v1, v6}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z

    .line 361
    :cond_126
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    goto/16 :goto_9f
.end method
