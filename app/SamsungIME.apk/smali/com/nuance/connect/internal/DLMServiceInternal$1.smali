.class Lcom/nuance/connect/internal/DLMServiceInternal$1;
.super Ljava/lang/Object;
.source "DLMServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/location/SwypeLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMServiceInternal;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/connect/internal/DLMServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Lcom/nuance/connect/location/SwypeLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/nuance/connect/location/SwypeLocation;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onLocation()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # invokes: Lcom/nuance/connect/internal/DLMServiceInternal;->processLocationUpate(Lcom/nuance/connect/location/SwypeLocation;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$100(Lcom/nuance/connect/internal/DLMServiceInternal;Lcom/nuance/connect/location/SwypeLocation;)V

    .line 103
    return-void
.end method

.method public onLocationComplete(Lcom/nuance/connect/location/SwypeLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/nuance/connect/location/SwypeLocation;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onLocationComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # invokes: Lcom/nuance/connect/internal/DLMServiceInternal;->processLocationUpate(Lcom/nuance/connect/location/SwypeLocation;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$100(Lcom/nuance/connect/internal/DLMServiceInternal;Lcom/nuance/connect/location/SwypeLocation;)V

    .line 96
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # invokes: Lcom/nuance/connect/internal/DLMServiceInternal;->getLocationFrequencyUpdate()V
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$200(Lcom/nuance/connect/internal/DLMServiceInternal;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
