.class Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitIccIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/KeyguardSecurityModel$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardSecurityModel;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;)V

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 157
    monitor-enter p0

    const/4 v2, 0x0

    .line 158
    .local v2, "result":Z
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "iccId":Ljava/lang/String;
    const/16 v1, 0xa

    .line 162
    .local v1, "numRetries":I
    :goto_e
    if-nez v0, :cond_34

    if-lez v1, :cond_34

    .line 163
    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_31

    .line 165
    :try_start_17
    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_20} :catch_42
    .catchall {:try_start_17 .. :try_end_20} :catchall_2e

    .line 168
    :goto_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2e

    .line 169
    add-int/lit8 v1, v1, -0x1

    .line 170
    :try_start_23
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_31

    move-result-object v0

    goto :goto_e

    .line 168
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 157
    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "numRetries":I
    :catchall_31
    move-exception v3

    monitor-exit p0

    throw v3

    .line 173
    .restart local v0    # "iccId":Ljava/lang/String;
    .restart local v1    # "numRetries":I
    :cond_34
    if-eqz v0, :cond_3c

    .line 174
    :try_start_36
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    # invokes: Lcom/android/keyguard/KeyguardSecurityModel;->unlockSimPin(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->access$200(Lcom/android/keyguard/KeyguardSecurityModel;Ljava/lang/String;)Z

    move-result v2

    .line 176
    :cond_3c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_31

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 166
    :catch_42
    move-exception v3

    goto :goto_20
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 182
    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->sPinLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$300()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 183
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardSecurityModel;->sPinUnlocking:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_29

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "verify_sim_pin"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->access$500(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    .end local v0    # "i":Landroid/content/Intent;
    :cond_29
    monitor-exit v2

    .line 190
    return-void

    .line 189
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
