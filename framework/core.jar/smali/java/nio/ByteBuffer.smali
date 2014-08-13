.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Ljava/nio/ByteOrder;


# direct methods
.method constructor <init>(ILjava/nio/MemoryBlock;)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "block"    # Ljava/nio/MemoryBlock;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 41
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 117
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .prologue
    .line 53
    if-gez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    new-array v1, p0, [B

    invoke-direct {v0, v1}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 69
    if-gez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    invoke-static {p0}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    move-result-object v1

    const/4 v5, 0x0

    move v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 86
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 108
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 109
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    .line 110
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iput p1, v0, Ljava/nio/Buffer;->position:I

    .line 111
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 112
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final array()[B
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 283
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/Buffer;->position:I

    .line 284
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/Buffer;->position:I

    .line 286
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    .line 287
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 288
    .local v3, "thisByte":B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 289
    .local v1, "otherByte":B
    if-eq v3, v1, :cond_2

    .line 290
    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    .line 296
    .end local v1    # "otherByte":B
    .end local v3    # "thisByte":B
    :goto_2
    return v5

    .line 281
    .end local v0    # "compareRemaining":I
    .end local v2    # "otherPos":I
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 290
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherByte":B
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":B
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 292
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 293
    add-int/lit8 v2, v2, 0x1

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 296
    .end local v1    # "otherByte":B
    .end local v3    # "thisByte":B
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 330
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 333
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 335
    .local v3, "otherBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 339
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 340
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/Buffer;->position:I

    .line 341
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    .local v0, "equalSoFar":Z
    move v5, v4

    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    .line 342
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Ljava/nio/Buffer;->limit:I

    if-ge v2, v7, :cond_3

    .line 343
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v5, v4

    .end local v4    # "otherPosition":I
    .restart local v5    # "otherPosition":I
    move v2, v1

    .end local v1    # "myPosition":I
    .restart local v2    # "myPosition":I
    goto :goto_1

    .end local v2    # "myPosition":I
    .end local v5    # "otherPosition":I
    .restart local v1    # "myPosition":I
    .restart local v4    # "otherPosition":I
    :cond_2
    move v0, v6

    goto :goto_2

    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    move v6, v0

    .line 346
    goto :goto_0
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B

    .prologue
    .line 372
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 393
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 394
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 395
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 397
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 398
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, p1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 596
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 597
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 598
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-ge v1, v3, :cond_0

    .line 599
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    .line 601
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 638
    :cond_0
    iput-object p1, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 639
    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 745
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v4

    .line 748
    :cond_0
    if-ne p1, p0, :cond_1

    .line 749
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "src == this"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 751
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    .line 752
    .local v7, "srcByteCount":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-le v7, v4, :cond_2

    .line 753
    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    .line 756
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, p1

    .line 757
    .local v2, "srcObject":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 758
    .local v3, "srcOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_3

    .line 759
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    .line 762
    :cond_3
    move-object v6, p0

    .line 763
    .local v6, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v0, v6

    .line 764
    .local v0, "dstObject":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 765
    .local v1, "dstOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_4

    .line 766
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 769
    :cond_4
    int-to-long v4, v7

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 770
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 771
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 773
    return-object p0

    .line 756
    .end local v0    # "dstObject":Ljava/lang/Object;
    .end local v1    # "dstOffset":I
    .end local v2    # "srcObject":Ljava/lang/Object;
    .end local v3    # "srcOffset":I
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_5
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    goto :goto_0

    .line 763
    .restart local v2    # "srcObject":Ljava/lang/Object;
    .restart local v3    # "srcOffset":I
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_6
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_1
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B

    .prologue
    .line 693
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 718
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 719
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 720
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 722
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 723
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_1
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method
