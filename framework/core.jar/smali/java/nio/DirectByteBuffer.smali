.class Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"


# instance fields
.field private final isReadOnly:Z

.field protected final offset:I


# direct methods
.method constructor <init>(JI)V
    .locals 6
    .param p1, "address"    # J
    .param p3, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(JJ)Ljava/nio/MemoryBlock;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V
    .locals 6
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "offset"    # I
    .param p4, "isReadOnly"    # Z
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p5}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/MemoryBlock;ILjava/nio/channels/FileChannel$MapMode;)V

    .line 35
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v0

    .line 36
    .local v0, "baseSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    add-int v2, p2, p3

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "capacity + offset > baseSize"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/nio/Buffer;->effectiveDirectAddress:J

    .line 42
    iput p3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 43
    iput-boolean p4, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 44
    return-void
.end method

.method private static copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;
    .locals 6
    .param p0, "other"    # Ljava/nio/DirectByteBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 52
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget-object v5, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    .line 53
    .local v0, "buf":Ljava/nio/DirectByteBuffer;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 54
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    .line 55
    iput p1, v0, Ljava/nio/Buffer;->mark:I

    .line 56
    return-object v0
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 260
    invoke-static {p0}, Ljava/nio/ByteBufferAsCharBuffer;->asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 268
    invoke-static {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 272
    invoke-static {p0}, Ljava/nio/ByteBufferAsIntBuffer;->asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .prologue
    .line 276
    invoke-static {p0}, Ljava/nio/ByteBufferAsLongBuffer;->asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 280
    invoke-static {p0}, Ljava/nio/ByteBufferAsShortBuffer;->asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 64
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    iget v3, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 68
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 69
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 71
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final free()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->free()V

    .line 257
    return-void
.end method

.method public final get()B
    .locals 4

    .prologue
    .line 150
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)V

    .line 158
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 107
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    .line 108
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->peekByteArray(I[BII)V

    .line 109
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 110
    return-object p0
.end method

.method final get([CII)V
    .locals 7
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 114
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v6

    .line 115
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekCharArray(I[CIIZ)V

    .line 116
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 117
    return-void
.end method

.method final get([DII)V
    .locals 7
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 120
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v6

    .line 121
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekDoubleArray(I[DIIZ)V

    .line 122
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 123
    return-void
.end method

.method final get([FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 126
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v6

    .line 127
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekFloatArray(I[FIIZ)V

    .line 128
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 129
    return-void
.end method

.method final get([III)V
    .locals 7
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 132
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v6

    .line 133
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekIntArray(I[IIIZ)V

    .line 134
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 135
    return-void
.end method

.method final get([JII)V
    .locals 7
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 138
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v6

    .line 139
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekLongArray(I[JIIZ)V

    .line 140
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 141
    return-void
.end method

.method final get([SII)V
    .locals 7
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 144
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v6

    .line 145
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekShortArray(I[SIIZ)V

    .line 146
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 147
    return-void
.end method

.method public final getChar()C
    .locals 5

    .prologue
    .line 162
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 163
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 164
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 166
    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    .line 167
    .local v1, "result":C
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 168
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 172
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 173
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 6

    .prologue
    .line 177
    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 178
    .local v0, "newPosition":I
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v3, :cond_0

    .line 179
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 181
    :cond_0
    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 182
    .local v1, "result":D
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 183
    return-wide v1
.end method

.method public final getDouble(I)D
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 187
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 188
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 5

    .prologue
    .line 192
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 193
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 194
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 196
    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 197
    .local v1, "result":F
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 198
    return v1
.end method

.method public final getFloat(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 202
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 203
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 5

    .prologue
    .line 207
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 208
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 209
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 211
    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v1

    .line 212
    .local v1, "result":I
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 213
    return v1
.end method

.method public final getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 217
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 218
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 6

    .prologue
    .line 222
    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 223
    .local v0, "newPosition":I
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v3, :cond_0

    .line 224
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 226
    :cond_0
    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v1

    .line 227
    .local v1, "result":J
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 228
    return-wide v1
.end method

.method public final getLong(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 232
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 233
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    .prologue
    .line 237
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 238
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 239
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 241
    :cond_0
    iget-object v2, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v1

    .line 242
    .local v1, "result":S
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 243
    return v1
.end method

.method public final getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 247
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 248
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method protectedArray()[B
    .locals 2

    .prologue
    .line 87
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 90
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->array()[B

    move-result-object v0

    .line 91
    .local v0, "array":[B
    if-nez v0, :cond_1

    .line 92
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 94
    :cond_1
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    .line 99
    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->array()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 284
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 287
    :cond_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_1

    .line 288
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 290
    :cond_1
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 291
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 295
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)V

    .line 299
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 300
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 304
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    .line 308
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    .line 309
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 310
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 314
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 315
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    .line 316
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 317
    return-void
.end method

.method final put([DII)V
    .locals 7
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 320
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 321
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    .line 322
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 323
    return-void
.end method

.method final put([FII)V
    .locals 7
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 326
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 327
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    .line 328
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 329
    return-void
.end method

.method final put([III)V
    .locals 7
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 332
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 333
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    .line 334
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 335
    return-void
.end method

.method final put([JII)V
    .locals 7
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 338
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 339
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    .line 340
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 341
    return-void
.end method

.method final put([SII)V
    .locals 7
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 344
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 345
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    .line 346
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 347
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # C

    .prologue
    .line 350
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 351
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 353
    :cond_0
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 354
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_1

    .line 355
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 357
    :cond_1
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 358
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 359
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 363
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 366
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 367
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 368
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "value"    # D

    .prologue
    .line 372
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 373
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 375
    :cond_0
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 376
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_1

    .line 377
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 379
    :cond_1
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 380
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 381
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 385
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 388
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 389
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 390
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 394
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 397
    :cond_0
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 398
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_1

    .line 399
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 401
    :cond_1
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 402
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 403
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 407
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 410
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 411
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 412
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 416
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 419
    :cond_0
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 420
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_1

    .line 421
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 423
    :cond_1
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 424
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 425
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 429
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 432
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 433
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 434
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 451
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 454
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 455
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 456
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # J

    .prologue
    .line 438
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 439
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 441
    :cond_0
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 442
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_1

    .line 443
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 445
    :cond_1
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 446
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 447
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 473
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 476
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 477
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 478
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 460
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 461
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 463
    :cond_0
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 464
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_1

    .line 465
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 467
    :cond_1
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 468
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 469
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 79
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    iget-object v5, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    return-object v0
.end method
