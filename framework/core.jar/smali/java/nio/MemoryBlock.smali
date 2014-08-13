.class Ljava/nio/MemoryBlock;
.super Ljava/lang/Object;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/MemoryBlock$1;,
        Ljava/nio/MemoryBlock$UnmanagedBlock;,
        Ljava/nio/MemoryBlock$NonMovableHeapBlock;,
        Ljava/nio/MemoryBlock$MemoryMappedBlock;
    }
.end annotation


# instance fields
.field protected address:J

.field protected final size:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0
    .param p1, "address"    # J
    .param p3, "size"    # J

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-wide p1, p0, Ljava/nio/MemoryBlock;->address:J

    .line 136
    iput-wide p3, p0, Ljava/nio/MemoryBlock;->size:J

    .line 137
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock;-><init>(JJ)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/MemoryBlock;
    .locals 8
    .param p0, "byteCount"    # I

    .prologue
    .line 124
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 125
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v0, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    .line 126
    .local v1, "array":[B
    invoke-virtual {v7, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    .line 127
    .local v2, "address":J
    new-instance v0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;

    int-to-long v4, p0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BJJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method

.method public static mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;
    .locals 16
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "size"    # J
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 97
    new-instance v9, Ljava/nio/MemoryBlock;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v9, v2, v3, v4, v5}, Ljava/nio/MemoryBlock;-><init>(JJ)V

    .line 117
    :goto_0
    return-object v9

    .line 100
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_2
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_3

    .line 106
    sget v2, Llibcore/io/OsConstants;->PROT_READ:I

    sget v3, Llibcore/io/OsConstants;->PROT_WRITE:I

    or-int v7, v2, v3

    .line 107
    .local v7, "prot":I
    sget v8, Llibcore/io/OsConstants;->MAP_PRIVATE:I

    .line 116
    .local v8, "flags":I
    :goto_1
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p3

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-interface/range {v2 .. v11}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10

    .line 117
    .local v10, "address":J
    new-instance v9, Ljava/nio/MemoryBlock$MemoryMappedBlock;

    const/4 v14, 0x0

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v10    # "address":J
    :catch_0
    move-exception v15

    .line 119
    .local v15, "errnoException":Llibcore/io/ErrnoException;
    invoke-virtual {v15}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 108
    .end local v7    # "prot":I
    .end local v8    # "flags":I
    .end local v15    # "errnoException":Llibcore/io/ErrnoException;
    :cond_3
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_4

    .line 109
    sget v7, Llibcore/io/OsConstants;->PROT_READ:I

    .line 110
    .restart local v7    # "prot":I
    sget v8, Llibcore/io/OsConstants;->MAP_SHARED:I

    .restart local v8    # "flags":I
    goto :goto_1

    .line 112
    .end local v7    # "prot":I
    .end local v8    # "flags":I
    :cond_4
    sget v2, Llibcore/io/OsConstants;->PROT_READ:I

    sget v3, Llibcore/io/OsConstants;->PROT_WRITE:I

    or-int v7, v2, v3

    .line 113
    .restart local v7    # "prot":I
    sget v8, Llibcore/io/OsConstants;->MAP_SHARED:I

    .restart local v8    # "flags":I
    goto :goto_1
.end method

.method public static wrapFromJni(JJ)Ljava/nio/MemoryBlock;
    .locals 6
    .param p0, "address"    # J
    .param p2, "byteCount"    # J

    .prologue
    .line 131
    new-instance v0, Ljava/nio/MemoryBlock$UnmanagedBlock;

    const/4 v5, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public free()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->size:J

    return-wide v0
.end method

.method public final peekByte(I)B
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method public final peekByteArray(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 184
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 185
    return-void
.end method

.method public final peekCharArray(I[CIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 188
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 189
    return-void
.end method

.method public final peekDoubleArray(I[DIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 192
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 193
    return-void
.end method

.method public final peekFloatArray(I[FIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 196
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 197
    return-void
.end method

.method public final peekInt(ILjava/nio/ByteOrder;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 224
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method public final peekIntArray(I[IIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 200
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 201
    return-void
.end method

.method public final peekLong(ILjava/nio/ByteOrder;)J
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 232
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final peekLongArray(I[JIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 204
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 205
    return-void
.end method

.method public final peekShort(ILjava/nio/ByteOrder;)S
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 216
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0
.end method

.method public final peekShortArray(I[SIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 208
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 209
    return-void
.end method

.method public final pokeByte(IB)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # B

    .prologue
    .line 148
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 149
    return-void
.end method

.method public final pokeByteArray(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "src"    # [B
    .param p3, "srcOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 152
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 153
    return-void
.end method

.method public final pokeCharArray(I[CIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 156
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 157
    return-void
.end method

.method public final pokeDoubleArray(I[DIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 160
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 161
    return-void
.end method

.method public final pokeFloatArray(I[FIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 164
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 165
    return-void
.end method

.method public final pokeInt(IILjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 220
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 221
    return-void
.end method

.method public final pokeIntArray(I[IIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 168
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 169
    return-void
.end method

.method public final pokeLong(IJLjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 228
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p4, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 229
    return-void
.end method

.method public final pokeLongArray(I[JIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 172
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 173
    return-void
.end method

.method public final pokeShort(ISLjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 212
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 213
    return-void
.end method

.method public final pokeShortArray(I[SIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 176
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 177
    return-void
.end method

.method public final toLong()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/nio/MemoryBlock;->address:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
