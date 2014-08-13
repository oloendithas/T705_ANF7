.class Lcom/nuance/connect/system/Connectivity$2;
.super Lcom/nuance/connect/internal/Property$StringValueListener;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/system/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/system/Connectivity;


# direct methods
.method constructor <init>(Lcom/nuance/connect/system/Connectivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    iget-object v1, v1, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    iput-object v1, v0, Lcom/nuance/connect/system/Connectivity;->lastForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .line 81
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .line 82
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    # invokes: Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V
    invoke-static {v0}, Lcom/nuance/connect/system/Connectivity;->access$000(Lcom/nuance/connect/system/Connectivity;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    iget-object v1, v1, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    iput-object v1, v0, Lcom/nuance/connect/system/Connectivity;->lastBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .line 85
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .line 86
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$2;->this$0:Lcom/nuance/connect/system/Connectivity;

    # invokes: Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V
    invoke-static {v0}, Lcom/nuance/connect/system/Connectivity;->access$000(Lcom/nuance/connect/system/Connectivity;)V

    goto :goto_0
.end method
