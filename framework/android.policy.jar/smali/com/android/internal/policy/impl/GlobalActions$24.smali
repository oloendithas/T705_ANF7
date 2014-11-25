.class Lcom/android/internal/policy/impl/GlobalActions$24;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


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
    .line 2177
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$24;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x3

    .line 2180
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$24;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p1, :cond_c

    .line 2195
    :cond_b
    :goto_b
    return-void

    .line 2190
    :cond_c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_26

    const/4 v0, 0x1

    .line 2193
    .local v0, "inAirplaneMode":Z
    :goto_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$24;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v0, :cond_28

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_19
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1402(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2194
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$24;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 2190
    .end local v0    # "inAirplaneMode":Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_13

    .line 2193
    .restart local v0    # "inAirplaneMode":Z
    :cond_28
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_19
.end method
