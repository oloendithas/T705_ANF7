.class public Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.super Ljava/security/cert/CertPath;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$4;,
        Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field private static final ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field static final encodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6ee14ff003fb47acL


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private pkcs7Encoding:[B

.field private pkiPathEncoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKI_PATH:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    # getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->apiName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->access$000(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKCS7:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    # getter for: Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->apiName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->access$000(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    .line 337
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 397
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 431
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;

    new-array v1, v6, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    const-string v3, "X.509"

    invoke-direct {p0, v3}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 137
    .local v0, "cert":Ljava/security/cert/Certificate;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    .line 138
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an X.509 certificate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)V
    .locals 1
    .param p2, "type"    # Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    .param p3, "x2"    # Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-object v0
.end method

.method private static getCertPathFromContentInfo(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 7
    .param p0, "contentInfo"    # Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v4

    .line 163
    .local v4, "sd":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v4, :cond_0

    .line 164
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_0
    invoke-virtual {v4}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    if-nez v1, :cond_1

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 172
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    .line 174
    .local v0, "cert":Lorg/apache/harmony/security/x509/Certificate;
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v0    # "cert":Lorg/apache/harmony/security/x509/Certificate;
    :cond_2
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKCS7:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    invoke-direct {v5, v3, v6}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)V

    return-object v5
.end method

.method private getEncoded(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)[B
    .locals 3
    .param p1, "encoding"    # Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$4;->$SwitchMap$org$apache$harmony$security$provider$cert$X509CertPathImpl$Encoding:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :pswitch_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 306
    :goto_0
    return-object v0

    .line 302
    :pswitch_1
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    if-nez v0, :cond_1

    .line 303
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/io/InputStream;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to decode CertPath"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->findByApiName(Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    move-result-object v1

    .line 207
    .local v1, "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    if-nez v1, :cond_0

    .line 208
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Failed to decode CertPath"

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :cond_0
    :try_start_1
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$4;->$SwitchMap$org$apache$harmony$security$provider$cert$X509CertPathImpl$Encoding:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 217
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :pswitch_0
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .line 215
    :goto_0
    return-object v2

    :pswitch_1
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getCertPathFromContentInfo(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance([B)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to decode CertPath"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 5
    .param p0, "in"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->findByApiName(Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    move-result-object v1

    .line 250
    .local v1, "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    if-nez v1, :cond_0

    .line 251
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Failed to decode CertPath"

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :cond_0
    :try_start_1
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$4;->$SwitchMap$org$apache$harmony$security$provider$cert$X509CertPathImpl$Encoding:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 260
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :pswitch_0
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .line 258
    :goto_0
    return-object v2

    :pswitch_1
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getCertPathFromContentInfo(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKI_PATH:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getEncoded(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->findByApiName(Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    move-result-object v0

    .line 318
    .local v0, "encType":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    if-nez v0, :cond_0

    .line 319
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getEncoded(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)[B

    move-result-object v1

    return-object v1
.end method

.method public getEncodings()Ljava/util/Iterator;
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
    .line 331
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
