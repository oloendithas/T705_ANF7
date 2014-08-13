.class public Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
    }
.end annotation


# static fields
.field private static final CERT_BOUND_SUFFIX:[B

.field private static final CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

.field private static final CERT_CACHE_SEED_LENGTH:I = 0x1c

.field private static final CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

.field private static final CRL_CACHE_SEED_LENGTH:I = 0x18

.field private static final FREE_BOUND_SUFFIX:[B

.field private static final PEM_BEGIN:[B

.field private static final PEM_END:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 65
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 435
    const-string v0, "-----BEGIN"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    .line 436
    const-string v0, "-----END"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    .line 442
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    .line 448
    const-string v0, " CERTIFICATE-----"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private badEnd([B)Ljava/io/IOException;
    .locals 4
    .param p1, "boundary_suffix"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    if-nez p1, :cond_0

    const-string v0, ""

    .line 569
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect PEM encoding: \'-----END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is expected as closing delimiter boundary."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private decodePEM(Ljava/io/InputStream;[B)[B
    .locals 10
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "boundary_suffix"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 481
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    if-eq v7, v1, :cond_1

    .line 482
    new-instance v8, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_0

    const-string v7, ""

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 480
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "ch":I
    :cond_2
    if-nez p2, :cond_4

    .line 492
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1    # "ch":I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_8

    .line 493
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 494
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: EOF before content"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 498
    .end local v1    # "ch":I
    :cond_4
    const/4 v2, 0x0

    :goto_2
    array-length v7, p2

    if-ge v2, v7, :cond_6

    .line 499
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 500
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 498
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 505
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1    # "ch":I
    const/16 v7, 0xd

    if-ne v1, v7, :cond_7

    .line 507
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 509
    :cond_7
    const/16 v7, 0xa

    if-eq v1, v7, :cond_8

    .line 510
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: newline expected after opening delimiter boundary"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 514
    :cond_8
    const/16 v6, 0x400

    .line 515
    .local v6, "size":I
    new-array v0, v6, [B

    .line 516
    .local v0, "buff":[B
    const/4 v3, 0x0

    .line 518
    .local v3, "index":I
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_a

    .line 519
    const/4 v7, -0x1

    if-ne v1, v7, :cond_9

    .line 520
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: EOF without closing delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 522
    :cond_9
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    int-to-byte v7, v1

    aput-byte v7, v0, v3

    .line 523
    if-ne v4, v6, :cond_15

    .line 525
    add-int/lit16 v7, v6, 0x400

    new-array v5, v7, [B

    .line 526
    .local v5, "newbuff":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    move-object v0, v5

    .line 528
    add-int/lit16 v6, v6, 0x400

    move v3, v4

    .line 529
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    .line 531
    .end local v5    # "newbuff":[B
    :cond_a
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v0, v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_b

    .line 532
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: newline expected before closing boundary delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 537
    :cond_b
    const/4 v2, 0x1

    :goto_4
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    array-length v7, v7

    if-ge v2, v7, :cond_d

    .line 538
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_c

    .line 539
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 537
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 542
    :cond_d
    if-nez p2, :cond_11

    .line 545
    :cond_e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_f

    const/16 v7, 0xa

    if-eq v1, v7, :cond_f

    const/16 v7, 0xd

    if-ne v1, v7, :cond_e

    .line 555
    :cond_f
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 556
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_13

    const/16 v7, 0xa

    if-eq v1, v7, :cond_10

    const/16 v7, 0xd

    if-ne v1, v7, :cond_13

    .line 557
    :cond_10
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    goto :goto_5

    .line 548
    :cond_11
    const/4 v2, 0x0

    :goto_6
    array-length v7, p2

    if-ge v2, v7, :cond_f

    .line 549
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_12

    .line 550
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 548
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 559
    :cond_13
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 560
    invoke-static {v0, v3}, Llibcore/io/Base64;->decode([BI)[B

    move-result-object v0

    .line 561
    if-nez v0, :cond_14

    .line 562
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 564
    :cond_14
    return-object v0

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_15
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_3
.end method

.method private static getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 8
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x18

    .line 704
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    .line 705
    const/16 v5, 0x18

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 706
    const/16 v5, 0x18

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 708
    .local v0, "buff":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 709
    if-nez v0, :cond_0

    .line 710
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 731
    .end local v0    # "buff":[B
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 712
    .restart local v0    # "buff":[B
    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 713
    .local v2, "hash":J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 714
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    .line 715
    .local v1, "encoding":[B
    array-length v5, v1

    if-ge v5, v7, :cond_1

    .line 716
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "Bad CRL encoding"

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 718
    :cond_1
    invoke-static {p0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 719
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CRL;

    .line 720
    .local v4, "res":Ljava/security/cert/CRL;
    if-eqz v4, :cond_2

    .line 721
    monitor-exit v6

    .line 729
    .end local v1    # "encoding":[B
    .end local v4    # "res":Ljava/security/cert/CRL;
    :goto_0
    return-object v4

    .line 723
    .restart local v1    # "encoding":[B
    .restart local v4    # "res":Ljava/security/cert/CRL;
    :cond_2
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    .end local v4    # "res":Ljava/security/cert/CRL;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 724
    .restart local v4    # "res":Ljava/security/cert/CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 725
    monitor-exit v6

    goto :goto_0

    .line 727
    .end local v1    # "encoding":[B
    .end local v4    # "res":Ljava/security/cert/CRL;
    :cond_3
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    .line 728
    .local v4, "res":Ljava/security/cert/X509CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 729
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getCRL([B)Ljava/security/cert/CRL;
    .locals 6
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    array-length v4, p0

    const/16 v5, 0x18

    if-ge v4, v5, :cond_0

    .line 676
    new-instance v4, Ljava/security/cert/CRLException;

    const-string v5, "encoding.length < CRL_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 678
    :cond_0
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 679
    :try_start_0
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 680
    .local v0, "hash":J
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 682
    .local v2, "res":Ljava/security/cert/X509CRL;
    if-eqz v2, :cond_1

    .line 683
    monitor-exit v5

    move-object v3, v2

    .line 688
    .end local v2    # "res":Ljava/security/cert/X509CRL;
    .local v3, "res":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 686
    .end local v3    # "res":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 687
    .restart local v2    # "res":Ljava/security/cert/X509CRL;
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 688
    monitor-exit v5

    move-object v3, v2

    .restart local v3    # "res":Ljava/lang/Object;
    goto :goto_0

    .line 689
    .end local v0    # "hash":J
    .end local v2    # "res":Ljava/security/cert/X509CRL;
    .end local v3    # "res":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 8
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1c

    .line 633
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    .line 634
    const/16 v5, 0x1c

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 636
    const/16 v5, 0x1c

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 637
    .local v0, "buff":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 638
    if-nez v0, :cond_0

    .line 639
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 661
    .end local v0    # "buff":[B
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 641
    .restart local v0    # "buff":[B
    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 642
    .local v2, "hash":J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 643
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    .line 644
    .local v1, "encoding":[B
    array-length v5, v1

    if-ge v5, v7, :cond_1

    .line 645
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v7, "Bad Certificate encoding"

    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 647
    :cond_1
    invoke-static {p0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 648
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 649
    .local v4, "res":Ljava/security/cert/Certificate;
    if-eqz v4, :cond_2

    .line 650
    monitor-exit v6

    .line 659
    .end local v1    # "encoding":[B
    :goto_0
    return-object v4

    .line 652
    .restart local v1    # "encoding":[B
    :cond_2
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v4    # "res":Ljava/security/cert/Certificate;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 653
    .restart local v4    # "res":Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 654
    monitor-exit v6

    goto :goto_0

    .line 656
    .end local v1    # "encoding":[B
    .end local v4    # "res":Ljava/security/cert/Certificate;
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 657
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Ljava/io/InputStream;)V

    .line 658
    .restart local v4    # "res":Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 659
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getCertificate([B)Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    array-length v4, p0

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_0

    .line 604
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "encoding.length < CERT_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 606
    :cond_0
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 607
    :try_start_0
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 608
    .local v0, "hash":J
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 611
    .local v2, "res":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1

    .line 612
    monitor-exit v5

    move-object v3, v2

    .line 617
    .end local v2    # "res":Ljava/security/cert/Certificate;
    .local v3, "res":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 615
    .end local v3    # "res":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 616
    .restart local v2    # "res":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 617
    monitor-exit v5

    move-object v3, v2

    .restart local v3    # "res":Ljava/lang/Object;
    goto :goto_0

    .line 618
    .end local v0    # "hash":J
    .end local v2    # "res":Ljava/security/cert/Certificate;
    .end local v3    # "res":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    new-array v2, p1, [B

    .line 582
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 583
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 584
    .local v0, "bytik":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 585
    const/4 v2, 0x0

    .line 589
    .end local v0    # "bytik":I
    .end local v2    # "result":[B
    :cond_0
    return-object v2

    .line 587
    .restart local v0    # "bytik":I
    .restart local v2    # "result":[B
    :cond_1
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v2, Ljava/security/cert/CRLException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "inStream":Ljava/io/InputStream;
    .local v1, "inStream":Ljava/io/InputStream;
    move-object p1, v1

    .line 246
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 248
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 250
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v2

    .line 254
    :goto_0
    return-object v2

    .line 252
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 254
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 15
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v13, Ljava/security/cert/CRLException;

    const-string v14, "inStream == null"

    invoke-direct {v13, v14}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 270
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/CRL;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v13

    if-nez v13, :cond_1

    .line 273
    new-instance v9, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "inStream":Ljava/io/InputStream;
    .local v9, "inStream":Ljava/io/InputStream;
    move-object/from16 p1, v9

    .line 277
    .end local v9    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    .line 282
    .local v6, "encoding":[B
    const/4 v12, -0x1

    .line 283
    .local v12, "second_asn1_tag":I
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V

    .line 285
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_3

    .line 287
    const/16 v13, 0x2d

    if-ne v1, v13, :cond_5

    .line 289
    sget-object v13, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v6

    .line 306
    :goto_1
    if-nez v6, :cond_8

    new-instance v8, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 310
    .local v8, "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_2
    invoke-virtual {v8}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v12

    .line 311
    if-nez v6, :cond_2

    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 316
    :cond_2
    const/16 v13, 0x30

    if-eq v12, v13, :cond_9

    .line 317
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 336
    .end local v8    # "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_b

    .line 360
    :cond_4
    :goto_3
    return-object v11

    .line 290
    :cond_5
    const/16 v13, 0x30

    if-ne v1, v13, :cond_6

    .line 291
    const/4 v6, 0x0

    .line 292
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 294
    const/16 v13, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 364
    .end local v1    # "ch":I
    .end local v6    # "encoding":[B
    .end local v12    # "second_asn1_tag":I
    :catch_0
    move-exception v5

    .line 365
    .local v5, "e":Ljava/io/IOException;
    new-instance v13, Ljava/security/cert/CRLException;

    invoke-direct {v13, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 296
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "ch":I
    .restart local v6    # "encoding":[B
    .restart local v12    # "second_asn1_tag":I
    :cond_6
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 297
    new-instance v13, Ljava/security/cert/CRLException;

    const-string v14, "Unsupported encoding"

    invoke-direct {v13, v14}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 301
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    .line 306
    :cond_8
    new-instance v8, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v8, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_2

    .line 328
    .restart local v8    # "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_9
    if-nez v6, :cond_a

    .line 329
    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_4
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 331
    :cond_a
    invoke-static {v6}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 339
    .end local v8    # "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_b
    const/4 v13, -0x1

    if-ne v1, v13, :cond_c

    .line 340
    new-instance v13, Ljava/security/cert/CRLException;

    const-string v14, "There is no data in the stream"

    invoke-direct {v13, v14}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 343
    :cond_c
    const/4 v13, 0x6

    if-ne v12, v13, :cond_f

    .line 345
    if-eqz v6, :cond_d

    sget-object v13, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v13, v6}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v13

    :goto_5
    check-cast v13, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-object v0, v13

    check-cast v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-object v10, v0

    .line 350
    .local v10, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v10}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v4

    .line 351
    .local v4, "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v4, :cond_e

    .line 352
    new-instance v13, Ljava/security/cert/CRLException;

    const-string v14, "Invalid PKCS7 data provided"

    invoke-direct {v13, v14}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 345
    .end local v4    # "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v10    # "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_d
    sget-object v13, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_5

    .line 354
    .restart local v4    # "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v10    # "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_e
    invoke-virtual {v4}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCRLs()Ljava/util/List;

    move-result-object v3

    .line 355
    .local v3, "crls":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/CertificateList;>;"
    if-eqz v3, :cond_4

    .line 356
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/CertificateList;

    .line 357
    .local v2, "crl":Lorg/apache/harmony/security/x509/CertificateList;
    new-instance v13, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v13, v2}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 363
    .end local v2    # "crl":Lorg/apache/harmony/security/x509/CertificateList;
    .end local v3    # "crls":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/CertificateList;>;"
    .end local v4    # "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_f
    new-instance v13, Ljava/security/cert/CRLException;

    const-string v14, "Unsupported encoding"

    invoke-direct {v13, v14}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "inStream == null"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 391
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "inStream":Ljava/io/InputStream;
    .local v2, "inStream":Ljava/io/InputStream;
    move-object p1, v2

    .line 394
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 398
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    .line 400
    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    .line 405
    :goto_0
    return-object v3

    .line 402
    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    .line 403
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 405
    invoke-static {p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    goto :goto_0

    .line 407
    :cond_3
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Unsupported encoding"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "ch":I
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "inStream":Ljava/io/InputStream;
    .local v1, "inStream":Ljava/io/InputStream;
    move-object p1, v1

    .line 101
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 103
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 105
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 109
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 15
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v13, Ljava/security/cert/CertificateException;

    const-string v14, "inStream == null"

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 128
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v13

    if-nez v13, :cond_1

    .line 132
    new-instance v9, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "inStream":Ljava/io/InputStream;
    .local v9, "inStream":Ljava/io/InputStream;
    move-object/from16 p1, v9

    .line 136
    .end local v9    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    .line 141
    .local v6, "encoding":[B
    const/4 v12, -0x1

    .line 142
    .local v12, "second_asn1_tag":I
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V

    .line 144
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "ch":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_3

    .line 146
    const/16 v13, 0x2d

    if-ne v3, v13, :cond_5

    .line 148
    sget-object v13, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v6

    .line 165
    :goto_1
    if-nez v6, :cond_8

    new-instance v8, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v8, "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_2
    invoke-virtual {v8}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v12

    .line 170
    if-nez v6, :cond_2

    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 175
    :cond_2
    const/16 v13, 0x30

    if-eq v12, v13, :cond_9

    .line 176
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 196
    .end local v8    # "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_b

    .line 221
    :cond_4
    :goto_3
    return-object v11

    .line 149
    :cond_5
    const/16 v13, 0x30

    if-ne v3, v13, :cond_6

    .line 150
    const/4 v6, 0x0

    .line 151
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 153
    const/16 v13, 0x1c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    .end local v3    # "ch":I
    .end local v6    # "encoding":[B
    .end local v12    # "second_asn1_tag":I
    :catch_0
    move-exception v5

    .line 226
    .local v5, "e":Ljava/io/IOException;
    new-instance v13, Ljava/security/cert/CertificateException;

    invoke-direct {v13, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 155
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "ch":I
    .restart local v6    # "encoding":[B
    .restart local v12    # "second_asn1_tag":I
    :cond_6
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 156
    new-instance v13, Ljava/security/cert/CertificateException;

    const-string v14, "Unsupported encoding"

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 160
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    .line 165
    :cond_8
    new-instance v8, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v8, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_2

    .line 187
    .restart local v8    # "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_9
    if-nez v6, :cond_a

    .line 188
    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_4
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 190
    :cond_a
    invoke-static {v6}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 199
    .end local v8    # "in":Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_b
    const/4 v13, -0x1

    if-eq v3, v13, :cond_4

    .line 204
    const/4 v13, 0x6

    if-ne v12, v13, :cond_e

    .line 206
    if-eqz v6, :cond_c

    sget-object v13, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v13, v6}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v13

    :goto_5
    check-cast v13, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-object v0, v13

    check-cast v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-object v10, v0

    .line 211
    .local v10, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v10}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v4

    .line 212
    .local v4, "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v4, :cond_d

    .line 213
    new-instance v13, Ljava/security/cert/CertificateException;

    const-string v14, "Invalid PKCS7 data provided"

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 206
    .end local v4    # "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v10    # "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_c
    sget-object v13, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_5

    .line 215
    .restart local v4    # "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v10    # "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_d
    invoke-virtual {v4}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    if-eqz v2, :cond_4

    .line 217
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/Certificate;

    .line 218
    .local v1, "cert":Lorg/apache/harmony/security/x509/Certificate;
    new-instance v13, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v13, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 224
    .end local v1    # "cert":Lorg/apache/harmony/security/x509/Certificate;
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    .end local v4    # "data":Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_e
    new-instance v13, Ljava/security/cert/CertificateException;

    const-string v14, "Unsupported encoding"

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
