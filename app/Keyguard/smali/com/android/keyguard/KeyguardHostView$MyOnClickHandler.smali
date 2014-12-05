.class Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnClickHandler"
.end annotation


# instance fields
.field mThis:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 3
    .param p1, "hostView"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 1709
    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    .line 1710
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;->mThis:Ljava/lang/ref/WeakReference;

    .line 1711
    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1717
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;->mThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    .line 1718
    .local v1, "hostView":Lcom/android/keyguard/KeyguardHostView;
    if-nez v1, :cond_d

    .line 1767
    :goto_c
    return v2

    .line 1721
    :cond_d
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1722
    iget-object v4, v1, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 1724
    :cond_18
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {p2}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaPatentIssue(Landroid/app/PendingIntent;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGermanyFeature()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {p2}, Lcom/android/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-nez v4, :cond_3c

    :cond_30
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-static {p2}, Lcom/android/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 1728
    :cond_3c
    new-instance v4, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler$1;-><init>(Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 1750
    # getter for: Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$3200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v4

    if-nez v4, :cond_60

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-nez v4, :cond_60

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGermanyFeature()Z

    move-result v4

    if-nez v4, :cond_60

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1752
    :cond_60
    # getter for: Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$3200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 1754
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/ContextualEventManager;->isMissedEventTop()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->animateMissedEvent(Landroid/view/View;)V

    :cond_80
    :goto_80
    move v2, v3

    .line 1765
    goto :goto_c

    .line 1759
    :cond_82
    :try_start_82
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_89} :catch_91

    .line 1763
    :goto_89
    # getter for: Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$1400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_80

    .line 1760
    :catch_91
    move-exception v0

    .line 1761
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardHostView"

    const-string v5, "can\'t dismiss keyguard on launch"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 1767
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9a
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    goto/16 :goto_c
.end method
