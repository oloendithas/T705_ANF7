.class Lcom/nuance/connect/service/ConnectClient$1;
.super Lcom/nuance/connect/internal/Property$StringValueListener;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$1;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 1
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
    .line 137
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$1;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->loadOverrides()V

    .line 138
    return-void
.end method
