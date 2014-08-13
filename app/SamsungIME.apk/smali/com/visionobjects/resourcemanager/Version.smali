.class public Lcom/visionobjects/resourcemanager/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/visionobjects/resourcemanager/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFields:[I

.field private final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/visionobjects/resourcemanager/Version;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/Version;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/resourcemanager/Version;)V
    .locals 1
    .param p1, "other"    # Lcom/visionobjects/resourcemanager/Version;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "versionStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_1

    .line 19
    const-string v7, ""

    iput-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    .line 20
    new-array v7, v10, [I

    iput-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    .line 53
    :cond_0
    return-void

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    .line 25
    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 26
    .local v4, "len":I
    const/4 v5, 0x0

    .line 27
    .local v5, "offset":I
    const/4 v2, -0x2

    .line 28
    .local v2, "index":I
    new-array v6, v4, [I

    .line 30
    .local v6, "tab":[I
    const/4 v1, 0x0

    .line 31
    .local v1, "i":I
    :goto_0
    if-eq v2, v9, :cond_3

    .line 32
    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 35
    if-ne v2, v9, :cond_2

    .line 36
    :try_start_0
    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1

    .line 46
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/visionobjects/resourcemanager/Version;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is corrupted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    aput v10, v6, v1

    .line 49
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-array v7, v1, [I

    iput-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    .line 51
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 52
    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v8, v6, v3

    aput v8, v7, v3

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/visionobjects/resourcemanager/Version;)I
    .locals 8
    .param p1, "other"    # Lcom/visionobjects/resourcemanager/Version;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 79
    iget-object v6, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    iget-object v7, p1, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    iget-object v6, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    array-length v1, v6

    .line 83
    .local v1, "sizeVersion1":I
    iget-object v6, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    array-length v2, v6

    .line 85
    .local v2, "sizeVersion2":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 87
    if-ne v1, v0, :cond_2

    move v3, v4

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    if-ne v2, v0, :cond_3

    move v3, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object v6, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v6, v6, v0

    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v7, v7, v0

    if-le v6, v7, :cond_4

    move v3, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget-object v6, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v6, v6, v0

    iget-object v7, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v7, v7, v0

    if-le v6, v7, :cond_5

    move v3, v5

    .line 94
    goto :goto_0

    .line 85
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/visionobjects/resourcemanager/Version;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/visionobjects/resourcemanager/Version;->compareTo(Lcom/visionobjects/resourcemanager/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 112
    instance-of v0, p1, Lcom/visionobjects/resourcemanager/Version;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/resourcemanager/Version;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/visionobjects/resourcemanager/Version;->compareTo(Lcom/visionobjects/resourcemanager/Version;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    return-object v0
.end method
