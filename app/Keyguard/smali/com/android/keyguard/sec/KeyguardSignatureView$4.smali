.class Lcom/android/keyguard/sec/KeyguardSignatureView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardSignatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setUserInputEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 380
    return-void
.end method

.method public onTick(J)V
    .registers 10
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 369
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 370
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    const v2, 0x7f06009a

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 372
    return-void
.end method
