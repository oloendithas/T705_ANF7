.class Lcom/android/keyguard/KeyguardSecurityModel$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel$1;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_5
    # getter for: Lcom/android/keyguard/KeyguardSecurityModel;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
