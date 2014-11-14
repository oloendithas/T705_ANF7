.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 33
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 188
    if-eqz p1, :cond_15

    .line 189
    array-length v0, p1

    .line 190
    .local v0, "end":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 191
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :goto_12
    aput-object p2, v1, v0

    .line 197
    return-object v1

    .line 193
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_15
    const/4 v0, 0x0

    .line 194
    .restart local v0    # "end":I
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    goto :goto_12
.end method

.method public static appendInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 230
    if-nez p0, :cond_9

    .line 231
    const/4 v3, 0x1

    new-array p0, v3, [I

    .end local p0    # "cur":[I
    aput p1, p0, v4

    .line 242
    :cond_8
    :goto_8
    return-object p0

    .line 233
    .restart local p0    # "cur":[I
    :cond_9
    array-length v0, p0

    .line 234
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_14

    .line 235
    aget v3, p0, v1

    if-eq v3, p1, :cond_8

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 239
    :cond_14
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 240
    .local v2, "ret":[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    aput p1, v2, v0

    move-object p0, v2

    .line 242
    goto :goto_8
.end method

.method public static contains([II)Z
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_e

    aget v1, v0, v2

    .line 162
    .local v1, "element":I
    if-ne v1, p1, :cond_b

    .line 163
    const/4 v4, 0x1

    .line 166
    .end local v1    # "element":I
    :goto_a
    return v4

    .line 161
    .restart local v1    # "element":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 166
    .end local v1    # "element":I
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 153
    .local v1, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 154
    const/4 v4, 0x0

    .line 157
    .end local v1    # "checkItem":Ljava/lang/Object;, "TT;"
    :goto_e
    return v4

    .line 152
    .restart local v1    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 157
    .end local v1    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    const/4 v4, 0x1

    goto :goto_e
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_9

    .line 107
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 120
    :goto_8
    return-object v2

    .line 110
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 111
    .local v0, "bucket":I
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 113
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2e

    .line 114
    :cond_25
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 120
    :cond_2e
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "cache":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    move-object v2, v1

    goto :goto_8
.end method

.method public static equals([B[BI)Z
    .registers 8
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-gez p2, :cond_a

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 86
    :cond_a
    if-ne p0, p1, :cond_d

    .line 97
    :cond_c
    :goto_c
    return v1

    .line 89
    :cond_d
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    array-length v3, p0

    if-lt v3, p2, :cond_17

    array-length v3, p1

    if-ge v3, p2, :cond_19

    :cond_17
    move v1, v2

    .line 90
    goto :goto_c

    .line 92
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, p2, :cond_c

    .line 93
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_24

    move v1, v2

    .line 94
    goto :goto_c

    .line 92
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static idealBooleanArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .registers 4
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 38
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 39
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 40
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 42
    .end local p0    # "need":I
    :cond_10
    return p0

    .line 38
    .restart local p0    # "need":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealCharArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 54
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 62
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 58
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 70
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 66
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 50
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 139
    aget-object v1, p0, v0

    if-nez v1, :cond_b

    .line 140
    if-nez p1, :cond_15

    .line 145
    .end local v0    # "i":I
    :cond_a
    :goto_a
    return v0

    .line 142
    .restart local v0    # "i":I
    :cond_b
    if-eqz p1, :cond_15

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 138
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_18
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 212
    if-eqz p1, :cond_2b

    .line 213
    array-length v1, p1

    .line 214
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_2b

    .line 215
    aget-object v3, p1, v0

    if-ne v3, p2, :cond_28

    .line 216
    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    .line 217
    const/4 v2, 0x0

    .line 226
    .end local v0    # "i":I
    .end local v1    # "length":I
    :goto_f
    return-object v2

    .line 219
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_10
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 220
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    .line 214
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_2b
    move-object v2, p1

    .line 226
    goto :goto_f
.end method

.method public static removeInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 246
    if-nez p0, :cond_5

    .line 247
    const/4 v2, 0x0

    .line 262
    :cond_4
    :goto_4
    return-object v2

    .line 249
    :cond_5
    array-length v0, p0

    .line 250
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 251
    aget v3, p0, v1

    if-ne v3, p1, :cond_24

    .line 252
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .line 253
    .local v2, "ret":[I
    if-lez v1, :cond_16

    .line 254
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    .line 257
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 250
    .end local v2    # "ret":[I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_27
    move-object v2, p0

    .line 262
    goto :goto_4
.end method

.method public static total([J)J
    .registers 8
    .param p0, "array"    # [J

    .prologue
    .line 170
    const-wide/16 v3, 0x0

    .line 171
    .local v3, "total":J
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_d

    aget-wide v5, v0, v1

    .line 172
    .local v5, "value":J
    add-long/2addr v3, v5

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 174
    .end local v5    # "value":J
    :cond_d
    return-wide v3
.end method
