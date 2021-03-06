.class Lcom/android/server/enterprise/security/PasswordPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;->getSendingUserId()I

    move-result v6

    .line 540
    .local v6, "sendingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 541
    .local v7, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 543
    .local v2, "currentUserId":I
    const-string v10, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 545
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V
    invoke-static {v10, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$000(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    .line 591
    :cond_0
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    :goto_1
    return-void

    .line 547
    :cond_1
    const-string v10, "android.intent.action.USER_STARTED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 548
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 549
    .local v5, "newCurrentUser":I
    if-ltz v5, :cond_0

    .line 550
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V
    invoke-static {v10, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .line 553
    .end local v5    # "newCurrentUser":I
    :cond_2
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 554
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 555
    .restart local v5    # "newCurrentUser":I
    if-ltz v5, :cond_0

    .line 556
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V
    invoke-static {v10, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .line 559
    .end local v5    # "newCurrentUser":I
    :cond_3
    const-string v10, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 560
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 561
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v10

    if-eqz v10, :cond_0

    .line 562
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_0

    .line 564
    .end local v9    # "userId":I
    :cond_4
    const-string v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 565
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$300(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_0

    .line 566
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V
    invoke-static {v10, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .line 569
    :cond_5
    const-string v10, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 570
    const-string v10, "PasswordPolicy"

    const-string v11, "Received MDM_PASSWORD_EXPIRING_NOTIFICATION intent"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;I)Z
    invoke-static {v11, p2, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$500(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;I)Z

    move-result v11

    if-ne v10, v11, :cond_0

    .line 573
    const-string v10, "expiration"

    const-wide/16 v11, -0x1

    invoke-virtual {p2, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 574
    .local v3, "expiration":J
    const-wide/16 v10, -0x1

    cmp-long v10, v3, v10

    if-eqz v10, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v10, v3, v10

    if-lez v10, :cond_7

    .line 575
    :cond_6
    const-string v10, "PasswordPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In grace period or failed to get "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    :cond_7
    const-string v10, "PasswordPolicy"

    const-string v11, "Password expired already so launching password screen"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$600(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 584
    .local v1, "am":Landroid/app/ActivityManager;
    const-string v10, "com.android.settings"

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 586
    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v11, 0x0

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z
    invoke-static {v10, v11, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$700(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto/16 :goto_0
.end method
