.class Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;
.super Landroid/os/Handler;
.source "KeyboardFlickforUmlaut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlickMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;->this$0:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;->this$0:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->finishFilck()V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
