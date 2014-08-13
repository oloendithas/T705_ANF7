.class final Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    return-void
.end method


# virtual methods
.method public checkTag(I)Z
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 345
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 346
    .local v0, "bytesEncoded":[B
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getBuffer()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    move-result v3

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeValue;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[BI)V

    return-object v2

    .line 342
    .end local v0    # "bytesEncoded":[B
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 361
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 363
    .local v0, "av":Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 365
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 368
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 369
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 393
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AttributeValue encodeContent MUST NOT be invoked"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AttributeValue getDecodedObject MUST NOT be invoked"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 397
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 398
    .local v0, "av":Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_0

    .line 399
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 401
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v1

    goto :goto_0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 374
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 376
    .local v0, "av":Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v1, v1

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 389
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 380
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 381
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 382
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    .line 383
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    .line 386
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    array-length v1, v1

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_0
.end method
