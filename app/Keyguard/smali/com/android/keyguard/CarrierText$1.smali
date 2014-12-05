.class Lcom/android/keyguard/CarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlmn:Ljava/lang/CharSequence;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    .line 50
    iput-object p2, p0, Lcom/android/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 62
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 66
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 6
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
