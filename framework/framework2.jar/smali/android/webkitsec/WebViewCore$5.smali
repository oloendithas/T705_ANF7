.class Landroid/webkitsec/WebViewCore$5;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkitsec/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore;->notificationPermissionsShowPrompt(Ljava/lang/String;)V
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
    .line 587
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$5;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 589
    new-instance v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;-><init>()V

    .line 590
    .local v0, "data":Landroid/webkitsec/WebViewCore$NotificationPermissionsData;
    iput-object p1, v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    .line 591
    iput-boolean p2, v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;->mAllow:Z

    .line 593
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$5;->this$0:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .registers 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pointer"    # I

    .prologue
    .line 595
    return-void
.end method

.method public invokeNotificationID(II)V
    .registers 3
    .param p1, "notificationID"    # I
    .param p2, "counter"    # I

    .prologue
    .line 596
    return-void
.end method
