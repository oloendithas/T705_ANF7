.class Lcom/android/keyguard/sec/SPassUnlock$3;
.super Landroid/content/BroadcastReceiver;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SPassUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SPassUnlock;)V
    .registers 2

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 627
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 629
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock$3;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SPassUnlock;->start()Z

    .line 631
    :cond_12
    return-void
.end method
