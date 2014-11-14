.class Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_42

    .line 119
    :goto_5
    return-void

    .line 90
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic;->access$100(Ljava/lang/String;)V

    goto :goto_5

    .line 94
    :pswitch_e
    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeClose()V
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->access$200()V

    goto :goto_5

    .line 98
    :pswitch_12
    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeRemoveAllIcons()V
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->access$300()V

    goto :goto_5

    .line 102
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkitsec/WebIconDatabase$IconListener;

    .line 103
    .local v0, "l":Landroid/webkitsec/WebIconDatabase$IconListener;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    invoke-static {v2, v1, v0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$400(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V

    goto :goto_5

    .line 108
    .end local v0    # "l":Landroid/webkitsec/WebIconDatabase$IconListener;
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_2b
    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$500(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_5

    .line 112
    :pswitch_31
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic;->access$600(Ljava/lang/String;)V

    goto :goto_5

    .line 116
    :pswitch_39
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic;->access$700(Ljava/lang/String;)V

    goto :goto_5

    .line 88
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_31
        :pswitch_39
        :pswitch_2b
    .end packed-switch
.end method
