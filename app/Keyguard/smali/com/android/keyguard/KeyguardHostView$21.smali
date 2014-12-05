.class Lcom/android/keyguard/KeyguardHostView$21;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3327
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$21;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$21;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_1b

    .line 3332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$21;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$3902(Lcom/android/keyguard/KeyguardHostView;I)I

    .line 3334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$21;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->resetStateLocked(Landroid/os/Bundle;)V

    .line 3335
    const-string v0, "KeyguardHostView"

    const-string v1, "reset lockscreen by user action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    :cond_1b
    return-void
.end method
