.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;
.super Ljava/lang/Object;
.source "AttributeTypeAndValueComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final serialVersionUID:J = -0x11da77530460369cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I
    .locals 9
    .param p0, "oid1"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .param p1, "oid2"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 80
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v4

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v1

    .line 85
    .local v1, "ioid1":[I
    invoke-virtual {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    .line 86
    .local v2, "ioid2":[I
    array-length v7, v1

    array-length v8, v2

    if-ge v7, v8, :cond_2

    array-length v3, v1

    .line 87
    .local v3, "min":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 88
    aget v7, v1, v0

    aget v8, v2, v0

    if-ge v7, v8, :cond_3

    move v4, v5

    .line 89
    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v3    # "min":I
    :cond_2
    array-length v3, v2

    goto :goto_1

    .line 91
    .restart local v0    # "i":I
    .restart local v3    # "min":I
    :cond_3
    aget v7, v1, v0

    aget v8, v2, v0

    if-le v7, v8, :cond_4

    move v4, v6

    .line 92
    goto :goto_0

    .line 94
    :cond_4
    add-int/lit8 v7, v0, 0x1

    array-length v8, v1

    if-ne v7, v8, :cond_5

    add-int/lit8 v7, v0, 0x1

    array-length v8, v2

    if-ge v7, v8, :cond_5

    move v4, v5

    .line 95
    goto :goto_0

    .line 97
    :cond_5
    add-int/lit8 v7, v0, 0x1

    array-length v8, v1

    if-ge v7, v8, :cond_6

    add-int/lit8 v7, v0, 0x1

    array-length v8, v2

    if-ne v7, v8, :cond_6

    move v4, v6

    .line 98
    goto :goto_0

    .line 87
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 48
    if-ne p1, p2, :cond_0

    .line 49
    const/4 v4, 0x0

    .line 66
    :goto_0
    return v4

    :cond_0
    move-object v0, p1

    .line 52
    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .local v0, "atav1":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    move-object v1, p2

    .line 53
    check-cast v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 54
    .local v1, "atav2":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "kw1":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "kw2":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 57
    const/4 v4, -0x1

    goto :goto_0

    .line 59
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 60
    const/4 v4, 0x1

    goto :goto_0

    .line 62
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I

    move-result v4

    goto :goto_0
.end method
