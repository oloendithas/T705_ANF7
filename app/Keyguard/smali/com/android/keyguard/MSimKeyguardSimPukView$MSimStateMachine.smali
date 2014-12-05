.class public Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_30

    .line 73
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 74
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 75
    const v0, 0x7f0600a0

    .line 96
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-eqz v0, :cond_2b

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 100
    :cond_2b
    return-void

    .line 77
    :cond_2c
    const v0, 0x7f0600a5

    goto :goto_14

    .line 79
    :cond_30
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_46

    .line 80
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 81
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 82
    const v0, 0x7f0600a1

    goto :goto_14

    .line 84
    :cond_42
    const v0, 0x7f0600a4

    goto :goto_14

    .line 86
    :cond_46
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_14

    .line 87
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 88
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 89
    const v0, 0x7f06005d

    .line 90
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateSim()V

    goto :goto_14

    .line 92
    :cond_5e
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 93
    const v0, 0x7f0600a7

    goto :goto_14
.end method

.method reset()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f0600a6

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 116
    :goto_27
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 117
    return-void

    .line 109
    :cond_2f
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x1040885

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    goto :goto_27

    .line 114
    :cond_47
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06009f

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_27
.end method
