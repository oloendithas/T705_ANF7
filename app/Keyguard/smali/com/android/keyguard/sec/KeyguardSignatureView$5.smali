.class Lcom/android/keyguard/sec/KeyguardSignatureView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSignatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 387
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 389
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_24
    :goto_24
    return-void

    .line 392
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_24

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24
.end method
