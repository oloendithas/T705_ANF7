.class Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;
.super Ljava/lang/Object;
.source "GenericProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleBooleanProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25c6bb23d5852004L


# instance fields
.field source:Ljava/lang/String;

.field value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;->value:Ljava/lang/Boolean;

    .line 475
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;->source:Ljava/lang/String;

    .line 476
    return-void
.end method


# virtual methods
.method getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/Property$Source;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/Property$Source;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty$SimpleBooleanProperty;->value:Ljava/lang/Boolean;

    return-object v0
.end method
