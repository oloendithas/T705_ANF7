.class Lcom/android/keyguard/KeyguardHostView$3;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveToContextualWidget(I)V
    .registers 3
    .param p1, "widgetId"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->goToWidget(I)V

    .line 517
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 518
    return-void
.end method

.method public resetContextualWidget()V
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_12

    .line 523
    const/4 v0, 0x1

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mIsBlockToResetByContextualWidgetUpdated:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$802(Z)Z

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->resetStateLocked(Landroid/os/Bundle;)V

    .line 526
    :cond_12
    return-void
.end method
