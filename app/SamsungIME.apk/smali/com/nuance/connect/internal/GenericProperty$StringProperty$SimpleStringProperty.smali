.class Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
.super Ljava/lang/Object;
.source "GenericProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty$StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleStringProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4adc9e02ca32f695L


# instance fields
.field source:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->value:Ljava/lang/String;

    .line 701
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->source:Ljava/lang/String;

    .line 702
    return-void
.end method


# virtual methods
.method getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/Property$Source;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/Property$Source;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->value:Ljava/lang/String;

    return-object v0
.end method
