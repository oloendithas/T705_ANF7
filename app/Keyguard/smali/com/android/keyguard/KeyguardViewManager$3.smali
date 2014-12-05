.class Lcom/android/keyguard/KeyguardViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/keyguard/KeyguardViewBase;)V
    .registers 3

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    monitor-enter v1

    .line 700
    :try_start_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->cleanUp()V

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 703
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 704
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$900(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardGone()V

    .line 705
    monitor-exit v1

    .line 706
    return-void

    .line 705
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method
