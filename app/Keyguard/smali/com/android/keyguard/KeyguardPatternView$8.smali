.class Lcom/android/keyguard/KeyguardPatternView$8;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 2

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 805
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 806
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 807
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2d

    .line 808
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_2c
    :goto_2c
    return-void

    .line 810
    :cond_2d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 812
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c
.end method
