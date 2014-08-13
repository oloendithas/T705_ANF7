.class public final Lcom/voovio/io/Output;
.super Ljava/lang/Object;
.source "Output.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WriteBooleanArray(Lcom/voovio/io/LittleEndianDataOutputStream;[Z)V
    .locals 3
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "aValues"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    array-length v1, p1

    .line 37
    .local v1, "nValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 39
    return-void

    .line 38
    :cond_0
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static WriteFloatArray(Lcom/voovio/io/LittleEndianDataOutputStream;[F)V
    .locals 3
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "aValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    array-length v1, p1

    .line 46
    .local v1, "nValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 48
    return-void

    .line 47
    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static WriteIntArray(Lcom/voovio/io/LittleEndianDataOutputStream;[I)V
    .locals 3
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "aValues"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    array-length v1, p1

    .line 28
    .local v1, "nValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 30
    return-void

    .line 29
    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static WritePoint(Lcom/voovio/io/LittleEndianDataOutputStream;Lcom/voovio/geometry/Point;)V
    .locals 1
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "oPoint"    # Lcom/voovio/geometry/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 79
    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 80
    return-void
.end method

.method public static WriteString(Lcom/voovio/io/LittleEndianDataOutputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "strString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 17
    .local v1, "nSize":I
    invoke-virtual {p0, v1}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    .line 19
    const-string v2, "latin1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 20
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->write([B)V

    .line 21
    return-void
.end method

.method public static WriteVector3(Lcom/voovio/io/LittleEndianDataOutputStream;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 1
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "oVector"    # Lcom/voovio/voo3d/data/Vector3;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 55
    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 56
    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 57
    return-void
.end method

.method public static WriteVector3Array(Lcom/voovio/io/LittleEndianDataOutputStream;[Lcom/voovio/voo3d/data/Vector3;)V
    .locals 4
    .param p0, "stream"    # Lcom/voovio/io/LittleEndianDataOutputStream;
    .param p1, "aValues"    # [Lcom/voovio/voo3d/data/Vector3;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    array-length v1, p1

    .line 65
    .local v1, "nValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 72
    return-void

    .line 67
    :cond_0
    aget-object v2, p1, v0

    .line 68
    .local v2, "oVector":Lcom/voovio/voo3d/data/Vector3;
    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-virtual {p0, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 69
    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual {p0, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 70
    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p0, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
