.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .registers 2

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 867
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 868
    :cond_1a
    const-string v3, "SPenGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Double tap is disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_48
    :goto_48
    return-void

    .line 873
    :cond_49
    :try_start_49
    const-string v3, "SPenGesture"

    const-string v4, "Double tapped!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 877
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 879
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 880
    .local v0, "callState":I
    const/4 v1, 0x0

    .line 881
    .local v1, "callState2":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 882
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 883
    :cond_88
    if-eq v0, v6, :cond_90

    if-eq v0, v7, :cond_90

    if-eq v1, v6, :cond_90

    if-ne v1, v7, :cond_a6

    .line 885
    :cond_90
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_a0} :catch_a1

    goto :goto_48

    .line 891
    .end local v0    # "callState":I
    .end local v1    # "callState2":I
    :catch_a1
    move-exception v2

    .line 892
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 887
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "callState":I
    .restart local v1    # "callState2":I
    :cond_a6
    :try_start_a6
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->IsKnoxRunning()Z

    move-result v3

    if-nez v3, :cond_48

    .line 888
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_bf} :catch_a1

    goto :goto_48
.end method
