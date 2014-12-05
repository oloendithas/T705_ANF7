.class Lcom/android/keyguard/KeyguardViewMediator$8;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 2706
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2709
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mWearabledevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const-string v4, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 2711
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2712
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2715
    .local v2, "isEnabled":Z
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , Device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , isEnabled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    if-eqz v2, :cond_82

    .line 2718
    if-eqz v1, :cond_81

    .line 2719
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3202(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2769
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "isEnabled":Z
    :cond_81
    :goto_81
    return-void

    .line 2723
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "isEnabled":Z
    :cond_82
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTO_LOCK_SERVICE : Device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mWearabledevice ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_11c

    if-eqz v1, :cond_11c

    .line 2726
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2727
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3202(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2728
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTO_LOCK_SERVICE : isSmartUnlockEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_81

    .line 2732
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2733
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 2734
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_81

    .line 2738
    :cond_11c
    const-string v4, "KeyguardViewMediator"

    const-string v5, "ACTION_AUTO_LOCK_SERVICE : mWearabledevice =/= device !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    .line 2741
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "isEnabled":Z
    :cond_125
    const-string v4, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_194

    .line 2742
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_81

    .line 2745
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 2746
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2748
    :cond_17e
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$4700()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_81

    .line 2750
    :cond_194
    const-string v4, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f7

    .line 2751
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 2752
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 2753
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2755
    :cond_1c9
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_81

    .line 2757
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2758
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 2759
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_81

    .line 2762
    :cond_1f7
    const-string v4, "android.bluetooth.device.action.RSSI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2763
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 2764
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2765
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2766
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_81
.end method
