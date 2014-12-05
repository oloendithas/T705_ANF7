.class Lcom/android/keyguard/KeyguardMessageArea$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 7
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, v3, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_20

    :cond_1f
    move v1, v2

    :cond_20
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 194
    return-void

    :cond_3e
    move v0, v1

    .line 187
    goto :goto_11
.end method

.method public onScreenTurnedOff(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 197
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 200
    return-void
.end method
