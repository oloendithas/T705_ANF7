.class Lcom/nuance/connect/service/manager/UpgradeManager$1;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Lcom/nuance/connect/system/NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/UpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/UpgradeManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/UpgradeManager;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nuance/connect/service/manager/UpgradeManager$1;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager$1;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->access$002(Lcom/nuance/connect/service/manager/UpgradeManager;Z)Z

    .line 61
    return-void
.end method

.method public onNetworkDisconnect()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager$1;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->access$002(Lcom/nuance/connect/service/manager/UpgradeManager;Z)Z

    .line 66
    return-void
.end method

.method public onNetworkStable()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager$1;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->access$002(Lcom/nuance/connect/service/manager/UpgradeManager;Z)Z

    .line 76
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager$1;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->access$002(Lcom/nuance/connect/service/manager/UpgradeManager;Z)Z

    .line 71
    return-void
.end method
