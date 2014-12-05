.class Lcom/android/keyguard/KeyguardViewMediator$6;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2115
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b4

    .line 2171
    :goto_7
    :pswitch_7
    return-void

    .line 2117
    :pswitch_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_7

    .line 2120
    :pswitch_12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 2123
    :pswitch_18
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_7

    .line 2126
    :pswitch_22
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 2129
    :pswitch_28
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 2132
    :pswitch_2e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardShowCallback;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto :goto_7

    .line 2135
    :pswitch_38
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_47

    move v1, v2

    :goto_3f
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_49

    :goto_43
    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V
    invoke-static {v4, v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_7

    :cond_47
    move v1, v3

    goto :goto_3f

    :cond_49
    move v2, v3

    goto :goto_43

    .line 2138
    :pswitch_4b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 2141
    :pswitch_51
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2, v2}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_7

    .line 2144
    :pswitch_57
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_61

    :goto_5d
    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/keyguard/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_61
    move v2, v3

    goto :goto_5d

    .line 2147
    :pswitch_63
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 2148
    :try_start_66
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 2149
    monitor-exit v2

    goto :goto_7

    :catchall_71
    move-exception v1

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_71

    throw v1

    .line 2152
    :pswitch_74
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->handleShowAssistant()V

    goto :goto_7

    .line 2155
    :pswitch_7a
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardViewMediator;->handleDispatchEvent(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 2158
    :pswitch_84
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->handleLaunchCamera()V

    goto/16 :goto_7

    .line 2161
    :pswitch_8b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto/16 :goto_7

    .line 2164
    :pswitch_92
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_7

    .line 2167
    :pswitch_9d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2168
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFlightMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleUpdateFlightMode(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/keyguard/KeyguardViewMediator;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 2115
    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_8
        :pswitch_12
        :pswitch_18
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_7
        :pswitch_38
        :pswitch_4b
        :pswitch_51
        :pswitch_57
        :pswitch_63
        :pswitch_74
        :pswitch_7a
        :pswitch_84
        :pswitch_8b
        :pswitch_92
        :pswitch_9d
    .end packed-switch
.end method
