.class Lcom/diotek/ime/implement/setting/TapAndHoldView$1;
.super Landroid/os/Handler;
.source "TapAndHoldView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/TapAndHoldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/TapAndHoldView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;->this$0:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;->this$0:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    const/4 v1, 0x2

    # setter for: Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/TapAndHoldView;->access$002(Lcom/diotek/ime/implement/setting/TapAndHoldView;I)I

    .line 54
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;->this$0:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
