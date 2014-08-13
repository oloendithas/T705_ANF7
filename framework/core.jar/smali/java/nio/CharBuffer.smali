.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/Readable;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 142
    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .prologue
    .line 51
    if-gez p0, :cond_0

    .line 52
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

    .line 54
    :cond_0
    new-instance v0, Ljava/nio/CharArrayBuffer;

    new-array v1, p0, [C

    invoke-direct {v0, v1}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1
    .param p0, "chseq"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 131
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cs.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_1
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v0, "result":Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/Buffer;->position:I

    .line 136
    iput p2, v0, Ljava/nio/Buffer;->limit:I

    .line 137
    return-object v0
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "array"    # [C

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "charCount"    # I

    .prologue
    .line 90
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 91
    new-instance v0, Ljava/nio/CharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    .line 92
    .local v0, "buf":Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/Buffer;->position:I

    .line 93
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 94
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 679
    if-eqz p1, :cond_0

    .line 680
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    const-string p1, "null"

    .line 709
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 710
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 711
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 713
    .end local p0    # "this":Ljava/nio/CharBuffer;
    :cond_1
    return-object p0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public final array()[C
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArray()[C

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 181
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remaining()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/CharBuffer;

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 215
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/Buffer;->position:I

    .line 216
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/Buffer;->position:I

    .line 218
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    .line 219
    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    .line 220
    .local v3, "thisByte":C
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    .line 221
    .local v1, "otherByte":C
    if-eq v3, v1, :cond_2

    .line 222
    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    .line 228
    .end local v1    # "otherByte":C
    .end local v3    # "thisByte":C
    :goto_2
    return v5

    .line 213
    .end local v0    # "compareRemaining":I
    .end local v2    # "otherPos":I
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 222
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherByte":C
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":C
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 224
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 226
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 228
    .end local v1    # "otherByte":C
    .end local v3    # "thisByte":C
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 258
    instance-of v7, p1, Ljava/nio/CharBuffer;

    if-nez v7, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 261
    check-cast v3, Ljava/nio/CharBuffer;

    .line 263
    .local v3, "otherBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 267
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 268
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/Buffer;->position:I

    .line 269
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    .local v0, "equalSoFar":Z
    move v5, v4

    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    .line 270
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Ljava/nio/Buffer;->limit:I

    if-ge v2, v7, :cond_3

    .line 271
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->get(I)C

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

    .line 274
    goto :goto_0
.end method

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C

    .prologue
    .line 300
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 323
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 324
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 325
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 327
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 328
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    aput-char v1, p1, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 356
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 357
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 358
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-ge v1, v3, :cond_0

    .line 359
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    .line 361
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[C
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 575
    :cond_0
    if-ltz p2, :cond_1

    if-lt p3, p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_2

    .line 576
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_2
    sub-int v1, p3, p2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 580
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 582
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_4
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/CharBuffer;

    .prologue
    .line 500
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 503
    :cond_0
    if-ne p1, p0, :cond_1

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src == this"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 507
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 510
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v0, v1, [C

    .line 511
    .local v0, "contents":[C
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 512
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 513
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C

    .prologue
    .line 448
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 473
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 474
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 475
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 477
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 478
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 4
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 734
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 735
    .local v1, "remaining":I
    if-ne p1, p0, :cond_2

    .line 736
    if-nez v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v2

    .line 739
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target == this"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    :cond_2
    if-nez v1, :cond_3

    .line 742
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 744
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    if-lez v1, :cond_4

    .line 746
    new-array v0, v1, [C

    .line 747
    .local v0, "chars":[C
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 748
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .end local v0    # "chars":[C
    :cond_4
    move v2, v1

    .line 750
    goto :goto_0
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract subSequence(II)Ljava/nio/CharBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 639
    .local v1, "result":Ljava/lang/StringBuilder;
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v2, :cond_0

    .line 640
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
