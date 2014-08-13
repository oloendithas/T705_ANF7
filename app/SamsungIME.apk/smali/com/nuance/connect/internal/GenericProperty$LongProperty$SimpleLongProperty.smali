.class Lcom/nuance/connect/internal/GenericProperty$LongProperty$SimpleLongProperty;
.super Ljava/lang/Object;
.source "GenericProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty$LongProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleLongProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6674089262c945a7L


# instance fields
.field source:Ljava/lang/String;

.field value:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;
    .param p2, "source"    # Lcom/nuance/connect/internal/Property$Source;

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$LongProperty$SimpleLongProperty;->value:Ljava/lang/Long;

    .line 932
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$LongProperty$SimpleLongProperty;->source:Ljava/lang/String;

    .line 933
    return-void
.end method


# virtual methods
.method getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$LongProperty$SimpleLongProperty;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/Property$Source;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/Property$Source;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$LongProperty$SimpleLongProperty;->value:Ljava/lang/Long;

    return-object v0
.end method
