.class Lcom/nuance/connect/internal/ConfigServiceInternal$1;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;
.source "ConfigServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConfigServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendPollingFrequency()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$000(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    .line 57
    return-void
.end method
