.class Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbConnectionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/keyguard/KeyguardViewMediator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardViewMediator$1;

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 808
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_40

    .line 809
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 810
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 811
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 813
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 814
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isAdbEnabled()Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v2

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2302(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 815
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/keyguard/KeyguardViewMediator;Z)V

    .line 823
    :cond_40
    :goto_40
    return-void

    .line 820
    :cond_41
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$2202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    goto :goto_40
.end method
