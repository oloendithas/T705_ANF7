.class Lcom/nuance/connect/system/Connectivity$3;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;
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
    .line 92
    iput-object p1, p0, Lcom/nuance/connect/system/Connectivity$3;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_CELLULAR_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity$3;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/nuance/connect/system/Connectivity;->setStableCellularTime(I)V
    invoke-static {v1, v0}, Lcom/nuance/connect/system/Connectivity;->access$100(Lcom/nuance/connect/system/Connectivity;I)V

    .line 97
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$3;->this$0:Lcom/nuance/connect/system/Connectivity;

    # invokes: Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V
    invoke-static {v0}, Lcom/nuance/connect/system/Connectivity;->access$000(Lcom/nuance/connect/system/Connectivity;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_WIFI_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity$3;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/nuance/connect/system/Connectivity;->setStableWifiTime(I)V
    invoke-static {v1, v0}, Lcom/nuance/connect/system/Connectivity;->access$200(Lcom/nuance/connect/system/Connectivity;I)V

    .line 100
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$3;->this$0:Lcom/nuance/connect/system/Connectivity;

    # invokes: Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V
    invoke-static {v0}, Lcom/nuance/connect/system/Connectivity;->access$000(Lcom/nuance/connect/system/Connectivity;)V

    goto :goto_0
.end method
