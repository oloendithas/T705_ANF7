.class public Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdaptiveEvent"
.end annotation


# instance fields
.field private requestClass:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/view/View;)V
    .registers 4
    .param p2, "requestClass"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->requestClass:Ljava/lang/String;

    .line 397
    iput-object p3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    .line 398
    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 6
    .param p2, "requestClass"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->requestClass:Ljava/lang/String;

    .line 402
    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    .line 403
    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;

    return-object v0
.end method
