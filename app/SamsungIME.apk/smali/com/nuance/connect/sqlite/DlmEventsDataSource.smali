.class public Lcom/nuance/connect/sqlite/DlmEventsDataSource;
.super Lcom/nuance/connect/sqlite/SQLDataSource;
.source "DlmEventsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;
    }
.end annotation


# static fields
.field private static final APPNAME_TABLE:Ljava/lang/String; = "ab"

.field private static final DB_NAME:Ljava/lang/String; = "dlmevents"

.field private static final DB_VERSION:I = 0x1

.field private static final EVENTS_TABLE:Ljava/lang/String; = "aa"

.field private static final FIELD_APPID:Ljava/lang/String; = "c"

.field private static final FIELD_APPNAME:Ljava/lang/String; = "e"

.field private static final FIELD_CATEGORY:Ljava/lang/String; = "a"

.field private static final FIELD_EVENT:Ljava/lang/String; = "d"

.field private static final FIELD_INPUTTYPE:Ljava/lang/String; = "f"

.field private static final FIELD_LOCALE:Ljava/lang/String; = "k"

.field private static final FIELD_LOCALEID:Ljava/lang/String; = "j"

.field private static final FIELD_LOCATION:Ljava/lang/String; = "h"

.field private static final FIELD_LOCATIONID:Ljava/lang/String; = "g"

.field private static final FIELD_TIMESTAMP:Ljava/lang/String; = "b"

.field private static final LOCALE_TABLE:Ljava/lang/String; = "ae"

.field private static final LOCATION_TABLE:Ljava/lang/String; = "ad"

.field private static final MAX_DATABASE_SIZE:I = 0x100000

.field private static final NEWWORDS_TABLE:Ljava/lang/String; = "ac"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseFull:Z

.field private helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 115
    iput-object p1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    const-string v1, "dlmevents"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    .line 117
    return-void
.end method

.method private clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 427
    .local v2, "completed":Z
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 432
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    .line 433
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v1, "command":Ljava/lang/StringBuilder;
    const-string v4, "DELETE FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE ? NOT IN (SELECT ? FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "aa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    const/4 v2, 0x1

    .line 448
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 452
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "command":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return v2

    .line 441
    :catch_0
    move-exception v3

    .line 442
    .local v3, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUnusedLUEntries("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 444
    .end local v3    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    .line 445
    .local v3, "ex":Landroid/database/SQLException;
    :try_start_2
    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUnusedLUEntries("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "idField"    # Ljava/lang/String;
    .param p4, "luField"    # Ljava/lang/String;

    .prologue
    .line 149
    const-wide/16 v10, -0x1

    .line 150
    .local v10, "index":J
    const/4 v12, 0x0

    .line 151
    .local v12, "searchCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v3, v1

    const/4 v1, 0x1

    aput-object p4, v3, v1

    .line 154
    .local v3, "columnArgs":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 157
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v13, "searchString":Ljava/lang/StringBuilder;
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 162
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 165
    move-object/from16 v0, p3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v10, v1

    .line 176
    :goto_0
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v3    # "columnArgs":[Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "searchString":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-wide v10

    .line 168
    .restart local v3    # "columnArgs":[Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "searchString":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v14, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    goto :goto_0

    .line 172
    .end local v3    # "columnArgs":[Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "searchString":Ljava/lang/StringBuilder;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 173
    .local v9, "e":Landroid/database/SQLException;
    :try_start_2
    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] getIndex("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 176
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private printCursor(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 627
    const-string v0, "[DLM_EVENTS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num Columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "[DLM_EVENTS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Columns Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v0, "[DLM_EVENTS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method


# virtual methods
.method public clearEvents(IJ)V
    .locals 18
    .param p1, "category"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 464
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "d"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "b"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "c"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "a"

    aput-object v3, v4, v2

    .line 468
    .local v4, "columns":[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v17, "where":Ljava/lang/StringBuilder;
    const-string v2, "a"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 473
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v15, v2

    .line 474
    .local v15, "preCount":J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 477
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v11, "command":Ljava/lang/StringBuilder;
    const-string v2, "DELETE FROM "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 486
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v13, v2

    .line 487
    .local v13, "postCount":J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearEvents removed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v5, v15, v13

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 500
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "command":Ljava/lang/StringBuilder;
    .end local v13    # "postCount":J
    .end local v15    # "preCount":J
    .end local v17    # "where":Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, "ab"

    const-string v3, "c"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    const-string v2, "ae"

    const-string v3, "k"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    const-string v2, "ad"

    const-string v3, "h"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    :cond_0
    return-void

    .line 492
    :catch_0
    move-exception v12

    .line 493
    .local v12, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearEvents failed timestamp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v12    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public clearHighPriorityEvents(IJ)V
    .locals 11
    .param p1, "category"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 292
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "b"

    aput-object v1, v2, v0

    .line 294
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v9, "command":Ljava/lang/StringBuilder;
    const-string v0, "DELETE FROM "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 310
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 315
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 324
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "command":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v10

    .line 317
    .local v10, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearHighPriorityEvents failed cat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " timestamp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v10    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 125
    return-void
.end method

.method public getEventCategories()[I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, "categories":[I
    const/4 v0, 0x0

    .line 509
    .local v0, "catCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 511
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 512
    .local v4, "where":Ljava/lang/StringBuffer;
    const-string v6, "SELECT DISTINCT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "aa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    iget-object v6, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-gtz v6, :cond_1

    .line 533
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 534
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    .end local v4    # "where":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v5

    .line 522
    .restart local v4    # "where":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v1, v5, [I

    .line 524
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 525
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 526
    const-string v5, "a"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 527
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 533
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 534
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v3    # "i":I
    .end local v4    # "where":Ljava/lang/StringBuffer;
    :cond_3
    :goto_2
    move-object v5, v1

    .line 540
    goto :goto_0

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEventCategories failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 534
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 533
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 534
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method

.method public getEvents(I)Lorg/json/JSONArray;
    .locals 10
    .param p1, "category"    # I

    .prologue
    .line 363
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 364
    .local v1, "data":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 366
    const/4 v7, 0x1

    :try_start_0
    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 367
    .local v6, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v3, "getEvents":Ljava/lang/StringBuffer;
    const-string v7, "SELECT * FROM "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LEFT OUTER JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ab"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ab"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LEFT OUTER JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ad"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "g"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ad"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "g"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LEFT OUTER JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ae"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "j"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ae"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "j"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    iget-object v7, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 420
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "getEvents":Ljava/lang/StringBuffer;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 394
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v3    # "getEvents":Ljava/lang/StringBuffer;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 396
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v4, "map":Landroid/content/ContentValues;
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 399
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 400
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v7, "1"

    const-string v8, "b"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v7, "89"

    const-string v8, "d"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v7, "91"

    const-string v8, "e"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v7, "98"

    const-string v8, "k"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v7, "99"

    const-string v8, "f"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v7, "90"

    const-string v8, "h"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 413
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "getEvents":Ljava/lang/StringBuffer;
    .end local v4    # "map":Landroid/content/ContentValues;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 414
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v7, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEvents failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 415
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    .line 416
    .local v2, "ex":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEvents failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getHighPriorityEvents(I)Lorg/json/JSONArray;
    .locals 13
    .param p1, "category"    # I

    .prologue
    .line 329
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .local v9, "data":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "a"

    aput-object v1, v2, v0

    .line 334
    .local v2, "columns":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .local v12, "where":Ljava/lang/StringBuffer;
    const-string v0, "a"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 336
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 339
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 357
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v12    # "where":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v9

    .line 343
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v12    # "where":Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 345
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v11, "map":Landroid/content/ContentValues;
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 348
    const-string v0, "d"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 349
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "map":Landroid/content/ContentValues;
    .end local v12    # "where":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v10

    .line 353
    .local v10, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHighPriorityEvents failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "category"    # I
    .param p3, "timestamp"    # J
    .param p5, "appname"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "locale"    # Ljava/lang/String;
    .param p8, "inputType"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 192
    :cond_0
    const/4 v10, 0x0

    .line 244
    :goto_0
    return v10

    .line 195
    :cond_1
    const/4 v10, 0x0

    .line 197
    .local v10, "processed":Z
    :try_start_0
    iget-object v12, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 198
    const-wide/16 v8, -0x1

    .line 199
    .local v8, "locationId":J
    const-wide/16 v6, -0x1

    .line 200
    .local v6, "localeId":J
    const-wide/16 v1, -0x1

    .line 202
    .local v1, "appId":J
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 204
    const-string v12, "ab"

    const-string v13, "c"

    const-string v14, "e"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 207
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 209
    const-string v12, "ad"

    const-string v13, "g"

    const-string v14, "h"

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 213
    :cond_3
    if-eqz p7, :cond_4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 215
    const-string v12, "ae"

    const-string v13, "j"

    const-string v14, "k"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 218
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "a"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v12, "d"

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v12, "b"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v12, "c"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v12, "g"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v12, "j"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v12, "f"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    iget-object v12, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "aa"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 230
    .local v4, "index":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gez v12, :cond_5

    .line 231
    iget-object v12, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertEvent failed to insert event: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_1
    iget-object v12, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 233
    :cond_5
    :try_start_1
    iget-object v12, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    const/4 v10, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "appId":J
    .end local v4    # "index":J
    .end local v6    # "localeId":J
    .end local v8    # "locationId":J
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Landroid/database/SQLException;
    :try_start_2
    iget-object v12, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertEvent failed to insert event: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") SQL message"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    const/4 v10, 0x0

    .line 241
    iget-object v12, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v12

    iget-object v13, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12
.end method

.method public insertHighPriorityEvent(Ljava/lang/String;IJ)Z
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "category"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    :cond_0
    const/4 v3, 0x0

    .line 280
    :goto_0
    return v3

    .line 256
    :cond_1
    const/4 v3, 0x1

    .line 258
    .local v3, "processed":Z
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 260
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "a"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v5, "b"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v5, "d"

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ac"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 266
    .local v1, "index":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    .line 267
    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertHighPriorityEvents failed to insert event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_1
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 270
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    const/4 v3, 0x1

    goto :goto_1

    .line 273
    .end local v1    # "index":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertHighPriorityEvent failed to insert event: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    const/4 v3, 0x0

    .line 278
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public isFull()Z
    .locals 7

    .prologue
    .line 544
    iget-boolean v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    const/4 v3, 0x0

    .line 547
    .local v3, "pageSizeCur":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 550
    .local v1, "pageCountCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "PRAGMA page_size;"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 551
    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "PRAGMA page_count;"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 553
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 556
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 557
    .local v2, "pageSize":I
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 559
    .local v0, "pageCount":I
    const/high16 v4, 0x100000

    mul-int v5, v2, v0

    if-ge v4, v5, :cond_0

    .line 560
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 569
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 577
    .end local v0    # "pageCount":I
    .end local v1    # "pageCountCur":Landroid/database/Cursor;
    .end local v2    # "pageSize":I
    .end local v3    # "pageSizeCur":Landroid/database/Cursor;
    :cond_2
    iget-boolean v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    return v4

    .line 568
    .restart local v1    # "pageCountCur":Landroid/database/Cursor;
    .restart local v3    # "pageSizeCur":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 569
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "isOpen":Z
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 133
    :cond_0
    return v0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    return-void
.end method

.method public printDatabaseContents()V
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x1

    .line 581
    const/4 v10, 0x0

    .line 582
    .local v10, "row":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 586
    const-string v0, "ab"

    invoke-direct {p0, v0, v10}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 587
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 589
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 591
    const-string v0, "aa"

    invoke-direct {p0, v0, v10}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 592
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 594
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 596
    const-string v0, "ac"

    invoke-direct {p0, v0, v10}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 597
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p0, v13}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getHighPriorityEvents(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 608
    .local v8, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add word events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 609
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v14, :cond_1

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 611
    .local v11, "time":J
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearing add word Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p0, v13, v11, v12}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearHighPriorityEvents(IJ)V

    .line 615
    .end local v11    # "time":J
    :cond_1
    invoke-virtual {p0, v13}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getEvents(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 616
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regular events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v14, :cond_2

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 619
    .restart local v11    # "time":J
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearing regular Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 620
    invoke-virtual {p0, v13, v11, v12}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    .line 624
    .end local v8    # "events":Lorg/json/JSONArray;
    .end local v11    # "time":J
    :cond_2
    return-void

    .line 598
    :catch_0
    move-exception v9

    .line 599
    .local v9, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printDatabaseContents failed; message: "

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

    .line 602
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 602
    .end local v9    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 603
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DlmEventsDataStore.reset()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->close()V

    .line 143
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    const-string v1, "dlmevents"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    .line 145
    return-void
.end method

.method public verifyDatabase()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
