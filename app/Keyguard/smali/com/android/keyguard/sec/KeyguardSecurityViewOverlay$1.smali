.class Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecurityViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    # invokes: Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->access$000(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    .line 86
    :cond_b
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "subscription"    # I

    .prologue
    .line 88
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    # invokes: Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->access$000(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    .line 91
    :cond_b
    return-void
.end method
