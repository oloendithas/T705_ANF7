.class Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;->this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z
    .locals 5
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "newSource"    # Lcom/nuance/connect/internal/Property$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "oldProperty":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "propertyValue":Ljava/lang/Integer;
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 679
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 685
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 686
    invoke-interface {p3}, Lcom/nuance/connect/internal/Property;->getVerification()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v1, v2

    .line 707
    :cond_2
    :goto_1
    return v1

    .line 682
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 683
    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 691
    .end local p1    # "newValue":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 695
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 699
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 703
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ge v3, v4, :cond_2

    move v1, v2

    goto :goto_1

    .line 680
    :catch_0
    move-exception v3

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
