.class Lcom/android/keyguard/KeyguardSimPinView$5;
.super Landroid/os/Handler;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 327
    :goto_5
    return-void

    .line 324
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$700(Lcom/android/keyguard/KeyguardSimPinView;I)V

    goto :goto_5

    .line 322
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
