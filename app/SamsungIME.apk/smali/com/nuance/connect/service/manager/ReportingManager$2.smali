.class Lcom/nuance/connect/service/manager/ReportingManager$2;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;
.source "ReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/ReportingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ReportingManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$2;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$2;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageEnabled:Z
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$102(Lcom/nuance/connect/service/manager/ReportingManager;Z)Z

    .line 90
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$2;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$100(Lcom/nuance/connect/service/manager/ReportingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$2;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->clearStoredUsage()V

    .line 93
    :cond_0
    return-void
.end method
