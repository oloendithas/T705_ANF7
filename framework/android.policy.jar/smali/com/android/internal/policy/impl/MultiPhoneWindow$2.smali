.class Lcom/android/internal/policy/impl/MultiPhoneWindow$2;
.super Landroid/os/Handler;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 2234
    :goto_5
    return-void

    .line 2231
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_5

    .line 2229
    :pswitch_data_12
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
