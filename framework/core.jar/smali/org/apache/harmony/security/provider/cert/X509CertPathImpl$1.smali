.class final Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 347
    .local v1, "encodedCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 348
    .local v3, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 353
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    sget-object v6, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v5, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 358
    :cond_0
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKI_PATH:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;)V

    return-object v4
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 368
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .line 371
    .local v0, "cp":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    # getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$200(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 388
    :cond_0
    return-object v2

    .line 375
    :cond_1
    # getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$200(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 376
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v2, "encodings":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 382
    :try_start_0
    # getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$200(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Encoding error occurred"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
