.class Lcom/android/keyguard/sec/ContextualEventContainer$1;
.super Landroid/os/Handler;
.source "ContextualEventContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualEventContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualEventContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventContainer$1;->this$0:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer$1;->this$0:Lcom/android/keyguard/sec/ContextualEventContainer;

    # invokes: Lcom/android/keyguard/sec/ContextualEventContainer;->handleUpdate()V
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventContainer;->access$000(Lcom/android/keyguard/sec/ContextualEventContainer;)V

    .line 34
    return-void
.end method
