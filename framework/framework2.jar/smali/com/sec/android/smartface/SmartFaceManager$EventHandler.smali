.class Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mManager:Lcom/sec/android/smartface/SmartFaceManager;

.field final synthetic this$0:Lcom/sec/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/smartface/SmartFaceManager;Lcom/sec/android/smartface/SmartFaceManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "manager"    # Lcom/sec/android/smartface/SmartFaceManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    .line 491
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 493
    iput-object p2, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 494
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 500
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 523
    :goto_d
    return-void

    .line 503
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/smartface/FaceInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;->onInfo(Lcom/sec/android/smartface/FaceInfo;I)V

    goto :goto_d

    .line 506
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_38

    .line 507
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onRegistered(Lcom/sec/android/smartface/SmartFaceManager;I)V

    goto :goto_d

    .line 509
    :cond_38
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 512
    :pswitch_40
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_5a

    .line 513
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onUnregistered(Lcom/sec/android/smartface/SmartFaceManager;I)V

    goto :goto_d

    .line 515
    :cond_5a
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 521
    :cond_62
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 500
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1e
        :pswitch_40
    .end packed-switch
.end method
