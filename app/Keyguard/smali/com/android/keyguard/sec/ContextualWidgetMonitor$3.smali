.class Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 2

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$900(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$900(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->resetContextualWidget()V

    .line 608
    :cond_11
    return-void
.end method
