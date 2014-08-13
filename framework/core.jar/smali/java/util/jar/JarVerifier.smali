.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierEntry;
    }
.end annotation


# static fields
.field private static final DIGEST_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final chainCheck:Z

.field private final jarName:Ljava/lang/String;

.field mainAttributesEnd:I

.field private man:Ljava/util/jar/Manifest;

.field private metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHA-512"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHA-384"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHA-256"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHA1"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chainCheck"    # Z

    .prologue
    const/4 v1, 0x5

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 168
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    .line 169
    iput-boolean p2, p0, Ljava/util/jar/JarVerifier;->chainCheck:Z

    .line 170
    return-void
.end method

.method static synthetic access$000(Ljava/util/jar/JarVerifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/jar/JarVerifier;

    .prologue
    .line 53
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 1
    .param p0, "x0"    # Ljava/util/jar/JarVerifier;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/jar/JarVerifier;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Ljava/util/jar/JarVerifier;

    .prologue
    .line 53
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    return-object v0
.end method

.method private failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p1, "jarName"    # Ljava/lang/String;
    .param p2, "signatureFile"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;
    .locals 6
    .param p0, "signatureFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "certificates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/cert/Certificate;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 473
    .local v5, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 474
    .local v1, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    .line 475
    move-object v0, v1

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 476
    .local v2, "element":Ljava/security/cert/Certificate;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v2    # "element":Ljava/security/cert/Certificate;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method private invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p1, "signatureFile"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "jarName"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .locals 9
    .param p1, "attributes"    # Ljava/util/jar/Attributes;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "ignoreSecondEndline"    # Z
    .param p7, "ignorable"    # Z

    .prologue
    .line 401
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v7, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 402
    sget-object v7, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v0, v7, v5

    .line 403
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "hash":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 401
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 414
    .local v6, "md":Ljava/security/MessageDigest;
    if-eqz p6, :cond_2

    add-int/lit8 v7, p5, -0x1

    aget-byte v7, p3, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    add-int/lit8 v7, p5, -0x2

    aget-byte v7, p3, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 415
    add-int/lit8 v7, p5, -0x1

    sub-int/2addr v7, p4

    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 419
    :goto_2
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 420
    .local v1, "b":[B
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 421
    .local v4, "hashBytes":[B
    invoke-static {v4}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v7

    invoke-static {v1, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p7

    .line 423
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "b":[B
    .end local v3    # "hash":Ljava/lang/String;
    .end local v4    # "hashBytes":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local p7    # "ignorable":Z
    :cond_1
    return p7

    .line 411
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local p7    # "ignorable":Z
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    .line 417
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    sub-int v7, p5, p4

    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 25
    .param p1, "certFile"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".SF"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 293
    .local v23, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    .line 294
    .local v22, "sfBytes":[B
    if-nez v22, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 300
    .local v5, "manifest":[B
    if-eqz v5, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    .line 306
    .local v21, "sBlockBytes":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Ljava/util/jar/JarVerifier;->chainCheck:Z

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;Z)[Ljava/security/cert/Certificate;

    move-result-object v24

    .line 314
    .local v24, "signerCertChain":[Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 317
    if-eqz v24, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    :cond_2
    new-instance v3, Ljava/util/jar/Attributes;

    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    .line 328
    .local v3, "attributes":Ljava/util/jar/Attributes;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v17, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_1
    new-instance v19, Ljava/util/jar/ManifestReader;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Ljava/util/jar/ManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 331
    .local v19, "im":Ljava/util/jar/ManifestReader;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/jar/ManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 337
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    const/4 v12, 0x0

    .line 342
    .local v12, "createdBySigntool":Z
    const-string v2, "Created-By"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "createdBy":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 344
    const-string v2, "signtool"

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    const/4 v12, 0x1

    .line 351
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    if-lez v2, :cond_5

    if-nez v12, :cond_5

    .line 352
    const-string v4, "-Digest-Manifest-Main-Attributes"

    .line 353
    .local v4, "digestAttribute":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 320
    .end local v3    # "attributes":Ljava/util/jar/Attributes;
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v12    # "createdBySigntool":Z
    .end local v15    # "createdBy":Ljava/lang/String;
    .end local v17    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v19    # "im":Ljava/util/jar/ManifestReader;
    .end local v24    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v16

    .line 321
    .local v16, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 322
    .end local v16    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v16

    .line 323
    .local v16, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 332
    .end local v16    # "e":Ljava/security/GeneralSecurityException;
    .restart local v3    # "attributes":Ljava/util/jar/Attributes;
    .restart local v17    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v24    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_2
    move-exception v16

    .line 333
    .local v16, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 344
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v12    # "createdBySigntool":Z
    .restart local v15    # "createdBy":Ljava/lang/String;
    .restart local v19    # "im":Ljava/util/jar/ManifestReader;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 359
    :cond_5
    if-eqz v12, :cond_7

    const-string v4, "-Digest"

    .line 360
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    :goto_2
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 361
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 362
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 363
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 364
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/jar/Manifest;->getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;

    move-result-object v14

    .line 365
    .local v14, "chunk":Ljava/util/jar/Manifest$Chunk;
    if-eqz v14, :cond_0

    .line 368
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/Attributes;

    const-string v8, "-Digest"

    iget v10, v14, Ljava/util/jar/Manifest$Chunk;->start:I

    iget v11, v14, Ljava/util/jar/Manifest$Chunk;->end:I

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object v9, v5

    invoke-direct/range {v6 .. v13}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 370
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v6}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 359
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v14    # "chunk":Ljava/util/jar/Manifest$Chunk;
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_7
    const-string v4, "-Digest-Manifest"

    goto :goto_2

    .line 374
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .prologue
    .line 248
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 437
    .local v0, "verifiedCerts":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_0

    .line 438
    const/4 v1, 0x0

    .line 440
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 231
    :goto_0
    return-object v1

    .line 192
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v8

    .line 194
    .local v8, "attributes":Ljava/util/jar/Attributes;
    if-nez v8, :cond_2

    .line 195
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v9, "certs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 200
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 202
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 203
    .local v12, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 205
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 206
    .local v15, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-static {v15, v1}, Ljava/util/jar/JarVerifier;->getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 211
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v12    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v15    # "signatureFile":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;

    .line 216
    .local v6, "certificatesArray":[Ljava/security/cert/Certificate;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    sget-object v1, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v13, v1, :cond_7

    .line 217
    sget-object v1, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v7, v1, v13

    .line 218
    .local v7, "algorithm":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, "hash":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 216
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 222
    :cond_6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 225
    .local v5, "hashBytes":[B
    :try_start_0
    new-instance v1, Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Ljava/util/jar/JarVerifier$VerifierEntry;-><init>(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_3

    .line 231
    .end local v5    # "hashBytes":[B
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v11    # "hash":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method isSignedJar()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized readCertificates()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 272
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    .local v1, "key":Ljava/lang/String;
    const-string v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".EC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    :cond_3
    invoke-direct {p0, v1}, Ljava/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 269
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 284
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method removeMetaEntries()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 451
    return-void
.end method

.method setManifest(Ljava/util/jar/Manifest;)V
    .locals 0
    .param p1, "mf"    # Ljava/util/jar/Manifest;

    .prologue
    .line 385
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    .line 386
    return-void
.end method
