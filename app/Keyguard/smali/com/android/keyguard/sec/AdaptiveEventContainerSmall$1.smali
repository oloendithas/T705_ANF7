.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;
.super Landroid/os/Handler;
.source "AdaptiveEventContainerSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    .line 45
    .local v0, "what":I
    packed-switch v0, :pswitch_data_18

    .line 56
    :goto_5
    return-void

    .line 47
    :pswitch_6
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleEmergencyUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_5

    .line 50
    :pswitch_c
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_5

    .line 53
    :pswitch_12
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_5

    .line 45
    :pswitch_data_18
    .packed-switch 0x132e
        :pswitch_6
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
