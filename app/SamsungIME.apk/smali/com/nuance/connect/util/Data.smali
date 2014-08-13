.class public Lcom/nuance/connect/util/Data;
.super Ljava/lang/Object;
.source "Data.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serializeObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "objectToSerialize"    # Ljava/lang/Object;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 37
    :goto_0
    return-object v2

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 29
    .local v2, "serializedObj":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .local v0, "objOut":Ljava/io/ObjectOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 33
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static unserializeObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "serializedStr"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 49
    .local v3, "unserializedObj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 51
    .local v1, "in":Ljava/io/ObjectInputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 52
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 53
    :cond_0
    const/4 v4, 0x0

    .line 58
    if-eqz v1, :cond_1

    .line 59
    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    move-object v3, v4

    .line 72
    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "unserializedObj":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v3

    .line 55
    .restart local v0    # "data":[B
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "unserializedObj":Ljava/lang/Object;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 58
    if-eqz v2, :cond_2

    .line 59
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/OptionalDataException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 62
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 58
    .end local v0    # "data":[B
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_4

    .line 59
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_4
    throw v4
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/OptionalDataException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 62
    :catch_1
    move-exception v4

    goto :goto_0

    .line 70
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 67
    .end local v0    # "data":[B
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 66
    .end local v0    # "data":[B
    :catch_6
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 65
    .end local v0    # "data":[B
    :catch_8
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 64
    .end local v0    # "data":[B
    :catch_a
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 63
    .end local v0    # "data":[B
    :catch_c
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 58
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method
