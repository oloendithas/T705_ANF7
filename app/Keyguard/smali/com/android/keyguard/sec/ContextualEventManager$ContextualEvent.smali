.class Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
.super Ljava/lang/Object;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextualEvent"
.end annotation


# instance fields
.field private remoteViews:Landroid/widget/RemoteViews;

.field private requestClass:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualEventManager;

.field private view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V
    .registers 4
    .param p2, "requestClass"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;

    .line 282
    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 7
    .param p2, "requestClass"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;

    .line 286
    const-string v1, "ContextualEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ContextualEvent() mOnClickHandler="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;
    invoke-static {p1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$1000(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, "null"

    :goto_24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-object p3, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;

    .line 288
    return-void

    .line 286
    :cond_2a
    const-string v0, "not null"

    goto :goto_24
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method
