.class Lcom/android/keyguard/sec/KeyguardUnlockView$4;
.super Landroid/os/Handler;
.source "KeyguardUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 246
    :goto_5
    return-void

    .line 243
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardUnlockView;->handleChangeTouchExploration()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    goto :goto_5

    .line 241
    :pswitch_data_c
    .packed-switch 0x12f0
        :pswitch_6
    .end packed-switch
.end method
