.class Lcom/diotek/ime/framework/common/InputManagerImpl$5;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$5;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1670
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1677
    :goto_0
    return-void

    .line 1672
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$5;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SENT_TEXT_BY_INPUTCONNECTION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1670
    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method
