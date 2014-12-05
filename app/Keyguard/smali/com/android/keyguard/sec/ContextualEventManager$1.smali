.class Lcom/android/keyguard/sec/ContextualEventManager$1;
.super Landroid/os/Handler;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualEventManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_78

    .line 113
    const-string v1, "ContextualEventManager"

    const-string v2, "not defined message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_10
    return-void

    .line 93
    :pswitch_11
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "requestClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$000(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_10

    .line 98
    :pswitch_25
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedEventRemoved(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->access$100(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V

    goto :goto_10

    .line 101
    :pswitch_31
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "requestClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$200(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_10

    .line 104
    :pswitch_45
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventRemoved(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->access$300(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V

    goto :goto_10

    .line 107
    :pswitch_51
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "requestClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$400(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_10

    .line 110
    :pswitch_65
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFlightMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateFlightMode(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/ContextualEventManager;->access$500(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;I)V

    goto :goto_10

    .line 89
    nop

    :pswitch_data_78
    .packed-switch 0x132f
        :pswitch_11
        :pswitch_25
        :pswitch_11
        :pswitch_25
        :pswitch_31
        :pswitch_45
        :pswitch_51
        :pswitch_65
        :pswitch_11
        :pswitch_25
    .end packed-switch
.end method
