.class final enum Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
.super Ljava/lang/Enum;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

.field public static final enum PKCS7:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

.field public static final enum PKI_PATH:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    const-string v1, "PKI_PATH"

    const-string v2, "PkiPath"

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKI_PATH:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    .line 87
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    const-string v1, "PKCS7"

    const-string v2, "PKCS7"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKCS7:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKI_PATH:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->PKCS7:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->$VALUES:[Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->apiName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method static findByApiName(Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    .locals 5
    .param p0, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->values()[Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 97
    .local v1, "element":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    iget-object v4, v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    .end local v1    # "element":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :goto_1
    return-object v1

    .line 96
    .restart local v1    # "element":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "element":Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;->$VALUES:[Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$Encoding;

    return-object v0
.end method
