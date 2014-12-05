.class Lcom/android/keyguard/sec/SecKeyguardClock$1;
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
    .line 112
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClock$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$002(Lcom/android/keyguard/sec/SecKeyguardClock;I)I

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$100(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    .line 120
    :cond_1d
    return-void
.end method
