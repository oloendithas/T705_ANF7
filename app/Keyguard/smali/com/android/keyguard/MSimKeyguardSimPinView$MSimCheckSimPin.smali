.class abstract Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
.super Ljava/lang/Thread;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V
    .registers 4
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "sub"    # I

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    .line 267
    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {p1, p3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I

    .line 268
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .registers 6

    .prologue
    .line 275
    :try_start_0
    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSimCheckSimPin:run(), mPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v4}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 278
    const-string v2, "phone"

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 280
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    .end local v1    # "result":Z
    :goto_5a
    return-void

    .line 286
    :cond_5b
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v4}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPin(Ljava/lang/String;I)Z

    move-result v1

    .line 288
    .restart local v1    # "result":Z
    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7f} :catch_80

    goto :goto_5a

    .line 294
    .end local v1    # "result":Z
    :catch_80
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5a
.end method
