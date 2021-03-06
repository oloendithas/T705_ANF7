.class final Landroid/webkitsec/WebViewDatabaseClassic;
.super Landroid/webkitsec/WebViewDatabase;
.source "WebViewDatabaseClassic.java"


# static fields
.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xc

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "WebViewDatabaseClassic"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_FORMDATA_ID:I = 0x2

.field private static final TABLE_FORMURL_ID:I = 0x1

.field private static final TABLE_HTTPAUTH_ID:I = 0x3

.field private static final TABLE_PASSWORD_ID:I

.field private static final mTableNames:[Ljava/lang/String;

.field private static sDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static sInstance:Landroid/webkitsec/WebViewDatabaseClassic;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private mInitialized:Z

.field private final mPasswordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    sput-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sInstance:Landroid/webkitsec/WebViewDatabaseClassic;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sInstanceLock:Ljava/lang/Object;

    .line 60
    sput-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "password"

    aput-object v1, v0, v3

    const-string v1, "formurl"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "formdata"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "httpauth"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabase;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mInitialized:Z

    .line 107
    invoke-static {p1}, Landroid/webkitsec/JniUtil;->setContext(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/webkitsec/WebViewDatabaseClassic$1;

    invoke-direct {v0, p0, p1}, Landroid/webkitsec/WebViewDatabaseClassic$1;-><init>(Landroid/webkitsec/WebViewDatabaseClassic;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/WebViewDatabaseClassic;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewDatabaseClassic;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewDatabaseClassic;->init(Landroid/content/Context;)V

    return-void
.end method

.method private checkInitialized()Z
    .registers 4

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-nez v1, :cond_1e

    .line 295
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_1b

    goto :goto_1

    .line 296
    :catch_9
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "Caught exception while checking initialization"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "WebViewDatabaseClassic"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 303
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_3
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sInstance:Landroid/webkitsec/WebViewDatabaseClassic;

    if-nez v0, :cond_e

    .line 121
    new-instance v0, Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewDatabaseClassic;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sInstance:Landroid/webkitsec/WebViewDatabaseClassic;

    .line 123
    :cond_e
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sInstance:Landroid/webkitsec/WebViewDatabaseClassic;

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private hasEntries(I)Z
    .registers 15
    .param p1, "tableId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 307
    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 322
    :goto_8
    return v12

    .line 311
    :cond_9
    const/4 v8, 0x0

    .line 312
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 314
    .local v10, "ret":Z
    :try_start_b
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 316
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1f} :catch_2c
    .catchall {:try_start_b .. :try_end_1f} :catchall_37

    move-result v0

    if-ne v0, v11, :cond_2a

    move v10, v11

    .line 320
    :goto_23
    if-eqz v8, :cond_28

    :goto_25
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_28
    move v12, v10

    .line 322
    goto :goto_8

    :cond_2a
    move v10, v12

    .line 316
    goto :goto_23

    .line 317
    :catch_2c
    move-exception v9

    .line 318
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_2d
    const-string v0, "WebViewDatabaseClassic"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_37

    .line 320
    if-eqz v8, :cond_28

    goto :goto_25

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_37
    move-exception v0

    if-eqz v8, :cond_3d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 140
    :goto_5
    monitor-exit p0

    return-void

    .line 132
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewDatabaseClassic;->initDatabase(Landroid/content/Context;)V

    .line 135
    const-string/jumbo v0, "webviewCache.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mInitialized:Z

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 128
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDatabase(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 144
    :try_start_2
    const-string/jumbo v1, "webview.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_d} :catch_18

    .line 155
    :cond_d
    :goto_d
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2c

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mInitialized:Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 170
    :cond_17
    :goto_17
    return-void

    .line 145
    :catch_18
    move-exception v0

    .line 147
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "webview.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 148
    const-string/jumbo v1, "webview.db"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_d

    .line 161
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_2c
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_17

    .line 162
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 164
    :try_start_3b
    invoke-static {}, Landroid/webkitsec/WebViewDatabaseClassic;->upgradeDatabase()V

    .line 165
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_49

    .line 167
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_17

    :catchall_49
    move-exception v1

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static upgradeDatabase()V
    .registers 2

    .prologue
    .line 173
    invoke-static {}, Landroid/webkitsec/WebViewDatabaseClassic;->upgradeDatabaseToV10()V

    .line 174
    invoke-static {}, Landroid/webkitsec/WebViewDatabaseClassic;->upgradeDatabaseFromV10ToV11()V

    .line 175
    invoke-static {}, Landroid/webkitsec/WebViewDatabaseClassic;->upgradeDatabaseFromV11ToV12()V

    .line 178
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 179
    return-void
.end method

.method private static upgradeDatabaseFromV10ToV11()V
    .registers 14

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 193
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v10

    .line 195
    .local v10, "oldVersion":I
    const/16 v0, 0xb

    if-lt v10, v0, :cond_d

    .line 219
    :goto_c
    return-void

    .line 202
    :cond_d
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cookies"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, v13

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 210
    .local v8, "c":Landroid/database/Cursor;
    :goto_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 211
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "urlId":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 213
    .local v11, "url":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 214
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "url"

    invoke-static {v11}, Landroid/webkitsec/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, v13

    const-string v2, "_id=?"

    new-array v3, v13, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2a

    .line 218
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "urlId":Ljava/lang/String;
    :cond_69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_c
.end method

.method private static upgradeDatabaseFromV11ToV12()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 183
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 184
    .local v0, "oldVersion":I
    const/16 v1, 0xc

    if-lt v0, v1, :cond_c

    .line 190
    :goto_b
    return-void

    .line 189
    :cond_c
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static upgradeDatabaseToV10()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 222
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 224
    .local v0, "oldVersion":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_f

    .line 287
    :goto_e
    return-void

    .line 229
    :cond_f
    if-eqz v0, :cond_3b

    .line 230
    const-string v1, "WebViewDatabaseClassic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3b
    const/16 v1, 0x9

    if-ne v1, v0, :cond_dd

    .line 236
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 248
    :cond_dd
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cookies"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urlid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urlid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT IGNORE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_e
.end method


# virtual methods
.method public clearFormData()V
    .registers 6

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 642
    :goto_6
    return-void

    .line 638
    :cond_7
    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_a
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 641
    monitor-exit v1

    goto :goto_6

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .registers 6

    .prologue
    .line 504
    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 511
    :goto_6
    return-void

    .line 508
    :cond_7
    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_a
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 510
    monitor-exit v1

    goto :goto_6

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public clearUsernamePassword()V
    .registers 6

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 414
    :goto_6
    return-void

    .line 411
    :cond_7
    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_a
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    monitor-exit v1

    goto :goto_6

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_10

    .line 615
    :cond_f
    :goto_f
    return-object v17

    .line 578
    :cond_10
    const-string v13, "(url == ?)"

    .line 579
    .local v13, "urlSelection":Ljava/lang/String;
    const-string v11, "(urlid == ?) AND (name == ?)"

    .line 581
    .local v11, "dataSelection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 582
    const/4 v9, 0x0

    .line 584
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1c
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "(url == ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 587
    :cond_34
    :goto_34
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 588
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_43} :catch_94
    .catchall {:try_start_1c .. :try_end_43} :catchall_b5

    move-result-wide v14

    .line 589
    .local v14, "urlid":J
    const/4 v10, 0x0

    .line 591
    .local v10, "dataCursor":Landroid/database/Cursor;
    :try_start_45
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "value"

    aput-object v5, v3, v4

    const-string v4, "(urlid == ?) AND (name == ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 597
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 598
    const-string/jumbo v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 601
    .local v16, "valueCol":I
    :cond_7d
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_8b} :catch_a7
    .catchall {:try_start_45 .. :try_end_8b} :catchall_bc

    move-result v1

    if-nez v1, :cond_7d

    .line 607
    .end local v16    # "valueCol":I
    :cond_8e
    if-eqz v10, :cond_34

    :try_start_90
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catch Ljava/lang/IllegalStateException; {:try_start_90 .. :try_end_93} :catch_94
    .catchall {:try_start_90 .. :try_end_93} :catchall_b5

    goto :goto_34

    .line 610
    .end local v10    # "dataCursor":Landroid/database/Cursor;
    .end local v14    # "urlid":J
    :catch_94
    move-exception v12

    .line 611
    .local v12, "e":Ljava/lang/IllegalStateException;
    :try_start_95
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "getFormData cursor"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_b5

    .line 613
    if-eqz v9, :cond_a1

    :try_start_9e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 615
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    :cond_a1
    :goto_a1
    monitor-exit v18

    goto/16 :goto_f

    .line 616
    :catchall_a4
    move-exception v1

    monitor-exit v18
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_a4

    throw v1

    .line 604
    .restart local v10    # "dataCursor":Landroid/database/Cursor;
    .restart local v14    # "urlid":J
    :catch_a7
    move-exception v12

    .line 605
    .restart local v12    # "e":Ljava/lang/IllegalStateException;
    :try_start_a8
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "getFormData dataCursor"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_bc

    .line 607
    if-eqz v10, :cond_34

    :try_start_b1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catch Ljava/lang/IllegalStateException; {:try_start_b1 .. :try_end_b4} :catch_94
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_34

    .line 613
    .end local v10    # "dataCursor":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    .end local v14    # "urlid":J
    :catchall_b5
    move-exception v1

    if-eqz v9, :cond_bb

    :try_start_b8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_bb
    throw v1
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_a4

    .line 607
    .restart local v10    # "dataCursor":Landroid/database/Cursor;
    .restart local v14    # "urlid":J
    :catchall_bc
    move-exception v1

    if-eqz v10, :cond_c2

    :try_start_bf
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c2
    throw v1
    :try_end_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_bf .. :try_end_c3} :catch_94
    .catchall {:try_start_bf .. :try_end_c3} :catchall_b5

    .line 613
    .end local v10    # "dataCursor":Landroid/database/Cursor;
    .end local v14    # "urlid":J
    :cond_c3
    if-eqz v9, :cond_a1

    :try_start_c5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_a4

    goto :goto_a1
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 457
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    .line 485
    :cond_e
    :goto_e
    return-object v10

    .line 461
    :cond_f
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v1

    const-string/jumbo v0, "password"

    aput-object v0, v2, v3

    .line 464
    .local v2, "columns":[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .line 466
    .local v11, "selection":Ljava/lang/String;
    iget-object v12, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    .line 467
    const/4 v10, 0x0

    .line 468
    .local v10, "ret":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 470
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_22
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 473
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 474
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 477
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_60} :catch_6a
    .catchall {:try_start_22 .. :try_end_60} :catchall_78

    .line 483
    :cond_60
    if-eqz v8, :cond_65

    :try_start_62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_65
    :goto_65
    monitor-exit v12

    goto :goto_e

    .line 486
    :catchall_67
    move-exception v0

    monitor-exit v12
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw v0

    .line 480
    :catch_6a
    move-exception v9

    .line 481
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_6b
    const-string v0, "WebViewDatabaseClassic"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_78

    .line 483
    if-eqz v8, :cond_65

    :try_start_74
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_65

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_78
    move-exception v0

    if-eqz v8, :cond_7e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_67
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .param p1, "schemePlusHost"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 361
    if-eqz p1, :cond_c

    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 388
    :cond_c
    :goto_c
    return-object v10

    .line 365
    :cond_d
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v1

    const-string/jumbo v0, "password"

    aput-object v0, v2, v3

    .line 368
    .local v2, "columns":[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .line 369
    .local v11, "selection":Ljava/lang/String;
    iget-object v12, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    .line 370
    const/4 v10, 0x0

    .line 371
    .local v10, "ret":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 373
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_20
    sget-object v0, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 377
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 378
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 380
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_5b} :catch_65
    .catchall {:try_start_20 .. :try_end_5b} :catchall_73

    .line 386
    :cond_5b
    if-eqz v8, :cond_60

    :try_start_5d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_60
    :goto_60
    monitor-exit v12

    goto :goto_c

    .line 389
    :catchall_62
    move-exception v0

    monitor-exit v12
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v0

    .line 383
    :catch_65
    move-exception v9

    .line 384
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_66
    const-string v0, "WebViewDatabaseClassic"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_73

    .line 386
    if-eqz v8, :cond_60

    :try_start_6f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_73
    move-exception v0

    if-eqz v8, :cond_79

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v0
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_62
.end method

.method public hasFormData()Z
    .registers 3

    .prologue
    .line 624
    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewDatabaseClassic;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 626
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .registers 3

    .prologue
    .line 494
    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    const/4 v0, 0x3

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewDatabaseClassic;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 496
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public hasUsernamePassword()Z
    .registers 3

    .prologue
    .line 397
    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewDatabaseClassic;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 399
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 23
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p2, "formdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_b

    .line 563
    :cond_a
    :goto_a
    return-void

    .line 529
    :cond_b
    const-string v15, "(url == ?)"

    .line 530
    .local v15, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 531
    const-wide/16 v17, -0x1

    .line 532
    .local v17, "urlid":J
    const/4 v10, 0x0

    .line 534
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_17
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "(url == ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 537
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 538
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_3e} :catch_ae
    .catchall {:try_start_17 .. :try_end_3e} :catchall_bd

    move-result-wide v17

    .line 548
    :goto_3f
    if-eqz v10, :cond_44

    :try_start_41
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_44
    :goto_44
    const-wide/16 v1, 0x0

    cmp-long v1, v17, v1

    if-ltz v1, :cond_c4

    .line 551
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 552
    .local v16, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 553
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .local v14, "map":Landroid/content/ContentValues;
    const-string/jumbo v1, "urlid"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    :goto_61
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 556
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 557
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "name"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v2, "value"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_61

    .line 562
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "map":Landroid/content/ContentValues;
    .end local v16    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_91
    move-exception v1

    monitor-exit v19
    :try_end_93
    .catchall {:try_start_41 .. :try_end_93} :catchall_91

    throw v1

    .line 540
    :cond_94
    :try_start_94
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v9, "c":Landroid/content/ContentValues;
    const-string/jumbo v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_ac} :catch_ae
    .catchall {:try_start_94 .. :try_end_ac} :catchall_bd

    move-result-wide v17

    goto :goto_3f

    .line 545
    .end local v9    # "c":Landroid/content/ContentValues;
    :catch_ae
    move-exception v11

    .line 546
    .local v11, "e":Ljava/lang/IllegalStateException;
    :try_start_af
    const-string v1, "WebViewDatabaseClassic"

    const-string/jumbo v2, "setFormData"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_bd

    .line 548
    if-eqz v10, :cond_44

    :try_start_b9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :catchall_bd
    move-exception v1

    if-eqz v10, :cond_c3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c3
    throw v1

    .line 562
    :cond_c4
    monitor-exit v19
    :try_end_c5
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_91

    goto/16 :goto_a
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 432
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_b

    .line 445
    :cond_a
    :goto_a
    return-void

    .line 436
    :cond_b
    iget-object v2, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v2

    .line 437
    :try_start_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v0, "c":Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v1, "realm"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 444
    monitor-exit v2

    goto :goto_a

    .end local v0    # "c":Landroid/content/ContentValues;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_38

    throw v1
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "schemePlusHost"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p1, :cond_8

    invoke-direct {p0}, Landroid/webkitsec/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_9

    .line 351
    :cond_8
    :goto_8
    return-void

    .line 343
    :cond_9
    iget-object v2, p0, Landroid/webkitsec/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v0, "c":Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v1, Landroid/webkitsec/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkitsec/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 350
    monitor-exit v2

    goto :goto_8

    .end local v0    # "c":Landroid/content/ContentValues;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v1
.end method
