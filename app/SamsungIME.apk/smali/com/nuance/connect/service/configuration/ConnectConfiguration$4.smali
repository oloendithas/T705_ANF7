.class Lcom/nuance/connect/service/configuration/ConnectConfiguration$4;
.super Ljava/lang/Object;
.source "ConnectConfiguration.java"

# interfaces
.implements Lcom/nuance/connect/internal/Property$Verifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/configuration/ConnectConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/connect/internal/Property$Verifier",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$4;->this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "newSource"    # Lcom/nuance/connect/internal/Property$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "oldProperty":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    .line 714
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v1

    .line 717
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "propertyValue":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 719
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    const/4 v1, 0x0

    goto :goto_0
.end method
