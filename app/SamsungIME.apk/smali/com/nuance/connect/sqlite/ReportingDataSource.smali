.class public Lcom/nuance/connect/sqlite/ReportingDataSource;
.super Lcom/nuance/connect/sqlite/SQLDataSource;
.source "ReportingDataSource.java"


# static fields
.field private static final AGGREGATE_TABLE:Ljava/lang/String; = "aa"

.field private static final DATAPOINT_TABLE:Ljava/lang/String; = "ab"

.field private static final EXTRA_DELIMITER:Ljava/lang/String; = ", "

.field private static final FIELD_AGG_POINT_COUNT:Ljava/lang/String; = "f"

.field private static final FIELD_AGG_POINT_INTERVAL:Ljava/lang/String; = "e"

.field private static final FIELD_AGG_POINT_VALUE:Ljava/lang/String; = "d"

.field private static final FIELD_EXTRA:Ljava/lang/String; = "g"

.field private static final FIELD_ID:Ljava/lang/String; = "a"

.field private static final FIELD_NAME:Ljava/lang/String; = "b"

.field private static final FIELD_START_TIME:Ljava/lang/String; = "h"

.field private static final FIELD_TIMESTAMP:Ljava/lang/String; = "j"

.field private static final FIELD_UPDATED_TIME:Ljava/lang/String; = "i"

.field private static final FIELD_VALUE:Ljava/lang/String; = "c"

.field private static final NAME_LIST:Ljava/lang/String; = "NAME_LIST"


# instance fields
.field private helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    .line 24
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 47
    new-instance v0, Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    invoke-direct {v0, p1}, Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    .line 48
    return-void
.end method

.method private generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "current"    # Lorg/json/JSONObject;

    .prologue
    .line 429
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v4, "nameObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v2, "idObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 433
    .local v1, "exists":Z
    const-string v5, "b"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 437
    const/4 v1, 0x1

    .line 443
    :goto_0
    if-nez v1, :cond_0

    .line 444
    :try_start_1
    const-string v5, "NAME_LIST"

    invoke-virtual {p2, v5, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v5, "63"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    :cond_0
    const-string v5, "15"

    const-string v6, "a"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v5, "23"

    const-string v6, "g"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v5, "26"

    const-string v6, "h"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 451
    const-string v5, "27"

    const-string v6, "i"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v5, "37"

    const-string v6, "f"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    const-string v5, "22"

    const-string v6, "d"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 454
    const-string v5, "24"

    const-string v6, "e"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 458
    const-string v5, "16"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v5, "25"

    const-string v6, "SUM"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v5, "63"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    :goto_1
    return-object p2

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "ex":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 462
    .end local v0    # "ex":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 463
    .restart local v0    # "ex":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Error generating point."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 473
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 476
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "15"

    const-string v4, "a"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string v3, "16"

    const-string v4, "b"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string v3, "22"

    const-string v4, "c"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string v3, "23"

    const-string v4, "g"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string v3, "1"

    const-string v4, "j"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v3, "15"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "15"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 497
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v1

    .line 486
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "16"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "16"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v1, v2

    .line 487
    goto :goto_0

    .line 490
    :cond_4
    const-string v3, "22"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "22"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_5
    move-object v1, v2

    .line 491
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error generating individual point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private makePlaceholders(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 p1, p1, -0x1

    .line 508
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 511
    const-string v2, ", ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clearAggregate(J)Z
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "cleared":Z
    const-string v4, "i <= ?"

    .line 520
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 523
    .local v3, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 526
    .local v2, "rowsAffected":I
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "aa"

    invoke-virtual {v5, v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 531
    :goto_0
    if-lez v2, :cond_0

    .line 532
    const/4 v0, 0x1

    .line 535
    :cond_0
    return v0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Issue clearing data points."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearIndividual(J)Z
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "cleared":Z
    const-string v4, "j <= ?"

    .line 542
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 545
    .local v3, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 548
    .local v2, "rowsAffected":I
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ab"

    invoke-virtual {v5, v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 553
    :goto_0
    if-lez v2, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 557
    :cond_0
    return v0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Issue clearing individual data points."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 56
    return-void
.end method

.method public createAggregatePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 36
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pointValueEncrypted"    # Ljava/lang/String;
    .param p4, "pointIntervalEncrypted"    # Ljava/lang/String;
    .param p5, "extra"    # Ljava/lang/String;
    .param p6, "timestamp"    # J

    .prologue
    .line 161
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Creating Individual Point without a key"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 163
    const/16 v26, 0x0

    .line 283
    :goto_0
    return v26

    .line 166
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating Individual Point without a name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 168
    const/16 v26, 0x0

    goto :goto_0

    .line 171
    :cond_3
    const/16 v26, 0x0

    .line 173
    .local v26, "processed":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 175
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v29, "searchString":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3

    const/4 v3, 0x1

    aput-object p2, v7, v3

    .line 182
    .local v7, "searchArgs":[Ljava/lang/String;
    const-string v3, "a"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v3, " = ? AND "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v3, "b"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v3, " = ?"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    const/16 v28, 0x0

    .line 189
    .local v28, "searchCursor":Landroid/database/Cursor;
    const/4 v3, 0x5

    :try_start_1
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "d"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "e"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "f"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "g"

    aput-object v4, v5, v3

    .line 196
    .local v5, "columnArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 199
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 200
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 204
    .local v24, "pointValue":D
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v22

    .line 205
    .local v22, "pointInterval":D
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 208
    const-string v3, "d"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 209
    .local v17, "existingValue":D
    const-string v3, "e"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 210
    .local v15, "existingInterval":D
    const-string v3, "f"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptInt(Ljava/lang/String;)I

    move-result v13

    .line 211
    .local v13, "existingCount":I
    const-string v3, "g"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, "existingExtra":Ljava/lang/String;
    add-double v32, v17, v24

    .line 214
    .local v32, "totalValue":D
    add-double v30, v15, v22

    .line 215
    .local v30, "totalInterval":D
    add-int/lit8 v11, v13, 0x1

    .line 217
    .local v11, "count":I
    if-nez v14, :cond_6

    const-string v21, ""

    .line 219
    .local v21, "newExtra":Ljava/lang/String;
    :goto_1
    if-eqz p5, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 224
    :cond_4
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v34, "updateValues":Landroid/content/ContentValues;
    const-string v3, "d"

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v3, "e"

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v3, "f"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v3, "g"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "i"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v3, v4, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 234
    .local v27, "rowsAffected":I
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_7

    .line 235
    const/16 v26, 0x1

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v11    # "count":I
    .end local v13    # "existingCount":I
    .end local v14    # "existingExtra":Ljava/lang/String;
    .end local v15    # "existingInterval":D
    .end local v17    # "existingValue":D
    .end local v21    # "newExtra":Ljava/lang/String;
    .end local v22    # "pointInterval":D
    .end local v24    # "pointValue":D
    .end local v27    # "rowsAffected":I
    .end local v30    # "totalInterval":D
    .end local v32    # "totalValue":D
    .end local v34    # "updateValues":Landroid/content/ContentValues;
    :goto_2
    if-eqz v28, :cond_5

    .line 270
    :try_start_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    .end local v5    # "columnArgs":[Ljava/lang/String;
    :cond_5
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .restart local v5    # "columnArgs":[Ljava/lang/String;
    .restart local v11    # "count":I
    .restart local v13    # "existingCount":I
    .restart local v14    # "existingExtra":Ljava/lang/String;
    .restart local v15    # "existingInterval":D
    .restart local v17    # "existingValue":D
    .restart local v22    # "pointInterval":D
    .restart local v24    # "pointValue":D
    .restart local v30    # "totalInterval":D
    .restart local v32    # "totalValue":D
    :cond_6
    move-object/from16 v21, v14

    .line 217
    goto/16 :goto_1

    .line 238
    .restart local v21    # "newExtra":Ljava/lang/String;
    .restart local v27    # "rowsAffected":I
    .restart local v34    # "updateValues":Landroid/content/ContentValues;
    :cond_7
    if-nez v27, :cond_8

    .line 239
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing aggregate data point, unable to save data change."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 240
    const/16 v26, 0x0

    goto :goto_2

    .line 242
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error updating aggregate, we affected more then one row"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 243
    const/16 v26, 0x1

    goto :goto_2

    .line 247
    .end local v11    # "count":I
    .end local v13    # "existingCount":I
    .end local v14    # "existingExtra":Ljava/lang/String;
    .end local v15    # "existingInterval":D
    .end local v17    # "existingValue":D
    .end local v21    # "newExtra":Ljava/lang/String;
    .end local v22    # "pointInterval":D
    .end local v24    # "pointValue":D
    .end local v27    # "rowsAffected":I
    .end local v30    # "totalInterval":D
    .end local v32    # "totalValue":D
    .end local v34    # "updateValues":Landroid/content/ContentValues;
    :cond_9
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v35, "values":Landroid/content/ContentValues;
    const-string v3, "a"

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v3, "b"

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v3, "f"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "e"

    move-object/from16 v0, v35

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "d"

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v3, "g"

    move-object/from16 v0, v35

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "h"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    const-string v3, "i"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 258
    .local v19, "insertId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-lez v3, :cond_a

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    const/16 v26, 0x1

    goto/16 :goto_2

    .line 262
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 265
    .end local v5    # "columnArgs":[Ljava/lang/String;
    .end local v19    # "insertId":J
    .end local v35    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v12

    .line 266
    .local v12, "ex":Landroid/database/SQLException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error creating aggregate point."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    if-eqz v28, :cond_5

    .line 270
    :try_start_6
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 271
    :catch_2
    move-exception v3

    goto/16 :goto_3

    .line 268
    .end local v12    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v28, :cond_b

    .line 270
    :try_start_7
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 272
    :cond_b
    :goto_4
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 277
    .end local v7    # "searchArgs":[Ljava/lang/String;
    .end local v28    # "searchCursor":Landroid/database/Cursor;
    .end local v29    # "searchString":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v3

    .line 278
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_5

    .line 280
    :goto_5
    throw v3

    .line 271
    .restart local v5    # "columnArgs":[Ljava/lang/String;
    .restart local v7    # "searchArgs":[Ljava/lang/String;
    .restart local v28    # "searchCursor":Landroid/database/Cursor;
    .restart local v29    # "searchString":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v3

    goto/16 :goto_3

    .end local v5    # "columnArgs":[Ljava/lang/String;
    :catch_4
    move-exception v4

    goto :goto_4

    .line 279
    .end local v7    # "searchArgs":[Ljava/lang/String;
    .end local v28    # "searchCursor":Landroid/database/Cursor;
    .end local v29    # "searchString":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v4

    goto :goto_5
.end method

.method public createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .prologue
    const/4 v3, 0x0

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 91
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Creating Individual Point without a key"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 137
    :goto_0
    return v3

    .line 95
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating Individual Point without a name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 101
    :cond_4
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating Individual Point without a value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_5
    const/4 v3, 0x0

    .line 107
    .local v3, "processed":Z
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 109
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "a"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "b"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v5, "c"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v5, "g"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "j"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ab"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 119
    .local v1, "insertId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_6

    .line 120
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v3, 0x1

    .line 132
    .end local v1    # "insertId":J
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 123
    .restart local v1    # "insertId":J
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Error writing individual data point, unable to save data change."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    const/4 v3, 0x0

    goto :goto_1

    .line 126
    .end local v1    # "insertId":J
    :catch_1
    move-exception v0

    .line 127
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_4
    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing individual data point: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    const/4 v3, 0x0

    goto :goto_1

    .line 131
    .end local v0    # "ex":Landroid/database/SQLException;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    .line 132
    :try_start_5
    iget-object v6, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 134
    :goto_2
    throw v5

    .line 133
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method public getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 20
    .param p1, "validPoints"    # [Ljava/lang/String;
    .param p2, "lastAggregateTime"    # J

    .prologue
    .line 290
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 291
    .local v11, "data":Lorg/json/JSONArray;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v19, "whereClause":Ljava/lang/StringBuilder;
    const-string v10, "i DESC"

    .line 294
    .local v10, "orderBy":Ljava/lang/String;
    const/16 v18, 0x0

    .line 296
    .local v18, "searchCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "i"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v3, " <="

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    if-eqz p1, :cond_2

    .line 301
    move-object/from16 v0, p1

    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 348
    if-eqz v18, :cond_0

    .line 350
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 356
    :cond_0
    :goto_0
    return-object v11

    .line 305
    :cond_1
    :try_start_2
    const-string v3, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v3, "a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v3, " in ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v3, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    .line 320
    :goto_1
    if-eqz v18, :cond_5

    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 321
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    .local v12, "dataMap":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "NAME_LIST"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    :goto_2
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v14, v3, :cond_4

    .line 330
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v15, "map":Landroid/content/ContentValues;
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/nuance/connect/sqlite/ReportingDataSource;->generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    .line 333
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 329
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 315
    .end local v12    # "dataMap":Lorg/json/JSONObject;
    .end local v14    # "i":I
    .end local v15    # "map":Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 316
    .local v13, "ex":Landroid/database/SQLException;
    const/16 v18, 0x0

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Issue mapping values when generating aggregate values."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 348
    .end local v13    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_3

    .line 350
    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_4

    .line 352
    :cond_3
    :goto_4
    throw v3

    .line 337
    .restart local v12    # "dataMap":Lorg/json/JSONObject;
    .restart local v14    # "i":I
    :cond_4
    :try_start_8
    const-string v3, "NAME_LIST"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 339
    .local v17, "nameList":Lorg/json/JSONArray;
    const/4 v14, 0x0

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v14, v3, :cond_5

    .line 340
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 341
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 339
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 343
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "nameList":Lorg/json/JSONArray;
    :catch_1
    move-exception v13

    .line 344
    .local v13, "ex":Lorg/json/JSONException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Issue mapping values when generating aggregate value."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 348
    .end local v12    # "dataMap":Lorg/json/JSONObject;
    .end local v13    # "ex":Lorg/json/JSONException;
    .end local v14    # "i":I
    :cond_5
    if-eqz v18, :cond_0

    .line 350
    :try_start_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 351
    :catch_2
    move-exception v3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    goto/16 :goto_0

    :catch_4
    move-exception v4

    goto :goto_4

    .line 326
    .restart local v12    # "dataMap":Lorg/json/JSONObject;
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method public getIndividualPoints([Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 18
    .param p1, "validPoints"    # [Ljava/lang/String;
    .param p2, "lastIndividualTime"    # J

    .prologue
    .line 360
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 362
    .local v11, "data":Lorg/json/JSONArray;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v17, "whereClause":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 364
    .local v7, "validPointsEncrypted":[Ljava/lang/String;
    const-string v10, "j DESC"

    .line 366
    .local v10, "orderBy":Ljava/lang/String;
    const-string v3, "j"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v3, " <="

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    if-eqz p1, :cond_2

    .line 371
    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-object v11

    .line 376
    :cond_1
    const-string v3, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, "a"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, " in ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v3, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v7, v3, [Ljava/lang/String;

    .line 383
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v13, v3, :cond_2

    .line 384
    aget-object v3, p1, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 383
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 388
    .end local v13    # "i":I
    :cond_2
    const/16 v16, 0x0

    .line 391
    .local v16, "searchCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ab"

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 394
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 395
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 397
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v13, v3, :cond_4

    .line 398
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v15, "map":Landroid/content/ContentValues;
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nuance/connect/sqlite/ReportingDataSource;->generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v14

    .line 401
    .local v14, "json":Lorg/json/JSONObject;
    if-nez v14, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "attempting to load an invalid point."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 406
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 397
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 404
    :cond_3
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 411
    .end local v13    # "i":I
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v15    # "map":Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 412
    .local v12, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error generating individual points: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    if-eqz v16, :cond_0

    .line 416
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 417
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 410
    .end local v12    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_4
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    if-eqz v16, :cond_0

    .line 416
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 417
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 414
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_5

    .line 416
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 418
    :cond_5
    :goto_4
    throw v3

    .line 417
    :catch_3
    move-exception v4

    goto :goto_4
.end method

.method public getLastAggregatePoint()J
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 692
    const-wide/16 v11, -0x1

    .line 693
    .local v11, "lastPointTimestamp":J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "i"

    aput-object v0, v2, v1

    .line 696
    .local v2, "columnArgs":[Ljava/lang/String;
    const-string v7, "i DESC"

    .line 698
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v9, 0x0

    .line 700
    .local v9, "aggregateLastCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 703
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 704
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 705
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 706
    .local v13, "value":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v11

    .line 712
    .end local v13    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    .line 713
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_1
    :goto_0
    return-wide v11

    .line 709
    :catch_0
    move-exception v10

    .line 710
    .local v10, "ex":Landroid/database/SQLException;
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Problem getting last point."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    if-eqz v9, :cond_1

    .line 713
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 712
    .end local v10    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 713
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getLastIndividualPoint()J
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 721
    const-wide/16 v11, -0x1

    .line 722
    .local v11, "lastPointTimestamp":J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "j"

    aput-object v0, v2, v1

    .line 725
    .local v2, "columnArgs":[Ljava/lang/String;
    const-string v7, "j DESC"

    .line 727
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v10, 0x0

    .line 729
    .local v10, "individualLastCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 732
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 733
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 734
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 735
    .local v13, "value":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v11

    .line 740
    .end local v13    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    .line 741
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 745
    :cond_1
    :goto_0
    return-wide v11

    .line 737
    :catch_0
    move-exception v9

    .line 738
    .local v9, "ex":Landroid/database/SQLException;
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Problem getting last individual point."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    if-eqz v10, :cond_1

    .line 741
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 740
    .end local v9    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 741
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public hasAggregate()Z
    .locals 12

    .prologue
    .line 749
    const/4 v11, 0x0

    .line 750
    .local v11, "recordsExist":Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "i"

    aput-object v1, v2, v0

    .line 754
    .local v2, "columnArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 756
    .local v9, "aggregateLastCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 759
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 760
    const/4 v11, 0x1

    .line 765
    :cond_0
    if-eqz v9, :cond_1

    .line 766
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 770
    :cond_1
    :goto_0
    return v11

    .line 762
    :catch_0
    move-exception v10

    .line 763
    .local v10, "ex":Landroid/database/SQLException;
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "individual has no records."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    if-eqz v9, :cond_1

    .line 766
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 765
    .end local v10    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 766
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public hasIndividual()Z
    .locals 12

    .prologue
    .line 774
    const/4 v11, 0x0

    .line 775
    .local v11, "recordsExist":Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "j"

    aput-object v1, v2, v0

    .line 779
    .local v2, "columnArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 781
    .local v10, "individualLastCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 784
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 785
    const/4 v11, 0x1

    .line 790
    :cond_0
    if-eqz v10, :cond_1

    .line 791
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 795
    :cond_1
    :goto_0
    return v11

    .line 787
    :catch_0
    move-exception v9

    .line 788
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "aggregate has no records."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    if-eqz v10, :cond_1

    .line 791
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 790
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 791
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public limitAggregate(I)Z
    .locals 18
    .param p1, "number"    # I

    .prologue
    .line 601
    const/4 v11, 0x0

    .line 602
    .local v11, "cleared":Z
    const-wide/16 v14, 0x0

    .line 605
    .local v14, "lastPointTimestamp":J
    const/4 v10, 0x0

    .line 607
    .local v10, "aggregateLastCursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v3, v1

    .line 610
    .local v3, "columnArgs":[Ljava/lang/String;
    const-string v8, "i DESC"

    .line 611
    .local v8, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 614
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 615
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 616
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 617
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 621
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    .line 623
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_2

    .line 630
    const/4 v1, 0x1

    :try_start_2
    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    .line 633
    .local v12, "deleteArgs":[Ljava/lang/String;
    const-string v17, "i < ?"

    .line 634
    .local v17, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    .end local v12    # "deleteArgs":[Ljava/lang/String;
    .end local v17    # "whereClause":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    .line 644
    .end local v3    # "columnArgs":[Ljava/lang/String;
    .end local v8    # "orderBy":Ljava/lang/String;
    :goto_1
    return v11

    .line 621
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_3

    .line 623
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 625
    :cond_3
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 638
    :catch_0
    move-exception v13

    .line 639
    .local v13, "ex":Landroid/database/SQLException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error limiting points."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 640
    .end local v13    # "ex":Landroid/database/SQLException;
    :catchall_1
    move-exception v1

    throw v1

    .line 624
    .restart local v3    # "columnArgs":[Ljava/lang/String;
    .restart local v8    # "orderBy":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_0

    .end local v3    # "columnArgs":[Ljava/lang/String;
    .end local v8    # "orderBy":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public limitIndividual(I)Z
    .locals 18
    .param p1, "number"    # I

    .prologue
    .line 648
    const/4 v10, 0x0

    .line 649
    .local v10, "cleared":Z
    const-wide/16 v14, 0x0

    .line 652
    .local v14, "lastPointTimestamp":J
    const/4 v13, 0x0

    .line 654
    .local v13, "individualLastCursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "j"

    aput-object v2, v3, v1

    .line 657
    .local v3, "columnArgs":[Ljava/lang/String;
    const-string v8, "j DESC"

    .line 658
    .local v8, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 661
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 662
    invoke-interface {v13}, Landroid/database/Cursor;->moveToLast()Z

    .line 663
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 664
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 667
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v13, :cond_1

    .line 669
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 675
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_2

    .line 676
    const/4 v1, 0x1

    :try_start_2
    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 679
    .local v11, "deleteArgs":[Ljava/lang/String;
    const-string v17, "j < ?"

    .line 680
    .local v17, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 683
    .end local v11    # "deleteArgs":[Ljava/lang/String;
    .end local v17    # "whereClause":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    .line 688
    .end local v3    # "columnArgs":[Ljava/lang/String;
    .end local v8    # "orderBy":Ljava/lang/String;
    :goto_1
    return v10

    .line 667
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_3

    .line 669
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 671
    :cond_3
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 684
    :catch_0
    move-exception v12

    .line 685
    .local v12, "ex":Landroid/database/SQLException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error limiting individual points."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 670
    .end local v12    # "ex":Landroid/database/SQLException;
    .restart local v3    # "columnArgs":[Ljava/lang/String;
    .restart local v8    # "orderBy":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_0

    .end local v3    # "columnArgs":[Ljava/lang/String;
    .end local v8    # "orderBy":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public numAggregate()I
    .locals 6

    .prologue
    .line 561
    const/4 v2, 0x0

    .line 564
    .local v2, "num":I
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT count(*) FROM aa"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 567
    .local v0, "aggregateCountCursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 568
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 572
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0    # "aggregateCountCursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "ex":Landroid/database/SQLException;
    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Problem getting data count."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public numIndividual()I
    .locals 6

    .prologue
    .line 581
    const/4 v2, 0x0

    .line 584
    .local v2, "num":I
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT count(*) FROM ab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 587
    .local v1, "individualCountCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 588
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 589
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 592
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v1    # "individualCountCursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/database/SQLException;
    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Problem getting individual data count."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method

.method public verifyDatabase()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;->validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;->onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;->validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingSQLiteHelper;->onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void
.end method
