.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# static fields
.field private static final LEAP:[I

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private final mDstSavings:I

.field private final mEarliestRawOffset:I

.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[I

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;[I[B[I[B)V
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitions"    # [I
    .param p3, "types"    # [B
    .param p4, "gmtOffsets"    # [I
    .param p5, "isDsts"    # [B

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    .line 96
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTransitions:[I

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTypes:[B

    .line 98
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mIsDsts:[B

    .line 99
    invoke-virtual/range {p0 .. p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 102
    const/4 v10, 0x0

    .line 103
    .local v10, "lastStd":I
    const/4 v7, 0x0

    .line 104
    .local v7, "haveStd":Z
    const/4 v9, 0x0

    .line 105
    .local v9, "lastDst":I
    const/4 v6, 0x0

    .line 106
    .local v6, "haveDst":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v15, v15

    add-int/lit8 v8, v15, -0x1

    .local v8, "i":I
    :goto_0
    if-eqz v7, :cond_0

    if-nez v6, :cond_3

    :cond_0
    if-ltz v8, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v8

    and-int/lit16 v13, v15, 0xff

    .line 108
    .local v13, "type":I
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v15, v15, v13

    if-nez v15, :cond_1

    .line 109
    const/4 v7, 0x1

    .line 110
    move v10, v8

    .line 112
    :cond_1
    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v15, v15, v13

    if-eqz v15, :cond_2

    .line 113
    const/4 v6, 0x1

    .line 114
    move v9, v8

    .line 106
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 119
    .end local v13    # "type":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v15, v15

    if-lt v10, v15, :cond_5

    .line 120
    const/4 v15, 0x0

    aget v15, p4, v15

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 127
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v15, v15

    if-lt v9, v15, :cond_6

    .line 128
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    .line 135
    :goto_2
    const/4 v5, -0x1

    .line 136
    .local v5, "firstStd":I
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v15, v15

    if-ge v8, v15, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    if-nez v15, :cond_7

    .line 138
    move v5, v8

    .line 142
    :cond_4
    const/4 v15, -0x1

    if-eq v5, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v5

    and-int/lit16 v15, v15, 0xff

    aget v4, p4, v15

    .line 146
    .local v4, "earliestRawOffset":I
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mOffsets:[I

    .line 147
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    array-length v15, v15

    if-ge v8, v15, :cond_9

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v16, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    aput v16, v15, v8

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 122
    .end local v4    # "earliestRawOffset":I
    .end local v5    # "firstStd":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v10

    and-int/lit16 v15, v15, 0xff

    aget v15, p4, v15

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_1

    .line 130
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v10

    and-int/lit16 v15, v15, 0xff

    aget v15, p4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v9

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v16, p4, v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    mul-int/lit16 v15, v15, 0x3e8

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    goto/16 :goto_2

    .line 136
    .restart local v5    # "firstStd":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 142
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_4

    .line 159
    .restart local v4    # "earliestRawOffset":I
    :cond_9
    const/4 v14, 0x0

    .line 160
    .local v14, "usesDst":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v2, v15, v17

    .line 161
    .local v2, "currentUnixTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v15, v15

    if-lez v15, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    int-to-long v15, v15

    const-wide/16 v17, -0x1

    and-long v11, v15, v17

    .line 164
    .local v11, "latestScheduleTime":J
    cmp-long v15, v2, v11

    if-gez v15, :cond_a

    .line 165
    const/4 v14, 0x1

    .line 168
    .end local v11    # "latestScheduleTime":J
    :cond_a
    move-object/from16 v0, p0

    iput-boolean v14, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    .line 171
    move-object/from16 v0, p0

    iget v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v15, v15, 0x3e8

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 172
    mul-int/lit16 v15, v4, 0x3e8

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    .line 173
    return-void
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Ljava/util/TimeZone;
    .locals 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Llibcore/io/BufferIterator;

    .prologue
    const/4 v9, 0x0

    .line 58
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    const v1, 0x545a6966

    if-eq v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 66
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    .line 67
    .local v7, "tzh_timecnt":I
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v8

    .line 69
    .local v8, "tzh_typecnt":I
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 71
    new-array v2, v7, [I

    .line 72
    .local v2, "transitions":[I
    array-length v0, v2

    invoke-virtual {p1, v2, v9, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    .line 74
    new-array v3, v7, [B

    .line 75
    .local v3, "type":[B
    array-length v0, v3

    invoke-virtual {p1, v3, v9, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 77
    new-array v4, v8, [I

    .line 78
    .local v4, "gmtOffsets":[I
    new-array v5, v8, [B

    .line 79
    .local v5, "isDsts":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 80
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    aput v0, v4, v6

    .line 81
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readByte()B

    move-result v0

    aput-byte v0, v5, v6

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 92
    :cond_1
    new-instance v0, Llibcore/util/ZoneInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llibcore/util/ZoneInfo;-><init>(Ljava/lang/String;[I[B[I[B)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 273
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    if-nez v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 276
    check-cast v0, Llibcore/util/ZoneInfo;

    .line 277
    .local v0, "other":Llibcore/util/ZoneInfo;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .prologue
    .line 181
    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    .line 182
    .local v0, "calc":J
    rem-int/lit16 p2, p2, 0x190

    .line 184
    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 185
    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 187
    if-lez p2, :cond_0

    .line 188
    add-int/lit8 v4, p2, -0x1

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_2

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 192
    .local v2, "isLeap":Z
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    .line 194
    .local v3, "mlen":[I
    :goto_1
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 195
    add-int/lit8 v4, p4, -0x1

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 196
    int-to-long v4, p6

    add-long/2addr v0, v4

    .line 198
    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 199
    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    .line 201
    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    .line 191
    .end local v2    # "isLeap":Z
    .end local v3    # "mlen":[I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 192
    .restart local v2    # "isLeap":Z
    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 5
    .param p1, "when"    # J

    .prologue
    .line 206
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 207
    .local v1, "unix":I
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 208
    .local v0, "transition":I
    if-gez v0, :cond_0

    .line 209
    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 210
    if-gez v0, :cond_0

    .line 214
    iget v2, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    .line 217
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    instance-of v3, p1, Llibcore/util/ZoneInfo;

    if-nez v3, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 257
    check-cast v0, Llibcore/util/ZoneInfo;

    .line 258
    .local v0, "other":Llibcore/util/ZoneInfo;
    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget-boolean v4, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-ne v3, v4, :cond_0

    .line 261
    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v3, :cond_3

    .line 262
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 264
    :cond_3
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 282
    const/16 v0, 0x1f

    .line 283
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 284
    .local v1, "result":I
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 285
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 286
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 287
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    .line 288
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 289
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 290
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int v1, v3, v2

    .line 291
    return v1

    .line 290
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 8
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 221
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 222
    .local v2, "when":J
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    long-to-int v1, v6

    .line 223
    .local v1, "unix":I
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v6, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 224
    .local v0, "transition":I
    if-gez v0, :cond_0

    .line 225
    xor-int/lit8 v6, v0, -0x1

    add-int/lit8 v0, v6, -0x1

    .line 226
    if-gez v0, :cond_0

    .line 234
    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v7, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    if-ne v6, v4, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "off"    # I

    .prologue
    .line 242
    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEarliestRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mUseDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",transitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
