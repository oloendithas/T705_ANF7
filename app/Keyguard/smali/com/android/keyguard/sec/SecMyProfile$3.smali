.class Lcom/android/keyguard/sec/SecMyProfile$3;
.super Landroid/content/BroadcastReceiver;
.source "SecMyProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecMyProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecMyProfile;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecMyProfile;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/keyguard/sec/SecMyProfile$3;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x64

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile$3;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    # getter for: Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecMyProfile;->access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile$3;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    # getter for: Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecMyProfile;->access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile$3;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    # getter for: Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecMyProfile;->access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method
