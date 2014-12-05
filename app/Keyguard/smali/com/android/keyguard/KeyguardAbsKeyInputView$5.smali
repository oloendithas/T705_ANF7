.class Lcom/android/keyguard/KeyguardAbsKeyInputView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 498
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 500
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_24
    :goto_24
    return-void

    .line 503
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24
.end method
