.class public final Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public final escapedString:Ljava/lang/String;

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public final rawString:Ljava/lang/String;

.field private final tag:I

.field public wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .locals 2
    .param p1, "parsedString"    # Ljava/lang/String;
    .param p2, "hasQorE"    # Z
    .param p3, "oid"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 57
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 62
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-eq p3, v1, :cond_0

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-ne p3, v1, :cond_1

    .line 65
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    .line 71
    .local v0, "tag":I
    :goto_0
    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 72
    return-void

    .line 66
    .end local v0    # "tag":I
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    .restart local v0    # "tag":I
    goto :goto_0

    .line 69
    .end local v0    # "tag":I
    :cond_2
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    .restart local v0    # "tag":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 77
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 81
    :try_start_0
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 83
    .local v2, "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 85
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v2    # "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 95
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "rawString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B
    .param p3, "tag"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 103
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 104
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 106
    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isPrintableString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    .local v0, "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x27

    if-lt v0, v2, :cond_0

    const/16 v2, 0x29

    if-le v0, v2, :cond_4

    :cond_0
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_1

    const/16 v2, 0x3a

    if-le v0, v2, :cond_4

    :cond_1
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    .line 128
    :cond_3
    const/4 v2, 0x0

    .line 131
    .end local v0    # "ch":C
    :goto_1
    return v2

    .line 119
    .restart local v0    # "ch":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "ch":C
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 206
    .local v3, "length":I
    if-nez v3, :cond_0

    .line 246
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 209
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 213
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    :sswitch_0
    if-eqz v2, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_2

    .line 217
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_2
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 224
    :sswitch_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 225
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 236
    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 246
    .end local v1    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_2

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 184
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 185
    .local v0, "c":C
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 186
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 139
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 140
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_0

    .line 142
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    if-ne v3, v4, :cond_1

    .line 143
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 149
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 156
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 157
    .local v1, "c":I
    if-ge v1, v5, :cond_3

    .line 158
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 164
    if-ge v1, v5, :cond_4

    .line 165
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "c":I
    .end local v2    # "i":I
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    if-ne v3, v4, :cond_2

    .line 145
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_0

    .line 147
    :cond_2
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_0

    .line 160
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "c":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 167
    :cond_4
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 170
    .end local v1    # "c":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 172
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0
.end method

.method public getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;
    .locals 2
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/security/asn1/ASN1Type;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public makeCanonical()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x23

    const/16 v7, 0x20

    .line 250
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 251
    .local v4, "length":I
    if-nez v4, :cond_0

    .line 252
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 296
    :goto_0
    return-object v5

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 257
    .local v3, "index":I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 258
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v3, v3, 0x1

    .line 264
    :cond_1
    :goto_1
    if-ge v3, v4, :cond_3

    .line 265
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 267
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_0

    .line 286
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 270
    .local v1, "bufLength":I
    if-eqz v1, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 273
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 283
    .end local v1    # "bufLength":I
    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 291
    .end local v2    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 292
    .restart local v1    # "bufLength":I
    :goto_4
    const/4 v5, -0x1

    if-le v1, v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 294
    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
