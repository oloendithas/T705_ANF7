.class Lcom/android/server/wifi/WifiController$IbssEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IbssEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 821
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setOperationalMode(I)V

    .line 822
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 823
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->setOrRecoveryScanMode(Z)V

    .line 827
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->setOrRecoveryScanMode(Z)V

    .line 861
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 830
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 854
    :goto_0
    return v0

    .line 832
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiStateMachine;->setIbssRunning(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$5800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 854
    goto :goto_0

    .line 838
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 839
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiStateMachine;->setIbssRunning(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$5900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$6000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiIBSSState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "illegal state found both WifiController and WifiStateMachine"

    # invokes: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$6100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$IbssEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$IbssEnabledState;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$6200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 830
    :sswitch_data_0
    .sparse-switch
        0x26009 -> :sswitch_0
        0x2600d -> :sswitch_1
    .end sparse-switch
.end method
