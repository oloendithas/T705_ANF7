.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field private static final SMALL_VALUES:[Ljava/lang/Long;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 56
    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 733
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    .line 736
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 737
    sget-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 90
    return-void
.end method

.method public static bitCount(J)I
    .locals 8
    .param p0, "v"    # J

    .prologue
    const-wide v6, 0x3333333333333333L

    const v5, 0xf0f0f0f

    .line 607
    const/4 v1, 0x1

    ushr-long v1, p0, v1

    const-wide v3, 0x5555555555555555L

    and-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 608
    and-long v1, p0, v6

    const/4 v3, 0x2

    ushr-long v3, p0, v3

    and-long/2addr v3, v6

    add-long p0, v1, v3

    .line 609
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    long-to-int v2, p0

    add-int v0, v1, v2

    .line 610
    .local v0, "i":I
    and-int v1, v0, v5

    ushr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v5

    add-int v0, v1, v2

    .line 611
    ushr-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    .line 612
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 613
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "lhs"    # J
    .param p2, "rhs"    # J

    .prologue
    .line 120
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v2, 0x0

    .line 141
    .local v2, "i":I
    if-nez v3, :cond_0

    .line 142
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 144
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 145
    .local v1, "firstDigit":C
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_1

    move v4, v7

    .line 146
    .local v4, "negative":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 147
    if-ne v3, v7, :cond_2

    .line 148
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 145
    .end local v4    # "negative":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 150
    .restart local v4    # "negative":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 153
    :cond_3
    const/16 v0, 0xa

    .line 154
    .local v0, "base":I
    const/16 v7, 0x30

    if-ne v1, v7, :cond_9

    .line 155
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_4

    .line 156
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 176
    :goto_1
    return-object v7

    .line 158
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x78

    if-eq v1, v7, :cond_5

    const/16 v7, 0x58

    if-ne v1, v7, :cond_8

    .line 159
    :cond_5
    if-ne v2, v3, :cond_6

    .line 160
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 162
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 163
    const/16 v0, 0x10

    .line 175
    :cond_7
    :goto_2
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v5

    .line 176
    .local v5, "result":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    .line 165
    .end local v5    # "result":J
    :cond_8
    const/16 v0, 0x8

    goto :goto_2

    .line 167
    :cond_9
    const/16 v7, 0x23

    if-ne v1, v7, :cond_7

    .line 168
    if-ne v2, v3, :cond_a

    .line 169
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 171
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 172
    const/16 v0, 0x10

    goto :goto_2
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v2

    .line 218
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 244
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 254
    :goto_0
    return-object v2

    .line 247
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 249
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 252
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 273
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 283
    .end local p1    # "defaultValue":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-object p1

    .line 276
    .restart local p1    # "defaultValue":Ljava/lang/Long;
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static highestOneBit(J)J
    .locals 3
    .param p0, "v"    # J

    .prologue
    const/4 v2, 0x1

    .line 512
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    .line 513
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 514
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 515
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 516
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 517
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 518
    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid long: \""

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

.method public static lowestOneBit(J)J
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 533
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 5
    .param p0, "v"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 547
    cmp-long v2, p0, v3

    if-gez v2, :cond_0

    .line 548
    const/4 v2, 0x0

    .line 578
    :goto_0
    return v2

    .line 550
    :cond_0
    cmp-long v2, p0, v3

    if-nez v2, :cond_1

    .line 551
    const/16 v2, 0x40

    goto :goto_0

    .line 556
    :cond_1
    const/4 v1, 0x1

    .line 557
    .local v1, "n":I
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v0, v2

    .line 558
    .local v0, "i":I
    if-nez v0, :cond_2

    .line 559
    add-int/lit8 v1, v1, 0x20

    .line 560
    long-to-int v0, p0

    .line 562
    :cond_2
    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_3

    .line 563
    add-int/lit8 v1, v1, 0x10

    .line 564
    shl-int/lit8 v0, v0, 0x10

    .line 566
    :cond_3
    ushr-int/lit8 v2, v0, 0x18

    if-nez v2, :cond_4

    .line 567
    add-int/lit8 v1, v1, 0x8

    .line 568
    shl-int/lit8 v0, v0, 0x8

    .line 570
    :cond_4
    ushr-int/lit8 v2, v0, 0x1c

    if-nez v2, :cond_5

    .line 571
    add-int/lit8 v1, v1, 0x4

    .line 572
    shl-int/lit8 v0, v0, 0x4

    .line 574
    :cond_5
    ushr-int/lit8 v2, v0, 0x1e

    if-nez v2, :cond_6

    .line 575
    add-int/lit8 v1, v1, 0x2

    .line 576
    shl-int/lit8 v0, v0, 0x2

    .line 578
    :cond_6
    ushr-int/lit8 v2, v0, 0x1f

    sub-int v2, v1, v2

    goto :goto_0
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 3
    .param p0, "v"    # J

    .prologue
    .line 591
    long-to-int v0, p0

    .line 592
    .local v0, "low":I
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .locals 15
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z

    .prologue
    .line 356
    const-wide/high16 v11, -0x8000000000000000L

    move/from16 v0, p2

    int-to-long v13, v0

    div-long v4, v11, v13

    .line 357
    .local v4, "max":J
    const-wide/16 v9, 0x0

    .local v9, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-long v2, v11

    .local v2, "length":J
    move/from16 v8, p1

    .line 358
    .end local p1    # "offset":I
    .local v8, "offset":I
    :goto_0
    int-to-long v11, v8

    cmp-long v11, v11, v2

    if-gez v11, :cond_3

    .line 359
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move/from16 v0, p2

    invoke-static {v11, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 360
    .local v1, "digit":I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    .line 361
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 363
    :cond_0
    cmp-long v11, v4, v9

    if-lez v11, :cond_1

    .line 364
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 366
    :cond_1
    move/from16 v0, p2

    int-to-long v11, v0

    mul-long/2addr v11, v9

    int-to-long v13, v1

    sub-long v6, v11, v13

    .line 367
    .local v6, "next":J
    cmp-long v11, v6, v9

    if-lez v11, :cond_2

    .line 368
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 370
    :cond_2
    move-wide v9, v6

    move/from16 v8, p1

    .line 371
    .end local p1    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_0

    .line 372
    .end local v1    # "digit":I
    .end local v6    # "next":J
    :cond_3
    if-nez p3, :cond_4

    .line 373
    neg-long v9, v9

    .line 374
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gez v11, :cond_4

    .line 375
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 378
    :cond_4
    return-wide v9
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 318
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v3, 0x2

    if-lt p1, v3, :cond_0

    const/16 v3, 0x24

    if-le p1, v3, :cond_1

    .line 338
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

    .line 340
    :cond_1
    if-nez p0, :cond_2

    .line 341
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 343
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .line 344
    .local v0, "i":I
    if-nez v1, :cond_3

    .line 345
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 347
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .line 348
    .local v2, "negative":Z
    :goto_0
    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    .line 349
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 347
    .end local v2    # "negative":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 352
    .restart local v2    # "negative":Z
    :cond_5
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static reverse(J)J
    .locals 9
    .param p0, "v"    # J

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 692
    ushr-long v0, p0, v4

    const-wide v2, 0x5555555555555555L

    and-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 693
    ushr-long v0, p0, v5

    const-wide v2, 0x3333333333333333L

    and-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 694
    ushr-long v0, p0, v6

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    .line 695
    ushr-long v0, p0, v7

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    .line 696
    ushr-long v0, p0, v8

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v8

    or-long p0, v0, v2

    .line 697
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const/16 v2, 0x20

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .locals 9
    .param p0, "v"    # J

    .prologue
    const-wide v2, 0xff00ff00ff00ffL

    const-wide v7, 0xffff0000ffffL

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 676
    ushr-long v0, p0, v4

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 677
    ushr-long v0, p0, v5

    and-long/2addr v0, v7

    and-long v2, p0, v7

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 678
    ushr-long v0, p0, v6

    shl-long v2, p0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .locals 4
    .param p0, "v"    # J
    .param p2, "distance"    # I

    .prologue
    .line 646
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .locals 4
    .param p0, "v"    # J
    .param p2, "distance"    # I

    .prologue
    .line 662
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .locals 3
    .param p0, "v"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 711
    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # J

    .prologue
    .line 395
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # J

    .prologue
    .line 408
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # J

    .prologue
    .line 420
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToOctalString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 1
    .param p0, "n"    # J

    .prologue
    .line 438
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # J
    .param p2, "radix"    # I

    .prologue
    .line 461
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->longToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 727
    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    long-to-int v1, p0

    add-int/lit16 v1, v1, 0x80

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Long;

    .prologue
    .line 111
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 196
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p1, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 289
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
