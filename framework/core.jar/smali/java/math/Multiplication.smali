.class Ljava/math/Multiplication;
.super Ljava/lang/Object;
.source "Multiplication.java"


# static fields
.field static final bigFivePows:[Ljava/math/BigInteger;

.field static final bigTenPows:[Ljava/math/BigInteger;

.field static final fivePows:[I

.field static final tenPows:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v4, 0x20

    .line 40
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Ljava/math/Multiplication;->tenPows:[I

    .line 48
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    sput-object v3, Ljava/math/Multiplication;->fivePows:[I

    .line 57
    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    .line 63
    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    .line 69
    const-wide/16 v0, 0x1

    .line 71
    .local v0, "fivePow":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 72
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 73
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    shl-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 74
    const-wide/16 v3, 0x5

    mul-long/2addr v0, v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    :goto_1
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 77
    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 78
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    :cond_1
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "exp"    # I

    .prologue
    .line 183
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 184
    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    aget v0, v0, p1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_0
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 186
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method static multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "factor"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 93
    .local v0, "bi":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->multiplyByPositiveInt(I)V

    .line 94
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method static multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "exp"    # J

    .prologue
    .line 106
    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    long-to-int v1, p1

    aget v0, v0, v1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method static powerOf10(J)Ljava/math/BigInteger;
    .locals 13
    .param p0, "exp"    # J

    .prologue
    .line 120
    long-to-int v2, p0

    .line 122
    .local v2, "intExp":I
    sget-object v7, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v7, v7

    int-to-long v7, v7

    cmp-long v7, p0, v7

    if-gez v7, :cond_0

    .line 124
    sget-object v7, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    aget-object v6, v7, v2

    .line 171
    :goto_0
    return-object v6

    .line 125
    :cond_0
    const-wide/16 v7, 0x32

    cmp-long v7, p0, v7

    if-gtz v7, :cond_1

    .line 127
    sget-object v7, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    .line 128
    :cond_1
    const-wide/16 v7, 0x3e8

    cmp-long v7, p0, v7

    if-gtz v7, :cond_2

    .line 130
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    .line 137
    :cond_2
    const-wide/16 v7, 0x1

    long-to-double v9, p0

    const-wide v11, 0x40034413509f79ffL

    div-double/2addr v9, v11

    double-to-long v9, v9

    add-long v0, v7, v9

    .line 139
    .local v0, "byteArraySize":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-lez v7, :cond_3

    .line 140
    new-instance v7, Ljava/lang/ArithmeticException;

    invoke-direct {v7}, Ljava/lang/ArithmeticException;-><init>()V

    throw v7

    .line 142
    :cond_3
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, p0, v7

    if-gtz v7, :cond_4

    .line 144
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    .line 153
    :cond_4
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 154
    .local v5, "powerOfFive":Ljava/math/BigInteger;
    move-object v6, v5

    .line 155
    .local v6, "res":Ljava/math/BigInteger;
    const-wide/32 v7, 0x7fffffff

    sub-long v3, p0, v7

    .line 157
    .local v3, "longExp":J
    const-wide/32 v7, 0x7fffffff

    rem-long v7, p0, v7

    long-to-int v2, v7

    .line 158
    :goto_1
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v3, v7

    if-lez v7, :cond_5

    .line 159
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 160
    const-wide/32 v7, 0x7fffffff

    sub-long/2addr v3, v7

    goto :goto_1

    .line 162
    :cond_5
    sget-object v7, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 164
    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 165
    const-wide/32 v7, 0x7fffffff

    sub-long v3, p0, v7

    .line 166
    :goto_2
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v3, v7

    if-lez v7, :cond_6

    .line 167
    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 168
    const-wide/32 v7, 0x7fffffff

    sub-long/2addr v3, v7

    goto :goto_2

    .line 170
    :cond_6
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 171
    goto/16 :goto_0
.end method
