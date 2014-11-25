.class Lcom/android/internal/policy/impl/GlobalActions$20;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 1609
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onPressAction()V

    .line 1610
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1611
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$000()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 1612
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1613
    const/4 v0, 0x0

    :try_start_1c
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$202(Z)Z

    .line 1614
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_7c

    .line 1618
    :goto_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3800(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1619
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1622
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1623
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 1624
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1626
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 1627
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$20;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1628
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_7b

    .line 1629
    const-string v0, "GlobalActions"

    const-string v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_7b
    :goto_7b
    return-void

    .line 1614
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    .line 1616
    :cond_7f
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$002(Z)Z

    goto :goto_20

    .line 1632
    :cond_83
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_7b

    .line 1633
    const-string v0, "GlobalActions"

    const-string v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b
.end method
