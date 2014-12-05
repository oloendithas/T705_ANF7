.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method onEmergencyCallAction()V
    .registers 1

    .prologue
    .line 156
    return-void
.end method

.method onICCCardStateChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "iccStatus"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 79
    return-void
.end method

.method onKeyguardVisibilityChangedRaw(Z)V
    .registers 8
    .param p1, "showing"    # Z

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 83
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_13

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    .line 88
    :goto_12
    return-void

    .line 85
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 86
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 87
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    goto :goto_12
.end method

.method public onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 144
    return-void
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .registers 4
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 151
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 2
    .param p1, "phoneState"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 44
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;
    .param p3, "subscription"    # I

    .prologue
    .line 192
    return-void
.end method

.method onRingerModeChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 65
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .registers 2
    .param p1, "why"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 2
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 121
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "subscription"    # I

    .prologue
    .line 182
    return-void
.end method

.method onTimeChanged()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method onUserInfoChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 131
    return-void
.end method

.method onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 110
    return-void
.end method
