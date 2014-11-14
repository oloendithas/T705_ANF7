.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mInfos:[J

.field mbuffer:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 116
    :goto_4
    array-length v2, p1

    if-ge p2, v2, :cond_3a

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3a

    .line 117
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_37

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_37

    .line 118
    move v0, p2

    .line 119
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 121
    :goto_18
    array-length v2, p1

    if-ge p2, v2, :cond_26

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_26

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_26

    .line 122
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 124
    :cond_26
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 125
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 129
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_36
    return-wide v2

    .line 127
    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 129
    :cond_3a
    const-wide/16 v2, 0x0

    goto :goto_36
.end method

.method private findKeyword([BIILjava/lang/String;)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "bound"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    .local v0, "N":I
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 105
    .local v1, "cFirst":C
    move v2, p2

    .local v2, "i":I
    :goto_a
    if-ge v2, p3, :cond_1c

    .line 106
    aget-byte v3, p1, v2

    if-ne v3, v1, :cond_19

    .line 107
    invoke-direct {p0, p1, v2, p4}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 108
    add-int v3, v2, v0

    .line 112
    :goto_18
    return v3

    .line 105
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 112
    :cond_1c
    const/4 v3, -0x1

    goto :goto_18
.end method

.method private matchText([BILjava/lang/String;)Z
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 91
    .local v0, "N":I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_b

    .line 99
    :cond_a
    :goto_a
    return v2

    .line 94
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1b

    .line 95
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_a

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 99
    :cond_1b
    const/4 v2, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getBuffersSizeKb()J
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCachedSize()J
    .registers 5

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getShmemSizeKb()J
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSlabSizeKb()J
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapFreeSizeKb()J
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getUssByPid(I)J
    .registers 18
    .param p1, "pid"    # I

    .prologue
    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .local v4, "resident":J
    const-wide/16 v7, 0x0

    .line 136
    .local v7, "shared":J
    const-wide/16 v11, 0x0

    .line 138
    .local v11, "uss":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/proc/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/statm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 141
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 143
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_26
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_71
    .catchall {:try_start_26 .. :try_end_2b} :catchall_67

    .line 144
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    const/4 v14, 0x0

    const/16 v15, 0x200

    invoke-virtual {v2, v13, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    .line 145
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 147
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    invoke-direct {v9, v13}, Ljava/lang/String;-><init>([B)V

    .line 148
    .local v9, "str":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, "subs":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit16 v13, v13, 0x1000

    int-to-long v4, v13

    .line 151
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_57} :catch_84
    .catchall {:try_start_2b .. :try_end_57} :catchall_81

    move-result v13

    mul-int/lit16 v13, v13, 0x1000

    int-to-long v7, v13

    .line 152
    sub-long v11, v4, v7

    .line 156
    if-eqz v2, :cond_62

    .line 158
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_7f

    .line 162
    :cond_62
    :goto_62
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 165
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "subs":[Ljava/lang/String;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_66
    return-wide v11

    .line 156
    :catchall_67
    move-exception v13

    :goto_68
    if-eqz v1, :cond_6d

    .line 158
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_7d

    .line 162
    :cond_6d
    :goto_6d
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 156
    throw v13

    .line 154
    :catch_71
    move-exception v13

    .line 156
    :goto_72
    if-eqz v1, :cond_77

    .line 158
    :try_start_74
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_7b

    .line 162
    :cond_77
    :goto_77
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_66

    .line 159
    :catch_7b
    move-exception v13

    goto :goto_77

    :catch_7d
    move-exception v14

    goto :goto_6d

    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "str":Ljava/lang/String;
    .restart local v10    # "subs":[Ljava/lang/String;
    :catch_7f
    move-exception v13

    goto :goto_62

    .line 156
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "subs":[Ljava/lang/String;
    :catchall_81
    move-exception v13

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_68

    .line 154
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_84
    move-exception v13

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_72
.end method

.method public getWatermark()J
    .registers 12

    .prologue
    const-wide/16 v9, 0x4

    .line 170
    const-wide/16 v5, 0x0

    .line 174
    .local v5, "watermark":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 175
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 177
    .local v2, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_b
    new-array v0, v7, [B

    .line 178
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    const-string v7, "/proc/zoneinfo"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_92
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_9e
    .catchall {:try_start_b .. :try_end_14} :catchall_88

    .line 179
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    const/16 v8, 0x800

    :try_start_17
    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 180
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 182
    const/4 v1, 0x0

    .line 184
    .local v1, "i":I
    const/16 v7, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 185
    const/16 v7, 0x800

    const-string v8, "Normal"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 187
    const/16 v7, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 188
    const/16 v7, 0x800

    const-string v8, "low"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v7

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 195
    :cond_4e
    const/16 v7, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7e

    .line 196
    const/16 v7, 0x800

    const-string v8, "HighMem"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7e

    .line 198
    const/16 v7, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7e

    .line 199
    const/16 v7, 0x800

    const-string v8, "low"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7e

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_7b} :catch_b1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_7b} :catch_ae
    .catchall {:try_start_17 .. :try_end_7b} :catchall_ab

    move-result-wide v7

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 209
    :cond_7e
    if-eqz v3, :cond_83

    .line 211
    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_a9

    .line 215
    :cond_83
    :goto_83
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 218
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_87
    return-wide v5

    .line 209
    :catchall_88
    move-exception v7

    :goto_89
    if-eqz v2, :cond_8e

    .line 211
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_a7

    .line 215
    :cond_8e
    :goto_8e
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 209
    throw v7

    .line 206
    :catch_92
    move-exception v7

    .line 209
    :goto_93
    if-eqz v2, :cond_98

    .line 211
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9c

    .line 215
    :cond_98
    :goto_98
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_87

    .line 212
    :catch_9c
    move-exception v7

    goto :goto_98

    .line 207
    :catch_9e
    move-exception v7

    .line 209
    :goto_9f
    if-eqz v2, :cond_98

    .line 211
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_98

    .line 212
    :catch_a5
    move-exception v7

    goto :goto_98

    :catch_a7
    move-exception v8

    goto :goto_8e

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_a9
    move-exception v7

    goto :goto_83

    .line 209
    .end local v1    # "i":I
    :catchall_ab
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_89

    .line 207
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_ae
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_9f

    .line 206
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_b1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_93
.end method

.method public getZramTotalSizeKb()J
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readMemInfo()V
    .registers 3

    .prologue
    .line 32
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 34
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 36
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 38
    return-void

    .line 36
    :catchall_d
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
