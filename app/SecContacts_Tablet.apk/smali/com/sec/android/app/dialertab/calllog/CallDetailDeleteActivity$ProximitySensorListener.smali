.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "blankView":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
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
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "blankView":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 257
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
