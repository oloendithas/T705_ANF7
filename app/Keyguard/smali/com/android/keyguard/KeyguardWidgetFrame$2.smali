.class Lcom/android/keyguard/KeyguardWidgetFrame$2;
.super Landroid/os/Handler;
.source "KeyguardWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .registers 2

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame$2;->this$0:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 590
    :goto_5
    return-void

    .line 587
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame$2;->this$0:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrameTouched(Ljava/lang/Object;)V

    goto :goto_5

    .line 585
    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
