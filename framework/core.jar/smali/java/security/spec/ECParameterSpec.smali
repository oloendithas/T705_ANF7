.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final cofactor:I

.field private final curve:Ljava/security/spec/EllipticCurve;

.field private final curveName:Ljava/lang/String;

.field private final generator:Ljava/security/spec/ECPoint;

.field private final order:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .locals 6
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "generator"    # Ljava/security/spec/ECPoint;
    .param p3, "order"    # Ljava/math/BigInteger;
    .param p4, "cofactor"    # I

    .prologue
    .line 55
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;ILjava/lang/String;)V
    .locals 2
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "generator"    # Ljava/security/spec/ECPoint;
    .param p3, "order"    # Ljava/math/BigInteger;
    .param p4, "cofactor"    # I
    .param p5, "curveName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    .line 68
    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    .line 69
    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    .line 70
    iput p4, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    .line 71
    iput-object p5, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "generator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "order <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    if-gtz v0, :cond_4

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cofactor <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4
    return-void
.end method


# virtual methods
.method public getCofactor()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    return v0
.end method

.method public getCurve()Ljava/security/spec/EllipticCurve;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    return-object v0
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerator()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    return-object v0
.end method
