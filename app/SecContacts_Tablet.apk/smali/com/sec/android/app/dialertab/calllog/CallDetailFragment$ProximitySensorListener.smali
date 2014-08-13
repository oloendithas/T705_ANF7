.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 1

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, "blankView":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 283
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
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "blankView":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 273
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 3

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->clearPendingRequests()V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 3

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->clearPendingRequests()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
