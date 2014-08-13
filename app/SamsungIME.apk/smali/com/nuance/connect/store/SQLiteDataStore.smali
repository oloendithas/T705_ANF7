.class public Lcom/nuance/connect/store/SQLiteDataStore;
.super Ljava/lang/Object;
.source "SQLiteDataStore.java"

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;
    }
.end annotation


# static fields
.field private static final CLOSE:I = 0x1

.field private static final DB_VERSION:I = 0x1

.field private static final RESOURCES_STRINGS_KEY:Ljava/lang/String; = "bb"

.field private static final RESOURCES_STRINGS_TABLE:Ljava/lang/String; = "aa"

.field private static final RESOURCES_STRINGS_VALUE:Ljava/lang/String; = "cc"

.field private static final TIMEOUT:I = 0x2710

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private context:Landroid/content/Context;

.field private volatile database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbPath:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile lastUsed:J

.field private looper:Landroid/os/Looper;

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

.field private volatile opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/store/SQLiteDataStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefPath"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->lastUsed:J

    .line 78
    iput-object p1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->context:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->dbPath:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->initHandler()V

    .line 81
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/store/SQLiteDataStore;)J
    .locals 2
    .param p0, "x0"    # Lcom/nuance/connect/store/SQLiteDataStore;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->lastUsed:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/store/SQLiteDataStore;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/store/SQLiteDataStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/store/SQLiteDataStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/store/SQLiteDataStore;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->close()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/store/SQLiteDataStore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/store/SQLiteDataStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/store/SQLiteDataStore;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkOpen()Z
    .locals 7

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "open":Z
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    :cond_0
    :try_start_0
    new-instance v2, Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/nuance/connect/store/SQLiteDataStore;->dbPath:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    .line 89
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->initHandler()V

    .line 98
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    :goto_1
    return v1

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Landroid/database/SQLException;
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 101
    .end local v0    # "ex":Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->lastUsed:J

    .line 106
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private close()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->destroyHandler()V

    .line 142
    return-void
.end method

.method private getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    :goto_0
    return-object v1

    .line 264
    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "obfuscated":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 266
    goto :goto_0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "writeHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Landroid/os/HandlerThread;

    .line 114
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->looper:Landroid/os/Looper;

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->looper:Landroid/os/Looper;

    new-instance v2, Lcom/nuance/connect/store/SQLiteDataStore$1;

    invoke-direct {v2, p0}, Lcom/nuance/connect/store/SQLiteDataStore$1;-><init>(Lcom/nuance/connect/store/SQLiteDataStore;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handler:Landroid/os/Handler;

    .line 134
    :cond_1
    return-void
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 349
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read() Database [SQLiteDataStore] not open; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 392
    :cond_0
    :goto_0
    return-object v10

    .line 354
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    const/4 v10, 0x0

    .line 356
    .local v10, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 357
    .local v8, "cursor":Landroid/database/Cursor;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 363
    .local v4, "args":[Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v11, "where":Ljava/lang/StringBuilder;
    const-string v0, "bb"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 367
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-le v0, v12, :cond_2

    .line 370
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 378
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v12, :cond_3

    .line 379
    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read() Unexpected error in SQLiteDataStore; count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_3
    if-eqz v8, :cond_0

    .line 384
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 387
    .end local v11    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 388
    .local v9, "e":Landroid/database/SQLException;
    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read() Error in [SQLiteDataStore] key("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 383
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 384
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->checkOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 397
    sget-object v5, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save() Database [SQLiteDataStore] not open; key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 399
    const/4 v3, 0x0

    .line 428
    :goto_0
    return v3

    .line 402
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    const/4 v3, 0x0

    .line 406
    .local v3, "processed":Z
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 408
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "bb"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v5, "cc"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v5, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "aa"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 413
    .local v1, "index":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 414
    sget-object v5, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save failed to insert key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 422
    .end local v1    # "index":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/database/SQLException;
    sget-object v5, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save failed to insert key: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") value ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") SQL message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 425
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 416
    .end local v0    # "e":Landroid/database/SQLException;
    .restart local v1    # "index":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    const/4 v3, 0x1

    goto :goto_1

    .line 420
    .end local v1    # "index":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    :try_start_3
    iget-object v6, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clear()Z
    .locals 6

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->checkOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clear() Database [SQLiteDataStore] not open"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 329
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, "completed":Z
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 335
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const/4 v0, 0x1

    .line 343
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear(aa) failed message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 340
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "ex":Landroid/database/SQLException;
    :try_start_2
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear(aa) failed message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->checkOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    sget-object v3, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete() Database [SQLiteDataStore] not open; key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "completed":Z
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string v3, "bb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 v0, 0x1

    .line 320
    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 315
    .end local v2    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete(aa) failed message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 317
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 318
    .local v1, "ex":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete(aa) failed message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    iget-object v3, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v1    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public destroyHandler()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 441
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 271
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exists() Database [SQLiteDataStore] not open; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 296
    :goto_0
    return v13

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    const/4 v10, 0x0

    .line 278
    .local v10, "exists":Z
    const/4 v8, 0x0

    .line 281
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v11, "where":Ljava/lang/StringBuilder;
    const-string v0, "bb"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 285
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, v12, :cond_2

    move v10, v12

    .line 291
    :goto_1
    if-eqz v8, :cond_1

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v11    # "where":Ljava/lang/StringBuilder;
    :cond_1
    :goto_2
    move v13, v10

    .line 296
    goto :goto_0

    .restart local v11    # "where":Ljava/lang/StringBuilder;
    :cond_2
    move v10, v13

    .line 286
    goto :goto_1

    .line 287
    .end local v11    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 288
    .local v9, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exists() Error in [SQLiteDataStore] key("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    if-eqz v8, :cond_1

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 291
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 234
    move-object v0, p2

    .line 235
    .local v0, "result":Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "stringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 240
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    return-object p2

    .line 239
    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    move-object p2, v0

    .line 240
    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 222
    move v0, p2

    .line 223
    .local v0, "result":Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "stringValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 228
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 227
    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move p2, v0

    .line 228
    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 188
    move v0, p2

    .line 189
    .local v0, "result":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 192
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 205
    move-wide v0, p2

    .line 206
    .local v0, "result":J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 212
    :goto_0
    return-wide v0

    .line 209
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    move-object v0, p2

    .line 162
    :goto_0
    return-object v0

    .line 155
    :cond_1
    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    :cond_2
    move-object v0, p2

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 246
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 217
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 256
    invoke-static {p2}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->checkOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveString() Database [SQLiteDataStore] not open; key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 169
    const/4 v2, 0x0

    .line 183
    :goto_0
    return v2

    .line 171
    :cond_0
    if-nez p2, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->delete(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "encodedValue":Ljava/lang/String;
    new-instance v1, Lcom/nuance/connect/store/SQLiteDataStore$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore$2;-><init>(Lcom/nuance/connect/store/SQLiteDataStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    const/4 v2, 0x1

    goto :goto_0
.end method
