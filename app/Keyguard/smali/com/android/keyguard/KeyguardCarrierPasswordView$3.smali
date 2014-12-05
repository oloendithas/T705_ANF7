.class Lcom/android/keyguard/KeyguardCarrierPasswordView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardCarrierPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 294
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v2, 0x1

    .line 278
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f060030

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 288
    :goto_1b
    return-void

    .line 281
    :cond_1c
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f060031

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1b

    .line 285
    :cond_37
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f060032

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1b
.end method
