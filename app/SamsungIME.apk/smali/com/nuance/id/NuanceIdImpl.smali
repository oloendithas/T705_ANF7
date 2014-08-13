.class final Lcom/nuance/id/NuanceIdImpl;
.super Ljava/lang/Object;
.source "NuanceIdImpl.java"


# static fields
.field private static final SEED:Ljava/lang/String; = "2beebf614f0f4f6096051804940a8d6e"

.field private static final VERSION:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToStr([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 60
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lcom/nuance/id/NuanceIdImpl;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private strToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v4, v5, [B

    .line 77
    .local v4, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 78
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "num":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "high":I
    and-int/lit16 v1, v1, 0xff

    .line 81
    div-int/lit8 v5, v2, 0x2

    int-to-byte v6, v1

    aput-byte v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 84
    .end local v1    # "high":I
    .end local v3    # "num":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "result":[B
    :cond_0
    return-object v4
.end method

.method private toHex(I)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # I

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "hex":Ljava/lang/String;
    const/16 v1, 0x10

    if-ge p1, v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .end local v0    # "hex":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private unitTest()V
    .locals 4

    .prologue
    .line 91
    const-string v0, "99000028669272"

    .line 92
    .local v0, "fakeIMEI":Ljava/lang/String;
    const-string v1, "d06a079160f9cf88a3ac0262edd6eef6e539a1b5ddae08ac14375dea6e1bef2e9"

    .line 94
    .local v1, "imeiHash":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unit Test Failed!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method generateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 15
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v4, "2beebf614f0f4f6096051804940a8d6e"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v4, "seed":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 19
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, v4}, Lcom/nuance/id/NuanceIdImpl;->strToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/id/NuanceIdImpl;->bytesToStr([B)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "digest":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v0, v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v0, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 33
    .end local v0    # "digest":Ljava/lang/String;
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "seed":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "00000000000000000000000000000000000000000000000000000000000000000"

    goto :goto_1

    .line 20
    .end local v1    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "seed":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    .local v1, "md":Ljava/security/MessageDigest;
    if-eqz p1, :cond_0

    .line 43
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/id/NuanceIdImpl;->bytesToStr([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 50
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_1
    return-object v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "00000000000000000000000000000000000000000000000000000000000000000"

    goto :goto_1

    .line 44
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
