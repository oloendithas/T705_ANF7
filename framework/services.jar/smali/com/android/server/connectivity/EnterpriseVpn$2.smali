.class Lcom/android/server/connectivity/EnterpriseVpn$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x2710

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, "userId":I
    if-ne v1, v3, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->onUserAdded(I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$100(Lcom/android/server/connectivity/EnterpriseVpn;I)V

    goto :goto_0

    .line 185
    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$200(Lcom/android/server/connectivity/EnterpriseVpn;I)V

    goto :goto_0
.end method
