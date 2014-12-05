.class Lcom/android/keyguard/KeyguardSimPukView$4;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .registers 11
    .param p1, "success"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 353
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_f

    .line 354
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    .line 356
    :cond_f
    if-eqz p1, :cond_8c

    .line 357
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 358
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 359
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900df

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const v6, 0x102030d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, "layout":Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 363
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x104091a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 365
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$500(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 366
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 367
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 368
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 371
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "layout":Landroid/view/View;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_5b
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 372
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 373
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 390
    :cond_75
    :goto_75
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 391
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iput-boolean v8, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 392
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 393
    return-void

    .line 384
    :cond_8c
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 385
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v5, 0x7f0600a6

    invoke-interface {v4, v5, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 386
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardSimPukView;->access$002(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 387
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$200(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 388
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView;->updateRetryCount()V

    goto :goto_75
.end method
