.class Lcom/android/keyguard/sec/BatteryMeterView$1;
.super Landroid/os/Handler;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/BatteryMeterView;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/keyguard/sec/BatteryMeterView$1;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 497
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 502
    :goto_5
    return-void

    .line 499
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$1;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_5

    .line 497
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
