.class Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;
.super Ljava/lang/Object;
.source "GenericProperty.java"

# interfaces
.implements Lcom/nuance/connect/internal/Property$Verifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultStringVerifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/connect/internal/Property$Verifier",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "newSource"    # Lcom/nuance/connect/internal/Property$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 963
    .local p3, "oldProperty":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method
