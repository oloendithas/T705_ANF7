.class Landroid/webkitsec/WebViewCore$6;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkitsec/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore;->notificationManagershow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .registers 2

    .prologue
    .line 612
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$6;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 622
    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .registers 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "counter"    # I

    .prologue
    .line 617
    new-instance v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$InvokeEventparams;-><init>()V

    .line 618
    .local v0, "data":Landroid/webkitsec/WebViewCore$InvokeEventparams;
    iput-object p1, v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    .line 619
    iput p2, v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;->mPointer:I

    .line 620
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$6;->this$0:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 621
    return-void
.end method

.method public invokeNotificationID(II)V
    .registers 6
    .param p1, "notificationID"    # I
    .param p2, "counter"    # I

    .prologue
    .line 624
    new-instance v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$InvokeNotifyID;-><init>()V

    .line 625
    .local v0, "data":Landroid/webkitsec/WebViewCore$InvokeNotifyID;
    iput p1, v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;->mnotificationID:I

    .line 626
    iput p2, v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;->mcounter:I

    .line 627
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$6;->this$0:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xcd

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
