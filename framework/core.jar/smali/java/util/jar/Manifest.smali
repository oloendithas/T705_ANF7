.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$Chunk;
    }
.end annotation


# static fields
.field private static final BAIS_BUF:Ljava/lang/reflect/Field;

.field private static final BAIS_POS:Ljava/lang/reflect/Field;

.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    .line 46
    const-string v0, "buf"

    invoke-static {v0}, Ljava/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljava/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    .line 47
    const-string v0, "pos"

    invoke-static {v0}, Ljava/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljava/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    return-void

    .line 42
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 44
    nop

    :array_1
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 97
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "readChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 1
    .param p1, "man"    # Ljava/util/jar/Manifest;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 109
    iget-object v0, p1, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 110
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 112
    return-void
.end method

.method private static exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B
    .locals 8
    .param p0, "bais"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 225
    monitor-enter p0

    .line 229
    :try_start_0
    sget-object v6, Ljava/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 230
    .local v2, "buf":[B
    sget-object v6, Ljava/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 234
    .local v5, "pos":I
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 235
    .local v1, "available":I
    if-nez v5, :cond_0

    array-length v6, v2

    if-ne v6, v1, :cond_0

    .line 236
    move-object v3, v2

    .line 241
    .local v3, "buffer":[B
    :goto_0
    int-to-long v6, v1

    invoke-virtual {p0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 242
    monitor-exit p0

    .line 243
    return-object v3

    .line 231
    .end local v1    # "available":I
    .end local v2    # "buf":[B
    .end local v3    # "buffer":[B
    .end local v5    # "pos":I
    :catch_0
    move-exception v4

    .line 232
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 242
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 238
    .restart local v1    # "available":I
    .restart local v2    # "buf":[B
    .restart local v5    # "pos":I
    :cond_0
    :try_start_2
    new-array v3, v1, [B

    .line 239
    .restart local v3    # "buffer":[B
    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    const-class v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object v1

    .line 54
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "manifest"    # Ljava/util/jar/Manifest;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 304
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/16 v9, 0x48

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 306
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 307
    .local v8, "versionName":Ljava/util/jar/Attributes$Name;
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 309
    sget-object v8, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 310
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 312
    :cond_0
    if-eqz v7, :cond_2

    .line 313
    invoke-static {p1, v8, v7, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 314
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 315
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 317
    .local v6, "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 318
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v6, v9, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 322
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_2
    sget-object v9, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 323
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 324
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 325
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 326
    .local v5, "key":Ljava/lang/String;
    sget-object v9, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v9, v5, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 327
    iget-object v9, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 328
    .local v0, "attributes":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 329
    .restart local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 331
    .restart local v6    # "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v6, v9, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 333
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_3
    sget-object v9, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 335
    .end local v0    # "attributes":Ljava/util/jar/Attributes;
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p4, "bBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "nameString":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 341
    sget-object v3, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 343
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 344
    invoke-virtual {p4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x48

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 346
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 349
    .local v0, "cBuf":Ljava/nio/CharBuffer;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 350
    .local v2, "r":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_0

    .line 351
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 353
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 354
    sget-object v3, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 355
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_1

    .line 361
    return-void

    .line 358
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 359
    invoke-virtual {p4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 128
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 267
    if-nez p1, :cond_0

    move v0, v1

    .line 276
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 270
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    iget-object v2, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    iget-object v0, v0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 274
    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast p1, Ljava/util/jar/Manifest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Manifest$Chunk;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesEnd()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Ljava/util/jar/Manifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v3, :cond_0

    .line 197
    check-cast p1, Ljava/io/ByteArrayInputStream;

    .end local p1    # "is":Ljava/io/InputStream;
    invoke-static {p1}, Ljava/util/jar/Manifest;->exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B

    move-result-object v1

    .line 202
    .local v1, "buf":[B
    :goto_0
    array-length v3, v1

    if-nez v3, :cond_1

    .line 217
    :goto_1
    return-void

    .line 199
    .end local v1    # "buf":[B
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v1

    .restart local v1    # "buf":[B
    goto :goto_0

    .line 209
    .end local p1    # "is":Ljava/io/InputStream;
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v1, v3

    .line 210
    .local v0, "b":B
    if-eqz v0, :cond_2

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_3

    .line 211
    :cond_2
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v3

    .line 214
    :cond_3
    new-instance v2, Ljava/util/jar/ManifestReader;

    iget-object v3, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-direct {v2, v1, v3}, Ljava/util/jar/ManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 215
    .local v2, "im":Ljava/util/jar/ManifestReader;
    invoke-virtual {v2}, Ljava/util/jar/ManifestReader;->getEndOfMainSection()I

    move-result v3

    iput v3, p0, Ljava/util/jar/Manifest;->mainEnd:I

    .line 216
    iget-object v3, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    iget-object v4, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/ManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1
.end method

.method removeChunks()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 285
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1}, Ljava/util/jar/Manifest;->write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 184
    return-void
.end method
