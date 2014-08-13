.class public Lcom/nuance/connect/store/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# static fields
.field private static final PREFS_DIR:Ljava/lang/String; = "prefs"

.field private static final PREF_FILE_EXTENSION:Ljava/lang/String; = ".dat"


# instance fields
.field private appFilesFolder:Ljava/lang/String;

.field private final obfuscatedFileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field oemLog:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appFilesFolder"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    :goto_0
    return-object v1

    .line 97
    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "obfuscated":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 100
    goto :goto_0
.end method

.method private getPrefFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/connect/store/FileStore;->getPrefsDir()Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v1, "f":Ljava/io/File;
    return-object v1
.end method

.method private getPrefsDir()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    const-string v4, "prefs"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 61
    .local v1, "makeDirectory":Z
    if-nez v1, :cond_0

    .line 62
    iget-object v3, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Unable to create persistent storage directory when it was missing"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-object v0, v2

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public clear()Z
    .locals 8

    .prologue
    .line 252
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    const-string v7, "prefs"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v1, "dataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 255
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "failed to clear preferences files"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 254
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    iget-object v6, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 263
    const/4 v6, 0x1

    return v6
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 243
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 247
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 248
    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 235
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x1

    .line 238
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 210
    move-object v0, p2

    .line 211
    .local v0, "result":Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "stringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 216
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    return-object p2

    .line 215
    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    move-object p2, v0

    .line 216
    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 199
    move v0, p2

    .line 200
    .local v0, "result":Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "stringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 205
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 204
    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move p2, v0

    .line 205
    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 169
    move v0, p2

    .line 170
    .local v0, "result":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 184
    move-wide v0, p2

    .line 185
    .local v0, "result":J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 191
    :goto_0
    return-wide v0

    .line 188
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 108
    move-object v1, p2

    .line 109
    .local v1, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 120
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 113
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_1
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    :cond_2
    move-object v1, p2

    :cond_3
    move-object v2, v1

    .line 120
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 221
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 195
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 229
    invoke-static {p2}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v7, 0x0

    .line 125
    .local v7, "success":Z
    if-nez p2, :cond_0

    move v8, v7

    .line 165
    :goto_0
    return v8

    .line 130
    :cond_0
    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 133
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 135
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    const/4 v3, 0x0

    .line 143
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 144
    .local v6, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 146
    .local v0, "buffer":[B
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6

    .line 148
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    const/4 v7, 0x1

    .line 152
    if-eqz v6, :cond_2

    .line 153
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V

    .line 155
    :cond_2
    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0    # "buffer":[B
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    move v8, v7

    .line 165
    goto :goto_0

    .line 136
    .end local v6    # "lock":Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "lock":Ljava/nio/channels/FileLock;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_4

    .line 153
    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V

    .line 155
    :cond_4
    if-eqz v3, :cond_5

    .line 156
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw v8
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 159
    .end local v0    # "buffer":[B
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    iget-object v8, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Exception reading file"

    invoke-interface {v8, v9, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 162
    .local v5, "io":Ljava/io/IOException;
    :goto_4
    iget-object v8, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Exception reading file"

    invoke-interface {v8, v9, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "io":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 159
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 152
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
