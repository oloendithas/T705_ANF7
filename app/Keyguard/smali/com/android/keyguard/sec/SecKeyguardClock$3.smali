.class Lcom/android/keyguard/sec/SecKeyguardClock$3;
.super Landroid/content/BroadcastReceiver;
.source "SecKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClock$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x12cb

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    return-void
.end method