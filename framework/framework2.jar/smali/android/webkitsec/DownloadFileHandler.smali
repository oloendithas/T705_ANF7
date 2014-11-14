.class Landroid/webkitsec/DownloadFileHandler;
.super Landroid/os/Handler;
.source "DownloadFileHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DownloadFileHandler"

.field public static MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;


# instance fields
.field public isDownloadabelfile:Z

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field private final mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

.field public mMimeType:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "application/vnd.oma.dd+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    .line 50
    const-string v0, "application/vnd.oma.drm.roap-trigger+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    .line 52
    const-string v0, "application/vnd.oma.drm.ro+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    .line 53
    const-string v0, "application/vnd.oma.drm.dcf"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    .line 54
    const-string v0, "application/vnd.oma.drm.roap-pdu+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "referer"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    new-instance v0, Landroid/webkitsec/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkitsec/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    .line 59
    iput-object p1, p0, Landroid/webkitsec/DownloadFileHandler;->mUrl:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Landroid/webkitsec/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    .line 61
    iput-wide p6, p0, Landroid/webkitsec/DownloadFileHandler;->mContentLength:J

    .line 62
    iput-object p2, p0, Landroid/webkitsec/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Landroid/webkitsec/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Landroid/webkitsec/DownloadFileHandler;->mReferer:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0x22

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    .line 175
    const/4 v3, 0x0

    .line 177
    .local v3, "bValue":Ljava/lang/String;
    const-string/jumbo v5, "type="

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "bPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_80

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "subType":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 181
    .local v2, "bValpos":I
    add-int/lit8 v2, v2, 0x1

    .line 183
    :goto_25
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_31

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_34

    .line 184
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 185
    :cond_34
    move v1, v2

    .line 189
    .local v1, "bValEndPos":I
    :cond_35
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_57

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_57

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_57

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_57

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_35

    .line 198
    :cond_57
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_6f

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_6f

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_6f

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_71

    .line 203
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    .line 209
    :cond_71
    :goto_71
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_7a

    .line 210
    add-int/lit8 v1, v1, -0x1

    goto :goto_71

    .line 217
    :cond_7a
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 227
    .end local v1    # "bValEndPos":I
    .end local v2    # "bValpos":I
    .end local v4    # "subType":Ljava/lang/String;
    :cond_80
    return-object v3
.end method

.method static isDownLoadableContent(Ljava/lang/String;)Z
    .registers 6
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kanas3g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ageraltezm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_20
    move v1, v2

    .line 120
    :cond_21
    :goto_21
    return v1

    .line 99
    :cond_22
    invoke-static {p0}, Landroid/webkitsec/DownloadFileHandler;->isOMAorDRMMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 104
    invoke-static {p0}, Landroid/webkitsec/DownloadFileHandler;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "bValue":Ljava/lang/String;
    if-nez v0, :cond_30

    move v1, v2

    .line 110
    goto :goto_21

    .line 112
    :cond_30
    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    move v1, v2

    .line 120
    goto :goto_21
.end method

.method private static isOMAorDRMMimeType(Ljava/lang/String;)Z
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 83
    :cond_10
    const-string v0, "DownloadFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOMAorDRMMimeType: mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public didReceiveData([BI)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 73
    iget-object v1, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    monitor-enter v1

    .line 74
    :try_start_3
    iget-object v0, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/webkitsec/ByteArrayBuilder;->append([BII)V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public handleFile()Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "downloadStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    .line 132
    .local v5, "result":Z
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sdcard/tempfile1.xml"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_42

    .line 133
    .end local v1    # "downloadStream":Ljava/io/FileOutputStream;
    .local v2, "downloadStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    :try_start_b
    iput-boolean v7, p0, Landroid/webkitsec/DownloadFileHandler;->isDownloadabelfile:Z

    .line 134
    const-string v7, "DownloadFileHandler"

    const-string v8, "****Download File Creation Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_b4

    .line 142
    iget-object v7, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    monitor-enter v7

    .line 147
    :try_start_17
    iget-object v6, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    invoke-virtual {v6}, Landroid/webkitsec/ByteArrayBuilder;->getFirstChunk()Landroid/webkitsec/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 148
    .local v0, "data":Landroid/webkitsec/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_3e

    iget v6, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_7c

    if-eqz v6, :cond_3e

    .line 149
    if-eqz v2, :cond_39

    .line 151
    :try_start_25
    iget-object v6, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v8, 0x0

    iget v9, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 152
    const-string v6, "DownloadFileHandler"

    const-string v8, "***Downloadable File Writing Sucess *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_4b
    .catchall {:try_start_25 .. :try_end_34} :catchall_75

    .line 158
    if-eqz v2, :cond_39

    .line 159
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_9a
    .catchall {:try_start_36 .. :try_end_39} :catchall_7c

    .line 167
    :cond_39
    :goto_39
    :try_start_39
    iget-object v6, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    invoke-virtual {v6, v0}, Landroid/webkitsec/ByteArrayBuilder;->releaseChunk(Landroid/webkitsec/ByteArrayBuilder$Chunk;)V

    .line 169
    :cond_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_7c

    move-object v1, v2

    .end local v2    # "downloadStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadStream":Ljava/io/FileOutputStream;
    move v6, v5

    .line 170
    .end local v0    # "data":Landroid/webkitsec/ByteArrayBuilder$Chunk;
    :goto_41
    return v6

    .line 135
    :catch_42
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_43
    const-string v7, "DownloadFileHandler"

    const-string v8, "Fail to Create Download temp file"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 153
    .end local v1    # "downloadStream":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":Landroid/webkitsec/ByteArrayBuilder$Chunk;
    .restart local v2    # "downloadStream":Ljava/io/FileOutputStream;
    :catch_4b
    move-exception v3

    .line 154
    .local v3, "e":Ljava/io/IOException;
    :try_start_4c
    const-string v6, "DownloadFileHandler"

    const-string v8, "****Download File Writing Failure *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_75

    .line 155
    const/4 v5, 0x0

    .line 158
    if-eqz v2, :cond_39

    .line 159
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_7c

    goto :goto_39

    .line 161
    :catch_5a
    move-exception v4

    .line 162
    .local v4, "ex":Ljava/io/IOException;
    :try_start_5b
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_7c

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    :goto_73
    const/4 v5, 0x0

    goto :goto_39

    .line 157
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_75
    move-exception v6

    .line 158
    if-eqz v2, :cond_7b

    .line 159
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7f
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    .line 157
    :cond_7b
    :goto_7b
    :try_start_7b
    throw v6

    .line 169
    .end local v0    # "data":Landroid/webkitsec/ByteArrayBuilder$Chunk;
    :catchall_7c
    move-exception v6

    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7c

    throw v6

    .line 161
    .restart local v0    # "data":Landroid/webkitsec/ByteArrayBuilder$Chunk;
    :catch_7f
    move-exception v4

    .line 162
    .restart local v4    # "ex":Ljava/io/IOException;
    :try_start_80
    const-string v8, "DownloadFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception when closing the file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v5, 0x0

    goto :goto_7b

    .line 161
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_9a
    move-exception v4

    .line 162
    .restart local v4    # "ex":Ljava/io/IOException;
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_80 .. :try_end_b3} :catchall_7c

    goto :goto_73

    .line 135
    .end local v0    # "data":Landroid/webkitsec/ByteArrayBuilder$Chunk;
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_b4
    move-exception v3

    move-object v1, v2

    .end local v2    # "downloadStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadStream":Ljava/io/FileOutputStream;
    goto :goto_43
.end method
