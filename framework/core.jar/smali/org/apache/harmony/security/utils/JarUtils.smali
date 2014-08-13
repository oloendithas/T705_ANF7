.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Z)[Ljava/security/cert/X509Certificate;
    .locals 7
    .param p0, "signer"    # Ljava/security/cert/X509Certificate;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "chainCheck"    # Z

    .prologue
    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 241
    .local v0, "chain":Ljava/util/LinkedList;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 265
    :goto_0
    return-object v5

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 250
    .local v2, "issuer":Ljava/security/Principal;
    move-object v4, p0

    .line 251
    .local v4, "subjectCert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x1

    .line 253
    .local v1, "count":I
    :goto_1
    invoke-static {v2, p1, v4, p2}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Z)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 254
    .local v3, "issuerCert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_2

    .line 265
    :cond_1
    new-array v5, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    check-cast v5, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 262
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 263
    move-object v4, v3

    goto :goto_1
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Z)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "issuer"    # Ljava/security/Principal;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "subjectCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "chainCheck"    # Z

    .prologue
    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 271
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    if-eqz p3, :cond_0

    .line 274
    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    aget-object v2, p1, v1

    .line 282
    :goto_1
    return-object v2

    .line 275
    :catch_0
    move-exception v0

    .line 270
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "signature"    # Ljava/io/InputStream;
    .param p1, "signatureBlock"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;Z)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;Z)[Ljava/security/cert/Certificate;
    .locals 31
    .param p0, "signature"    # Ljava/io/InputStream;
    .param p1, "signatureBlock"    # Ljava/io/InputStream;
    .param p2, "chainCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .local v5, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v29, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 80
    .local v19, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v27

    .line 81
    .local v27, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v27, :cond_0

    .line 82
    new-instance v29, Ljava/io/IOException;

    const-string v30, "No SignedData found"

    invoke-direct/range {v29 .. v30}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 84
    :cond_0
    invoke-virtual/range {v27 .. v27}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v13

    .line 86
    .local v13, "encCerts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 87
    const/16 v29, 0x0

    .line 235
    :goto_0
    return-object v29

    .line 89
    :cond_1
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    .line 90
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    const/16 v16, 0x0

    .line 91
    .local v16, "i":I
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/harmony/security/x509/Certificate;

    .line 92
    .local v12, "encCert":Lorg/apache/harmony/security/x509/Certificate;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "i":I
    .local v17, "i":I
    new-instance v29, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    move-object/from16 v0, v29

    invoke-direct {v0, v12}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    aput-object v29, v6, v16

    move/from16 v16, v17

    .end local v17    # "i":I
    .restart local v16    # "i":I
    goto :goto_1

    .line 95
    .end local v12    # "encCert":Lorg/apache/harmony/security/x509/Certificate;
    :cond_2
    invoke-virtual/range {v27 .. v27}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v26

    .line 97
    .local v26, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_4

    .line 98
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 104
    .local v25, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v20

    .line 107
    .local v20, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v28

    .line 110
    .local v28, "snum":Ljava/math/BigInteger;
    const/16 v21, 0x0

    .line 111
    .local v21, "issuerSertIndex":I
    const/16 v16, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 112
    aget-object v29, v6, v16

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    aget-object v29, v6, v16

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 114
    move/from16 v21, v16

    .line 118
    :cond_3
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 119
    const/16 v29, 0x0

    goto :goto_0

    .line 100
    .end local v20    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v21    # "issuerSertIndex":I
    .end local v25    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v28    # "snum":Ljava/math/BigInteger;
    :cond_4
    const/16 v29, 0x0

    goto :goto_0

    .line 111
    .restart local v20    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v21    # "issuerSertIndex":I
    .restart local v25    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v28    # "snum":Ljava/math/BigInteger;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 122
    :cond_6
    aget-object v29, v6, v21

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 123
    new-instance v29, Ljava/lang/SecurityException;

    const-string v30, "Can not recognize a critical extension"

    invoke-direct/range {v29 .. v30}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 127
    :cond_7
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "daOid":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithmName()Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "daName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "deaOid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 132
    .local v3, "alg":Ljava/lang/String;
    const/16 v24, 0x0

    .line 134
    .local v24, "sig":Ljava/security/Signature;
    if-eqz v9, :cond_8

    if-eqz v11, :cond_8

    .line 135
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "with"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    :try_start_0
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 142
    :goto_3
    if-nez v24, :cond_8

    .line 143
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithmName()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "deaName":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "with"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :try_start_1
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 156
    .end local v10    # "deaName":Ljava/lang/String;
    :cond_8
    :goto_4
    if-nez v24, :cond_9

    if-eqz v9, :cond_9

    .line 157
    move-object v3, v9

    .line 159
    :try_start_2
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    .line 163
    :goto_5
    if-nez v24, :cond_9

    if-eqz v8, :cond_9

    .line 164
    move-object v3, v8

    .line 166
    :try_start_3
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v24

    .line 173
    :cond_9
    :goto_6
    if-nez v24, :cond_a

    .line 174
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 177
    :cond_a
    aget-object v29, v6, v21

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 182
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object v4

    .line 184
    .local v4, "atr":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 185
    .local v23, "sfBytes":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 187
    if-nez v4, :cond_c

    .line 188
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 231
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v29

    if-nez v29, :cond_15

    .line 232
    new-instance v29, Ljava/lang/SecurityException;

    const-string v30, "Incorrect signature"

    invoke-direct/range {v29 .. v30}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 190
    :cond_c
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 194
    const/4 v15, 0x0

    .line 195
    .local v15, "existingDigest":[B
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 196
    .local v2, "a":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v29

    sget-object v30, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static/range {v29 .. v30}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 197
    if-eqz v15, :cond_e

    .line 198
    new-instance v29, Ljava/lang/SecurityException;

    const-string v30, "Too many MessageDigest attributes"

    invoke-direct/range {v29 .. v30}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 200
    :cond_e
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getValue()Lorg/apache/harmony/security/x501/AttributeValue;

    move-result-object v29

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/apache/harmony/security/x501/AttributeValue;->getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;

    move-result-object v14

    .line 201
    .local v14, "entries":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    .line 202
    new-instance v29, Ljava/lang/SecurityException;

    const-string v30, "Too many values for MessageDigest attribute"

    invoke-direct/range {v29 .. v30}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 204
    :cond_f
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    move-object/from16 v15, v29

    check-cast v15, [B

    goto :goto_7

    .line 210
    .end local v2    # "a":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .end local v14    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_10
    if-nez v15, :cond_11

    .line 211
    new-instance v29, Ljava/lang/SecurityException;

    const-string v30, "Missing MessageDigest in Authenticated Attributes"

    invoke-direct/range {v29 .. v30}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 214
    :cond_11
    const/16 v22, 0x0

    .line 215
    .local v22, "md":Ljava/security/MessageDigest;
    if-eqz v9, :cond_12

    .line 216
    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v22

    .line 218
    :cond_12
    if-nez v22, :cond_13

    if-eqz v8, :cond_13

    .line 219
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v22

    .line 221
    :cond_13
    if-nez v22, :cond_14

    .line 222
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 225
    :cond_14
    invoke-virtual/range {v22 .. v23}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 226
    .local v7, "computedDigest":[B
    invoke-static {v15, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v29

    if-nez v29, :cond_b

    .line 227
    new-instance v29, Ljava/lang/SecurityException;

    const-string v30, "Incorrect MD"

    invoke-direct/range {v29 .. v30}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 235
    .end local v7    # "computedDigest":[B
    .end local v15    # "existingDigest":[B
    .end local v22    # "md":Ljava/security/MessageDigest;
    :cond_15
    aget-object v29, v6, v21

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v6, v1}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Z)[Ljava/security/cert/X509Certificate;

    move-result-object v29

    goto/16 :goto_0

    .line 138
    .end local v4    # "atr":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v23    # "sfBytes":[B
    :catch_0
    move-exception v29

    goto/16 :goto_3

    .line 147
    .restart local v10    # "deaName":Ljava/lang/String;
    :catch_1
    move-exception v29

    goto/16 :goto_4

    .line 160
    .end local v10    # "deaName":Ljava/lang/String;
    :catch_2
    move-exception v29

    goto/16 :goto_5

    .line 167
    :catch_3
    move-exception v29

    goto/16 :goto_6
.end method
