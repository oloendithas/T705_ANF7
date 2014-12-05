.class Lcom/android/keyguard/KeyguardSimPinView$4;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Z)V
    .registers 11
    .param p1, "success"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 269
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_f

    .line 270
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    .line 272
    :cond_f
    if-eqz p1, :cond_86

    .line 273
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 274
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$300(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 275
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900df

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const v6, 0x102030d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "layout":Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 279
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x1040573

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 281
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 282
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 283
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 284
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 289
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "layout":Landroid/view/View;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_5b
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 290
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 299
    :goto_6f
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 300
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iput-boolean v8, v4, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 301
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$600(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 302
    return-void

    .line 292
    :cond_86
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v5, 0x7f0600a3

    invoke-interface {v4, v5, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 294
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # setter for: Lcom/android/keyguard/KeyguardSimPinView;->isWrongPIN:Z
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardSimPinView;->access$502(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 296
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->getSimPinRetry()I
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardSimPinView;->mRemainingCount:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 297
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPinView;->updateRetryCount()V

    goto :goto_6f
.end method
