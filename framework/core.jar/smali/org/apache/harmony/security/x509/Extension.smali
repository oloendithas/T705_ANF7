.class public final Lorg/apache/harmony/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field static final AUTHORITY_INFO_ACCESS:[I

.field static final AUTH_KEY_ID:[I

.field static final BASIC_CONSTRAINTS:[I

.field static final CERTIFICATE_ISSUER:[I

.field static final CERTIFICATE_POLICIES:[I

.field public static final CRITICAL:Z = true

.field static final CRL_DISTR_POINTS:[I

.field static final CRL_NUMBER:[I

.field static final EXTENDED_KEY_USAGE:[I

.field static final FRESHEST_CRL:[I

.field static final INHIBIT_ANY_POLICY:[I

.field static final INVALIDITY_DATE:[I

.field static final ISSUER_ALTERNATIVE_NAME:[I

.field static final ISSUING_DISTR_POINT:[I

.field static final ISSUING_DISTR_POINTS:[I

.field static final KEY_USAGE:[I

.field static final NAME_CONSTRAINTS:[I

.field public static final NON_CRITICAL:Z

.field static final POLICY_CONSTRAINTS:[I

.field static final POLICY_MAPPINGS:[I

.field static final PRIVATE_KEY_USAGE_PERIOD:[I

.field static final REASON_CODE:[I

.field static final SUBJECT_ALT_NAME:[I

.field static final SUBJECT_INFO_ACCESS:[I

.field static final SUBJ_DIRECTORY_ATTRS:[I

.field static final SUBJ_KEY_ID:[I


# instance fields
.field private final critical:Z

.field private encoding:[B

.field private final extnID:[I

.field private extnID_str:Ljava/lang/String;

.field private final extnValue:[B

.field protected extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

.field private rawExtnValue:[B

.field private volatile valueDecoded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x4

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->FRESHEST_CRL:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    .line 77
    new-array v0, v2, [I

    fill-array-data v0, :array_11

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINT:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_13

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_15

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_16

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_17

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    .line 354
    new-instance v0, Lorg/apache/harmony/security/x509/Extension$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/harmony/security/x509/Extension$1;

    invoke-direct {v3}, Lorg/apache/harmony/security/x509/Extension$1;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 59
    :array_0
    .array-data 4
        0x2
        0x5
        0x1d
        0x9
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x2
        0x5
        0x1d
        0xe
    .end array-data

    .line 61
    :array_2
    .array-data 4
        0x2
        0x5
        0x1d
        0xf
    .end array-data

    .line 62
    :array_3
    .array-data 4
        0x2
        0x5
        0x1d
        0x10
    .end array-data

    .line 63
    :array_4
    .array-data 4
        0x2
        0x5
        0x1d
        0x11
    .end array-data

    .line 64
    :array_5
    .array-data 4
        0x2
        0x5
        0x1d
        0x12
    .end array-data

    .line 65
    :array_6
    .array-data 4
        0x2
        0x5
        0x1d
        0x13
    .end array-data

    .line 66
    :array_7
    .array-data 4
        0x2
        0x5
        0x1d
        0x1e
    .end array-data

    .line 67
    :array_8
    .array-data 4
        0x2
        0x5
        0x1d
        0x1f
    .end array-data

    .line 68
    :array_9
    .array-data 4
        0x2
        0x5
        0x1d
        0x20
    .end array-data

    .line 69
    :array_a
    .array-data 4
        0x2
        0x5
        0x1d
        0x21
    .end array-data

    .line 70
    :array_b
    .array-data 4
        0x2
        0x5
        0x1d
        0x23
    .end array-data

    .line 71
    :array_c
    .array-data 4
        0x2
        0x5
        0x1d
        0x24
    .end array-data

    .line 72
    :array_d
    .array-data 4
        0x2
        0x5
        0x1d
        0x25
    .end array-data

    .line 73
    :array_e
    .array-data 4
        0x2
        0x5
        0x1d
        0x2e
    .end array-data

    .line 74
    :array_f
    .array-data 4
        0x2
        0x5
        0x1d
        0x36
    .end array-data

    .line 75
    :array_10
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0x1
    .end array-data

    .line 77
    :array_11
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0xb
    .end array-data

    .line 80
    :array_12
    .array-data 4
        0x2
        0x5
        0x1d
        0x1c
    .end array-data

    .line 82
    :array_13
    .array-data 4
        0x2
        0x5
        0x1d
        0x14
    .end array-data

    .line 83
    :array_14
    .array-data 4
        0x2
        0x5
        0x1d
        0x1d
    .end array-data

    .line 84
    :array_15
    .array-data 4
        0x2
        0x5
        0x1d
        0x18
    .end array-data

    .line 85
    :array_16
    .array-data 4
        0x2
        0x5
        0x1d
        0x15
    .end array-data

    .line 86
    :array_17
    .array-data 4
        0x2
        0x5
        0x1d
        0x1c
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "extnValueObject"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 106
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 108
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 109
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 111
    invoke-virtual {p3}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 115
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 117
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 118
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "extnValue"    # [B

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    .line 129
    return-void
.end method

.method public constructor <init>([IZ[B)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 122
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 123
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 124
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 125
    return-void
.end method

.method private constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B
    .param p4, "rawExtnValue"    # [B
    .param p5, "encoding"    # [B
    .param p6, "decodedExtValue"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 139
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 140
    iput-object p5, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 141
    iput-object p6, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 142
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Z
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # [B
    .param p6, "x5"    # Lorg/apache/harmony/security/x509/ExtensionValue;
    .param p7, "x6"    # Lorg/apache/harmony/security/x509/Extension$1;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V

    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "extnValue"    # [B

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/Extension;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extension;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/Extension;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extension;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/Extension;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extension;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method private decodeExtensionValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 240
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 286
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    new-instance v0, Lorg/apache/harmony/security/x509/KeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 247
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 250
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 253
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 255
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->decode([B)Lorg/apache/harmony/security/x509/NameConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 257
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 259
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 261
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 263
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 264
    new-instance v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 265
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 266
    new-instance v0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 267
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 268
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 269
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 271
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 272
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 273
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 274
    new-instance v0, Lorg/apache/harmony/security/x509/InvalidityDate;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 275
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 276
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 277
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 278
    new-instance v0, Lorg/apache/harmony/security/x509/CRLNumber;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLNumber;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 279
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 280
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 281
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 282
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 283
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    .line 290
    const-string v0, "OID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Critical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 293
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 348
    :goto_1
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const-string v0, "Subject Directory Attributes Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unparsed Extension Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const-string v0, "Subject Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 307
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const-string v0, "Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 309
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    const-string v0, "Private Key Usage Period Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 311
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    const-string v0, "Subject Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 313
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    const-string v0, "Issuer Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 315
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 316
    const-string v0, "Basic Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 317
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 318
    const-string v0, "Name Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 319
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    const-string v0, "CRL Distribution Points Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 321
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    const-string v0, "Certificate Policies Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 323
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 324
    const-string v0, "Policy Mappings Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 325
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    const-string v0, "Authority Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 327
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 328
    const-string v0, "Policy Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 329
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 330
    const-string v0, "Extended Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 331
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 332
    const-string v0, "Inhibit Any-Policy Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 333
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 334
    const-string v0, "Authority Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 335
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 336
    const-string v0, "Subject Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 337
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 338
    const-string v0, "Invalidity Date Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 339
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 340
    const-string v0, "CRL Number Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 341
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 342
    const-string v0, "Reason Code Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 344
    :cond_15
    const-string v0, "Unknown Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 294
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ext"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 191
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extension;

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 194
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 195
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    iget-boolean v3, v0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    check-cast v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    .line 235
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCritical()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method public getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    return-object v0
.end method

.method public getExtnID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    return-object v0
.end method

.method public getExtnValue()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method public getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/KeyUsage;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    check-cast v0, Lorg/apache/harmony/security/x509/KeyUsage;

    .line 221
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getRawExtnValue()[B
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
