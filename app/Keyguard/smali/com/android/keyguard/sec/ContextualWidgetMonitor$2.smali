.class Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;
.super Landroid/os/Handler;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3e

    .line 296
    :goto_7
    return-void

    .line 269
    :sswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$400(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    goto :goto_7

    .line 272
    :sswitch_e
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$500(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 275
    :sswitch_14
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$500(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 278
    :sswitch_1a
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$600(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 281
    :sswitch_20
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$600(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 284
    :sswitch_26
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$700(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 287
    :sswitch_2c
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$700(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 290
    :sswitch_32
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$800(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 293
    :sswitch_38
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$800(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 265
    :sswitch_data_3e
    .sparse-switch
        0x12c0 -> :sswitch_8
        0x12ca -> :sswitch_8
        0x12d4 -> :sswitch_e
        0x12de -> :sswitch_14
        0x12e8 -> :sswitch_1a
        0x12f2 -> :sswitch_20
        0x12fc -> :sswitch_26
        0x1306 -> :sswitch_2c
        0x1310 -> :sswitch_32
        0x131a -> :sswitch_38
        0x1324 -> :sswitch_8
    .end sparse-switch
.end method
