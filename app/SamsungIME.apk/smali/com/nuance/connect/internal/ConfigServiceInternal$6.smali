.class Lcom/nuance/connect/internal/ConfigServiceInternal$6;
.super Lcom/nuance/connect/internal/Property$StringValueListener;
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
    .line 90
    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

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
    .line 93
    .local p1, "value":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    .line 96
    :cond_0
    return-void
.end method
