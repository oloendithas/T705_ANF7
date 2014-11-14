.class Landroid/webkitsec/WebViewClassic$HoverScrollHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .registers 2

    .prologue
    .line 10720
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "x1"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 10720
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;-><init>(Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10724
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 10732
    :goto_5
    return-void

    .line 10726
    :pswitch_6
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->doHoverScrollMove()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$5200(Landroid/webkitsec/WebViewClassic;)V

    goto :goto_5

    .line 10724
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
