.class Landroid/webkitsec/NotificationPermissions$1;
.super Landroid/os/Handler;
.source "NotificationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/NotificationPermissions;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/NotificationPermissions;


# direct methods
.method constructor <init>(Landroid/webkitsec/NotificationPermissions;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Landroid/webkitsec/NotificationPermissions$1;->this$0:Landroid/webkitsec/NotificationPermissions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    .line 88
    :goto_5
    return-void

    .line 85
    :pswitch_6
    # invokes: Landroid/webkitsec/NotificationPermissions;->nativeClearAll()V
    invoke-static {}, Landroid/webkitsec/NotificationPermissions;->access$000()V

    goto :goto_5

    .line 83
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
