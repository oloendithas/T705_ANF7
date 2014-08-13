.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3989
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3993
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3994
    .local v1, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3995
    const/4 v6, 0x0

    .line 3996
    .local v6, "flags":I
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3997
    const-string v9, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3998
    .local v7, "reason":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v9, "recentapps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3999
    or-int/lit8 v6, v6, 0x2

    .line 4002
    .end local v7    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4097
    .end local v6    # "flags":I
    :cond_1
    :goto_0
    return-void

    .line 4004
    :cond_2
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4005
    const-string v9, "STATUSBAR-PhoneStatusBar"

    const-string v10, "     ACTION_SCREEN_OFF is received!!!! "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4008
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 4009
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4010
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4011
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4013
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v9, :cond_3

    .line 4014
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 4017
    :cond_3
    const-string v9, "STATUSBAR-PhoneStatusBar"

    const-string v10, "     ACTION_SCREEN_OFF is finished!!!! "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4019
    :cond_4
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4020
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4022
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4023
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4026
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v9, :cond_1

    .line 4027
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto :goto_0

    .line 4030
    :cond_5
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4031
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    .line 4032
    const-string v9, "status"

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4034
    .local v3, "battStatus":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-eqz v9, :cond_6

    .line 4035
    const-string v9, "PhoneStatusBar"

    const-string v10, "Battery level does not show the level for 0% in upsm and emergency mode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0029

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4041
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    const/4 v10, 0x5

    if-gt v9, v10, :cond_7

    const/4 v9, 0x2

    if-eq v3, v9, :cond_7

    .line 4042
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4046
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4038
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0029

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v14, v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4044
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_2

    .line 4049
    .end local v3    # "battStatus":I
    :cond_8
    const-string v9, "com.android.systemui.demo"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4050
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 4051
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 4052
    const-string v9, "command"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 4053
    .local v5, "command":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 4055
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v5, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4056
    :catch_0
    move-exception v8

    .line 4057
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error running demo command, intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4061
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "command":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_9
    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4062
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v9, :cond_1

    .line 4063
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on_reason_usb3"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 4066
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on_reason_usb3"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4067
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4069
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4070
    .local v2, "airplaneIntent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4071
    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4072
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4073
    const-string v9, "STATUSBAR-PhoneStatusBar"

    const-string v10, "ACTION_POWER_DISCONNECTED received() - sendBroadcast : false"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4075
    .end local v2    # "airplaneIntent":Landroid/content/Intent;
    :cond_a
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent.ACTION_POWER_DISCONNECTED DB_AIRPLANEMODE_ON_REASON_USB3 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on_reason_usb3"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Settings.Global.AIRPLANE_MODE_ON = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4085
    :cond_b
    const-string v9, "com.sec.android.sconnect.service.ENABLED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4086
    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mQconnectEnable = true"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4088
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0
.end method
