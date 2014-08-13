.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 510
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, "blankView":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit p0

    return-void

    .line 544
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, "blankView":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 533
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 3

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 3

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
