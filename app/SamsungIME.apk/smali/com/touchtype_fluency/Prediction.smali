.class public Lcom/touchtype_fluency/Prediction;
.super Ljava/util/AbstractList;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final encodings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final keys:[Ljava/lang/String;

.field private final prediction:[Ljava/lang/String;

.field private final probability:D

.field private final separators:[Ljava/lang/String;

.field private final tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final termBreaks:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/touchtype_fluency/Prediction;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 38
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/Integer;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/touchtype_fluency/Prediction;-><init>([Ljava/lang/String;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/util/ArrayList;)V

    .line 39
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    aput-object p1, v0, v9

    .line 40
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/touchtype_fluency/Prediction;-><init>([Ljava/lang/String;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/util/ArrayList;)V

    .line 56
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    .line 189
    iput-wide p3, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    .line 190
    iput-object p5, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    .line 191
    iput-object p6, p0, Lcom/touchtype_fluency/Prediction;->keys:[Ljava/lang/String;

    .line 192
    iput-object p7, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    .line 193
    iput-object p8, p0, Lcom/touchtype_fluency/Prediction;->encodings:Ljava/util/ArrayList;

    .line 194
    return-void
.end method

.method private static approxEquals(DD)Z
    .locals 8

    .prologue
    .line 198
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 171
    instance-of v1, p1, Lcom/touchtype_fluency/Prediction;

    if-eqz v1, :cond_0

    .line 172
    check-cast p1, Lcom/touchtype_fluency/Prediction;

    .line 173
    invoke-virtual {p0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    iget-wide v3, p1, Lcom/touchtype_fluency/Prediction;->probability:D

    invoke-static {v1, v2, v3, v4}, Lcom/touchtype_fluency/Prediction;->approxEquals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    iget-object v2, p1, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 176
    :cond_0
    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Prediction;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEncodings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->encodings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrediction()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 77
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    .line 71
    :cond_1
    sget-boolean v1, Lcom/touchtype_fluency/Prediction;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    :goto_1
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProbability()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    return-wide v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    const-string v1, ""

    .line 88
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method

.method public getSeparators()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    return-object v0
.end method

.method public getTermBreaks()[Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 138
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit16 v2, v2, 0x95

    mul-int/lit16 v2, v2, 0x95

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x95

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x95

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 165
    const-string v0, "%s : %e"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
