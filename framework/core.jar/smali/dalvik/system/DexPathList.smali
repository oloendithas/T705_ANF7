.class final Ldalvik/system/DexPathList;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexPathList$Element;
    }
.end annotation


# static fields
.field private static final APK_SUFFIX:Ljava/lang/String; = ".apk"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final JAR_SUFFIX:Ljava/lang/String; = ".jar"

.field private static final ZIP_SUFFIX:Ljava/lang/String; = ".zip"


# instance fields
.field private final definingContext:Ljava/lang/ClassLoader;

.field private final dexElements:[Ldalvik/system/DexPathList$Element;

.field private final dexElementsSuppressedExceptions:[Ljava/io/IOException;

.field private final nativeLibraryDirectories:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "definingContext"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "optimizedDirectory"    # Ljava/io/File;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "definingContext == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dexPath == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    if-eqz p4, :cond_4

    .line 96
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optimizedDirectory doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_2
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optimizedDirectory not readable/writable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_4
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    invoke-static {p2}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p4, v0}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ldalvik/system/DexPathList$Element;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    .line 120
    :goto_0
    invoke-static {p3}, Ldalvik/system/DexPathList;->splitLibraryPath(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:[Ljava/io/File;

    .line 121
    return-void

    .line 118
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    goto :goto_0
.end method

.method private static loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v1, Ldalvik/system/DexFile;

    invoke-direct {v1, p0}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 266
    :goto_0
    return-object v1

    .line 265
    :cond_0
    invoke-static {p0, p1}, Ldalvik/system/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "optimizedPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v1

    goto :goto_0
.end method

.method private static makeDexElements(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ldalvik/system/DexPathList$Element;
    .locals 11
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    .prologue
    .local p0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const/4 v10, 0x0

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldalvik/system/DexPathList$Element;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 214
    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 215
    .local v7, "zip":Ljava/io/File;
    const/4 v0, 0x0

    .line 216
    .local v0, "dex":Ldalvik/system/DexFile;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "name":Ljava/lang/String;
    const-string v8, ".dex"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    :try_start_0
    invoke-static {v3, p1}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_1
    if-nez v7, :cond_1

    if-eqz v0, :cond_0

    .line 249
    :cond_1
    new-instance v8, Ldalvik/system/DexPathList$Element;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9, v7, v0}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load dex file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 225
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    const-string v8, ".apk"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".jar"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".zip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 227
    :cond_3
    move-object v7, v3

    .line 230
    :try_start_1
    invoke-static {v3, p1}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 231
    :catch_1
    move-exception v6

    .line 238
    .local v6, "suppressed":Ljava/io/IOException;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v6    # "suppressed":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 243
    new-instance v8, Ldalvik/system/DexPathList$Element;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v9, v10, v10}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown file type for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    .end local v0    # "dex":Ldalvik/system/DexFile;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "zip":Ljava/io/File;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ldalvik/system/DexPathList$Element;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ldalvik/system/DexPathList$Element;

    return-object v8
.end method

.method private static optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "fileName":Ljava/lang/String;
    const-string v4, ".dex"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, "lastDot":I
    if-gez v1, :cond_1

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .end local v1    # "lastDot":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v2, "result":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 294
    .end local v2    # "result":Ljava/io/File;
    .restart local v1    # "lastDot":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 296
    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static splitAndAdd(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 6
    .param p0, "searchPath"    # Ljava/lang/String;
    .param p1, "directoriesOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p0, :cond_1

    .line 200
    :cond_0
    return-void

    .line 191
    :cond_1
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 193
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5, v3}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v4

    .line 194
    .local v4, "sb":Llibcore/io/StructStat;
    if-eqz p1, :cond_2

    iget v5, v4, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v5}, Llibcore/io/OsConstants;->S_ISDIR(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v4    # "sb":Llibcore/io/StructStat;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static splitDexPath(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static splitLibraryPath(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static splitPaths(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "path1"    # Ljava/lang/String;
    .param p1, "path2"    # Ljava/lang/String;
    .param p2, "wantDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {p0, p2, v0}, Ldalvik/system/DexPathList;->splitAndAdd(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 178
    invoke-static {p1, p2, v0}, Ldalvik/system/DexPathList;->splitAndAdd(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 179
    return-object v0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .local v0, "arr$":[Ldalvik/system/DexPathList$Element;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 319
    .local v3, "element":Ldalvik/system/DexPathList$Element;
    # getter for: Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;
    invoke-static {v3}, Ldalvik/system/DexPathList$Element;->access$000(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v2

    .line 321
    .local v2, "dex":Ldalvik/system/DexFile;
    if-eqz v2, :cond_0

    .line 322
    iget-object v6, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1, v6, p2}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v1

    .line 323
    .local v1, "clazz":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 331
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "dex":Ldalvik/system/DexFile;
    .end local v3    # "element":Ldalvik/system/DexPathList$Element;
    :goto_1
    return-object v1

    .line 318
    .restart local v2    # "dex":Ldalvik/system/DexFile;
    .restart local v3    # "element":Ldalvik/system/DexPathList$Element;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "dex":Ldalvik/system/DexFile;
    .end local v3    # "element":Ldalvik/system/DexPathList$Element;
    :cond_1
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    if-eqz v6, :cond_2

    .line 329
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "fileName":Ljava/lang/String;
    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 383
    .local v1, "directory":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Llibcore/io/IoUtils;->canOpenReadOnly(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 388
    .end local v1    # "directory":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 382
    .restart local v1    # "directory":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "directory":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .local v0, "arr$":[Ldalvik/system/DexPathList$Element;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 344
    .local v1, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v1, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 345
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_0

    .line 350
    .end local v1    # "element":Ldalvik/system/DexPathList$Element;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return-object v4

    .line 343
    .restart local v1    # "element":Ldalvik/system/DexPathList$Element;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "element":Ldalvik/system/DexPathList$Element;
    .end local v4    # "url":Ljava/net/URL;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .local v0, "arr$":[Ldalvik/system/DexPathList$Element;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 362
    .local v1, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v1, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 363
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "element":Ldalvik/system/DexPathList$Element;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v6

    return-object v6
.end method

.method public getNativeLibraryDirectories()[Ljava/io/File;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:[Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DexPathList["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",nativeLibraryDirectories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:[Ljava/io/File;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
