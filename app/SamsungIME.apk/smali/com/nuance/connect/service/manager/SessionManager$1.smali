.class Lcom/nuance/connect/service/manager/SessionManager$1;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 4
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
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollingChangeListener.setConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iput v3, v0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    .line 59
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # invokes: Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)V

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # invokes: Lcom/nuance/connect/service/manager/SessionManager;->poll(Z)V
    invoke-static {v0, v3}, Lcom/nuance/connect/service/manager/SessionManager;->access$200(Lcom/nuance/connect/service/manager/SessionManager;Z)V

    .line 68
    :cond_1
    return-void

    .line 60
    :cond_2
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    goto :goto_0
.end method
