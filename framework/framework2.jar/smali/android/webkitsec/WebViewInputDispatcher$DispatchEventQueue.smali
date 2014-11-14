.class final Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DispatchEventQueue"
.end annotation


# instance fields
.field public mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

.field public mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/webkitsec/WebViewInputDispatcher$1;

    .prologue
    .line 1459
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeue()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1478
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1479
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_d

    .line 1480
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1481
    .local v1, "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-nez v1, :cond_e

    .line 1482
    iput-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1483
    iput-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1489
    .end local v1    # "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_d
    :goto_d
    return-object v0

    .line 1485
    .restart local v1    # "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_e
    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1486
    iput-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    goto :goto_d
.end method

.method public dequeueList()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1493
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1494
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_9

    .line 1495
    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1496
    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1498
    :cond_9
    return-object v0
.end method

.method public enqueue(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .registers 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-nez v0, :cond_9

    .line 1469
    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1470
    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1475
    :goto_8
    return-void

    .line 1472
    :cond_9
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object p1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1473
    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    goto :goto_8
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
