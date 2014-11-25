.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavibarHandler"
.end annotation


# static fields
.field private static final MSG_FORCE_CLOSE:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NavibarHandler"

.field private static final TIMEOUT_DELAY:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 4310
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 4310
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method private forceTimeout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4346
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn call forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4348
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4350
    return-void
.end method

.method private resetTimeout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4339
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn call resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4341
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 4336
    :goto_6
    return-void

    .line 4324
    :pswitch_7
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn received MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarHideOnNormalScreen(ZZ)V

    goto :goto_6

    .line 4329
    :pswitch_14
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn requsted to close navibar by MSG_FORCE_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->forceTimeout()V

    goto :goto_6

    .line 4321
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public postCloseSystembar()V
    .registers 3

    .prologue
    .line 4353
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn postCloseSystembar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->forceTimeout()V

    .line 4356
    return-void
.end method

.method public postShowSystembar()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4359
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn postShowSystembar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarShowOnFullScreen(ZZ)V

    .line 4361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->resetTimeout()V

    .line 4362
    return-void
.end method
