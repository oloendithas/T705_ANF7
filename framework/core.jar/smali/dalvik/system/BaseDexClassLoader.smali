.class public Ldalvik/system/BaseDexClassLoader;
.super Ljava/lang/ClassLoader;
.source "BaseDexClassLoader.java"


# instance fields
.field private final originalLibraryPath:Ljava/lang/String;

.field private final originalPath:Ljava/lang/String;

.field private final pathList:Ldalvik/system/DexPathList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 54
    invoke-direct {p0, p4}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 56
    iput-object p1, p0, Ldalvik/system/BaseDexClassLoader;->originalPath:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Ldalvik/system/BaseDexClassLoader;->originalLibraryPath:Ljava/lang/String;

    .line 58
    new-instance v0, Ldalvik/system/DexPathList;

    invoke-direct {v0, p0, p1, p3, p2}, Ldalvik/system/DexPathList;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    .line 60
    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v5, p1, v3}, Ldalvik/system/DexPathList;->findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 67
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t find class \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" on path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 69
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1

    .line 73
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 88
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->originalPath:Ljava/lang/String;

    const-string v4, "/data/app/sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "idx":I
    if-eq v1, v5, :cond_0

    const-string v3, "sec_container_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 90
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->originalPath:Ljava/lang/String;

    add-int/lit8 v4, v1, 0xa

    add-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "containerPrefix":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v3, v2}, Ldalvik/system/DexPathList;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .end local v0    # "containerPrefix":Ljava/lang/String;
    .end local v2    # "newName":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v3, p1}, Ldalvik/system/DexPathList;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
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
    .line 83
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLdLibraryPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v4, "result":Ljava/lang/StringBuilder;
    iget-object v5, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v5}, Ldalvik/system/DexPathList;->getNativeLibraryDirectories()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 146
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 147
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "directory":Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected declared-synchronized getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 126
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 129
    .local v9, "pack":Ljava/lang/Package;
    if-nez v9, :cond_0

    .line 130
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 137
    .end local v9    # "pack":Ljava/lang/Package;
    :cond_0
    monitor-exit p0

    return-object v9

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[dexPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->originalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",libraryPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->originalLibraryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
