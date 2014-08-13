.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field private static final NTZ_TABLE:[B

.field public static final SIZE:I = 0x20

.field private static final SMALL_VALUES:[Ljava/lang/Integer;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Ljava/lang/Integer;->NTZ_TABLE:[B

    .line 76
    const-class v1, [I

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 712
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    .line 715
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 716
    sget-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_0
    return-void

    .line 65
    :array_0
    .array-data 1
        0x20t
        0x0t
        0x1t
        0xct
        0x2t
        0x6t
        -0x1t
        0xdt
        0x3t
        -0x1t
        0x7t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xet
        0xat
        0x4t
        -0x1t
        -0x1t
        0x8t
        -0x1t
        -0x1t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x15t
        0x1bt
        0xft
        0x1ft
        0xbt
        0x5t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x9t
        -0x1t
        -0x1t
        0x18t
        -0x1t
        -0x1t
        0x14t
        0x1at
        0x1et
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x17t
        -0x1t
        0x13t
        0x1dt
        -0x1t
        0x16t
        0x12t
        0x1ct
        0x11t
        0x10t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 89
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    return-void
.end method

.method public static bitCount(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    const v2, 0x33333333

    .line 606
    shr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 607
    and-int v0, p0, v2

    shr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    add-int p0, v0, v1

    .line 608
    shr-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 609
    shr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 610
    shr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 611
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    .prologue
    .line 133
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v2, 0x0

    .line 155
    .local v2, "i":I
    if-nez v3, :cond_0

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 159
    .local v1, "firstDigit":C
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_1

    move v4, v6

    .line 160
    .local v4, "negative":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 161
    if-ne v3, v6, :cond_2

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .end local v4    # "negative":Z
    :cond_1
    move v4, v7

    .line 159
    goto :goto_0

    .line 164
    .restart local v4    # "negative":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    :cond_3
    const/16 v0, 0xa

    .line 168
    .local v0, "base":I
    const/16 v6, 0x30

    if-ne v1, v6, :cond_9

    .line 169
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_4

    .line 170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 188
    :goto_1
    return-object v6

    .line 172
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x78

    if-eq v1, v6, :cond_5

    const/16 v6, 0x58

    if-ne v1, v6, :cond_8

    .line 173
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 176
    :cond_6
    const/16 v0, 0x10

    .line 187
    :cond_7
    :goto_2
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v5

    .line 188
    .local v5, "result":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 178
    .end local v5    # "result":I
    :cond_8
    const/16 v0, 0x8

    goto :goto_2

    .line 180
    :cond_9
    const/16 v6, 0x23

    if-ne v1, v6, :cond_7

    .line 181
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_a

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 184
    :cond_a
    const/16 v0, 0x10

    goto :goto_2
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 228
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v2

    .line 231
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 257
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 267
    :goto_0
    return-object v2

    .line 260
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 265
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 296
    .end local p1    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object p1

    .line 289
    .restart local p1    # "defaultValue":Ljava/lang/Integer;
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static highestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 525
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 526
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 527
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 528
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 529
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 530
    ushr-int/lit8 v0, p0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private static invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid int: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lowestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 545
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 559
    if-gtz p0, :cond_0

    .line 560
    xor-int/lit8 v1, p0, -0x1

    shr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x20

    .line 579
    :goto_0
    return v1

    .line 562
    :cond_0
    const/4 v0, 0x1

    .line 563
    .local v0, "n":I
    shr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_1

    .line 564
    add-int/lit8 v0, v0, 0x10

    .line 565
    shl-int/lit8 p0, p0, 0x10

    .line 567
    :cond_1
    shr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_2

    .line 568
    add-int/lit8 v0, v0, 0x8

    .line 569
    shl-int/lit8 p0, p0, 0x8

    .line 571
    :cond_2
    shr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_3

    .line 572
    add-int/lit8 v0, v0, 0x4

    .line 573
    shl-int/lit8 p0, p0, 0x4

    .line 575
    :cond_3
    shr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_4

    .line 576
    add-int/lit8 v0, v0, 0x2

    .line 577
    shl-int/lit8 p0, p0, 0x2

    .line 579
    :cond_4
    ushr-int/lit8 v1, p0, 0x1f

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public static numberOfTrailingZeros(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 592
    sget-object v0, Ljava/lang/Integer;->NTZ_TABLE:[B

    neg-int v1, p0

    and-int/2addr v1, p0

    const v2, 0x450fbaf

    mul-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1a

    aget-byte v0, v0, v1

    return v0
.end method

.method private static parse(Ljava/lang/String;IIZ)I
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 369
    const/high16 v6, -0x80000000

    div-int v2, v6, p2

    .line 370
    .local v2, "max":I
    const/4 v5, 0x0

    .local v5, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    move v4, p1

    .line 371
    .end local p1    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 372
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 373
    .local v0, "digit":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 374
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 376
    :cond_0
    if-le v2, v5, :cond_1

    .line 377
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 379
    :cond_1
    mul-int v6, v5, p2

    sub-int v3, v6, v0

    .line 380
    .local v3, "next":I
    if-le v3, v5, :cond_2

    .line 381
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 383
    :cond_2
    move v5, v3

    move v4, p1

    .line 384
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 385
    .end local v0    # "digit":I
    .end local v3    # "next":I
    :cond_3
    if-nez p3, :cond_4

    .line 386
    neg-int v5, v5

    .line 387
    if-gez v5, :cond_4

    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 391
    :cond_4
    return v5
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 331
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v3, 0x2

    if-lt p1, v3, :cond_0

    const/16 v3, 0x24

    if-le p1, v3, :cond_1

    .line 351
    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid radix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_1
    if-nez p0, :cond_2

    .line 354
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 356
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .line 357
    .local v0, "i":I
    if-nez v1, :cond_3

    .line 358
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 360
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .line 361
    .local v2, "negative":Z
    :goto_0
    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    .line 362
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 360
    .end local v2    # "negative":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 365
    .restart local v2    # "negative":Z
    :cond_5
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v3

    return v3
.end method

.method public static reverse(I)I
    .locals 5
    .param p0, "i"    # I

    .prologue
    const v1, 0x55555555

    const v4, 0x33333333

    const v3, 0xf0f0f0f

    const v2, 0xff00ff

    .line 672
    ushr-int/lit8 v0, p0, 0x1

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x1

    or-int p0, v0, v1

    .line 673
    ushr-int/lit8 v0, p0, 0x2

    and-int/2addr v0, v4

    and-int v1, p0, v4

    shl-int/lit8 v1, v1, 0x2

    or-int p0, v0, v1

    .line 674
    ushr-int/lit8 v0, p0, 0x4

    and-int/2addr v0, v3

    and-int v1, p0, v3

    shl-int/lit8 v1, v1, 0x4

    or-int p0, v0, v1

    .line 675
    ushr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v2

    and-int v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int p0, v0, v1

    .line 676
    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytes(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    const v1, 0xff00ff

    .line 657
    ushr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int p0, v0, v1

    .line 658
    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateLeft(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 627
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateRight(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 643
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static signum(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 690
    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 408
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-static {p0, v0, v0}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 433
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 451
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .prologue
    .line 474
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 706
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/16 v0, -0x80

    if-ge p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Integer;

    .prologue
    .line 124
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 208
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Ljava/lang/Integer;->value:I

    iget v1, p0, Ljava/lang/Integer;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
