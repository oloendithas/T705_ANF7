.class Lcom/android/keyguard/sec/SecMyProfile$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/keyguard/sec/SecMyProfile;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/keyguard/sec/SecMyProfile$2;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v1, 0x64

    .line 90
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile$2;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    # getter for: Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecMyProfile;->access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile$2;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    # getter for: Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecMyProfile;->access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile$2;->this$0:Lcom/android/keyguard/sec/SecMyProfile;

    # getter for: Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecMyProfile;->access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method
