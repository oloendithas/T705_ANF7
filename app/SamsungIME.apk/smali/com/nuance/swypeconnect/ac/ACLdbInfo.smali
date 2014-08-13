.class Lcom/nuance/swypeconnect/ac/ACLdbInfo;
.super Ljava/lang/Object;
.source "ACLdbInfo.java"


# static fields
.field private static final ALPHA_CORE:I = 0x2

.field private static final CHINESE_CORE:I = 0xa

.field private static final ET9LDBOFFSET_BODY:I = 0x41

.field private static final ET9LDBOFFSET_CHUNK_COUNT_BYTE:I = 0x23

.field private static final ET9LDBOFFSET_CONTENTSMAJORVER:I = 0x35

.field private static final ET9LDBOFFSET_DATABASETYPE:I = 0x21

.field private static final ET9LDBOFFSET_LDBLAYOUTVER:I = 0x20

.field private static final ET9LDBOFFSET_PRIMARYLANGID:I = 0x39

.field private static final ET9LDBOFFSET_SECONDARYLANGID:I = 0x3a

.field private static final ET9NGRAM_CHUNK_ID:I = 0x5

.field private static final ET9_CP_CONTENT_VER_OFFSET:I = 0x2a

.field private static final ET9_CP_LANGUAGE_ID_OFFSET:I = 0x28

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private isALM:Ljava/lang/Boolean;

.field private langId:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Boolean;I)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "isALM"    # Ljava/lang/Boolean;
    .param p3, "langId"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACLdbInfo version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isALM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " langId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 21
    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    .line 22
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM:Ljava/lang/Boolean;

    .line 23
    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    .line 24
    return-void
.end method

.method private static getChunkCount(Ljava/io/RandomAccessFile;)I
    .locals 4
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 64
    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 65
    .local v1, "version":I
    if-le v1, v2, :cond_1

    .line 66
    const/16 v3, 0x23

    invoke-static {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v0

    .line 67
    .local v0, "chunkCt":I
    if-le v0, v2, :cond_1

    .line 68
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 69
    shr-int/lit8 v0, v0, 0x2

    .line 75
    .end local v0    # "chunkCt":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static getLDBEndAddress(Ljava/io/RandomAccessFile;)I
    .locals 8
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, "retAddress":I
    const/4 v0, 0x0

    .line 81
    .local v0, "bPosCt":B
    const/4 v2, 0x0

    .line 82
    .local v2, "iSymDecodeCtByte":I
    const/4 v5, 0x0

    .line 83
    .local v5, "wSymDecCt":S
    const/4 v1, 0x0

    .line 85
    .local v1, "iLastIntervalOffset":I
    const/4 v3, 0x0

    .line 87
    .local v3, "readValue":I
    const/16 v6, 0x41

    invoke-static {p0, v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v3

    .line 88
    int-to-byte v0, v3

    .line 89
    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v2, v6, 0x1

    .line 91
    invoke-static {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x1

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v5, v6

    .line 94
    add-int/lit8 v6, v5, 0x1

    add-int/lit16 v6, v6, 0xff

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    mul-int/lit8 v7, v0, 0x3

    add-int v1, v6, v7

    .line 96
    invoke-static {p0, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x1

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x2

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    or-int v4, v6, v7

    .line 100
    add-int/lit8 v6, v4, -0x1

    return v6
.end method

.method private static getValueAtPosition(Ljava/io/RandomAccessFile;I)I
    .locals 2
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method private static isALM(Ljava/io/RandomAccessFile;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getLDBEndAddress(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 105
    .local v1, "currReadAddress":I
    invoke-static {p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getChunkCount(Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 106
    .local v0, "chunkCt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 107
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    .line 109
    .local v4, "startChunkAddress":I
    const/4 v5, 0x5

    invoke-static {p0, v4}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 110
    const/4 v5, 0x1

    .line 120
    .end local v4    # "startChunkAddress":I
    :goto_1
    return v5

    .line 113
    .restart local v4    # "startChunkAddress":I
    :cond_0
    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v6, v4, 0x1

    invoke-static {p0, v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x2

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x3

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    or-int/2addr v6, v7

    add-int v2, v5, v6

    .line 118
    .local v2, "endChunkAddress":I
    move v1, v2

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "endChunkAddress":I
    .end local v4    # "startChunkAddress":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static load(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, "ldbFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v7, "version":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v10, "r"

    invoke-direct {v3, p0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .local v3, "ldbFile":Ljava/io/RandomAccessFile;
    const/16 v10, 0x21

    :try_start_1
    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    .line 137
    .local v6, "type":I
    sparse-switch v6, :sswitch_data_0

    .line 182
    sget-object v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown LDB type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    if-eqz v3, :cond_a

    .line 192
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .end local v6    # "type":I
    .end local v7    # "version":Ljava/lang/StringBuffer;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    move-object v8, v9

    .line 198
    :goto_1
    return-object v8

    .line 139
    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "type":I
    .restart local v7    # "version":Ljava/lang/StringBuffer;
    :sswitch_0
    const/16 v10, 0x35

    :try_start_3
    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v4

    .line 144
    .local v4, "major":I
    if-le v4, v8, :cond_1

    .line 145
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    :cond_1
    const/16 v10, 0x3a

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 159
    .local v1, "languageId":I
    if-le v1, v8, :cond_2

    .line 160
    const/16 v10, 0x39

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 161
    .local v5, "offset":I
    if-le v5, v8, :cond_4

    shl-int/lit8 v8, v1, 0x8

    or-int v1, v8, v5

    .line 164
    .end local v5    # "offset":I
    :cond_2
    :goto_2
    new-instance v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    invoke-static {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM(Ljava/io/RandomAccessFile;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v4, v10, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILjava/lang/Boolean;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    if-eqz v3, :cond_3

    .line 192
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_3
    move-object v2, v3

    .line 194
    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "offset":I
    :cond_4
    move v1, v8

    .line 161
    goto :goto_2

    .line 167
    .end local v1    # "languageId":I
    .end local v4    # "major":I
    .end local v5    # "offset":I
    :sswitch_1
    const/16 v10, 0x2a

    :try_start_5
    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v4

    .line 170
    .restart local v4    # "major":I
    if-le v4, v8, :cond_5

    .line 171
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    :cond_5
    const/16 v10, 0x29

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 174
    .restart local v1    # "languageId":I
    if-le v1, v8, :cond_6

    .line 175
    const/16 v10, 0x28

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 176
    .restart local v5    # "offset":I
    if-le v5, v8, :cond_8

    shl-int/lit8 v8, v1, 0x8

    or-int v1, v8, v5

    .line 179
    .end local v5    # "offset":I
    :cond_6
    :goto_4
    new-instance v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v4, v10, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILjava/lang/Boolean;I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    if-eqz v3, :cond_7

    .line 192
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_7
    :goto_5
    move-object v2, v3

    .line 194
    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "offset":I
    :cond_8
    move v1, v8

    .line 176
    goto :goto_4

    .line 193
    .end local v1    # "languageId":I
    .end local v4    # "major":I
    .end local v5    # "offset":I
    :catch_0
    move-exception v8

    move-object v2, v3

    .line 194
    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 185
    .end local v6    # "type":I
    .end local v7    # "version":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_7
    sget-object v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing LDB (not found): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 190
    if-eqz v2, :cond_0

    .line 192
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 193
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 187
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    :try_start_9
    sget-object v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing LDB (exception): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 190
    if-eqz v2, :cond_0

    .line 192
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 193
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v2, :cond_9

    .line 192
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 194
    :cond_9
    :goto_9
    throw v8

    .line 193
    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "languageId":I
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "major":I
    .restart local v6    # "type":I
    .restart local v7    # "version":Ljava/lang/StringBuffer;
    :catch_5
    move-exception v9

    goto/16 :goto_3

    :catch_6
    move-exception v9

    goto :goto_5

    .end local v1    # "languageId":I
    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .end local v4    # "major":I
    .end local v6    # "type":I
    .end local v7    # "version":Ljava/lang/StringBuffer;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v9

    goto :goto_9

    .line 190
    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "version":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 187
    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 185
    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "type":I
    :cond_a
    move-object v2, v3

    .end local v3    # "ldbFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "ldbFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getVersion()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    return v0
.end method

.method protected getXT9LanguageId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return v0
.end method

.method protected isALM()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM:Ljava/lang/Boolean;

    return-object v0
.end method
