.class Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 755
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 796
    :goto_5
    return-void

    .line 757
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_5

    .line 760
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_5

    .line 763
    :pswitch_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_5

    .line 767
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->enableSPenGesture()V

    goto :goto_5

    .line 771
    :pswitch_24
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_5

    .line 775
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_5

    .line 780
    :pswitch_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->enableToolBox()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_5

    .line 783
    :pswitch_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->disableToolBox()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_5

    .line 788
    :pswitch_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSideKeyPanelState(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_5

    .line 792
    :pswitch_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSideKeyPanelState(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_5

    .line 755
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_24
        :pswitch_1c
        :pswitch_2e
        :pswitch_38
        :pswitch_3e
        :pswitch_44
        :pswitch_4b
    .end packed-switch
.end method
