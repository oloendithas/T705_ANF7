.class Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "intentAction":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)I

    .line 114
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    .line 116
    const-string v3, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, isAirPlaneMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMobileData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto :goto_0

    .line 126
    :cond_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    .line 128
    const-string v3, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ACTION_SIM_STATE_CHANGED, mMobileData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SIM_STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PopUp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSimCheckCTCDual:Z

    if-nez v3, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eq v3, v8, :cond_5

    .line 137
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto/16 :goto_0

    .line 142
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto/16 :goto_0

    .line 145
    :cond_7
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_0

    .line 149
    :cond_8
    const-string v3, "com.samsung.intent.action.DATA_SERVICE_NETWORK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 150
    const-string v3, "DATA_SERVICE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, "currentSlot":I
    const-string v3, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: DATA_SERVICE_NETWORK : currentSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileDataAsSlot(I)Z
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$600(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "currentSlot":I
    :cond_9
    const-string v3, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 155
    const-string v3, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v4, "onReceive: ACTION_MOBILE_DATA_ENABLE_POPUP"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onORGDisplayMobileDataOnAlert()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$700(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    goto/16 :goto_0

    .line 157
    :cond_a
    const-string v3, "com.sec.android.phone.action.DataEnable"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 158
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->OXYGEN_NETWORK:Z

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "data_enable"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 160
    .local v1, "data_enable":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    .line 161
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 165
    .end local v1    # "data_enable":Z
    :cond_b
    const-string v3, "com.sec.kidsplat.quickpanel.MOBILE_DATA_SET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const-string v3, "STATUSBAR-MobileDataQuickSettingButton"

    const-string v4, "onReceive: KIDS_QUICKPANEL_DATA_SET_ACTION"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    const-string v4, "turn_state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onClick(Z)V

    goto/16 :goto_0
.end method
