.class public Lcom/android/server/ssrm/SsrmDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SsrmDatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String;

.field static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;


# instance fields
.field final QUERY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->TAG:Ljava/lang/String;

    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;

    return-void

    .line 26
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x29
        0x9
        0x8
        0x17
        0x3e
        0x1b
        0xe
        0x1b
        0x18
        0x1b
        0x9
        0x1f
        0x32
        0x1f
        0x16
        0xa
        0x1f
        0x8
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x9
        0x9
        0x8
        0x17
        0x25
        0x15
        0x8
        0x1d
        0x54
        0x1e
        0x18
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 57
    const/16 v0, 0x34

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->QUERY:Ljava/lang/String;

    .line 49
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x39
        0x28
        0x3f
        0x3b
        0x2e
        0x3f
        0x5a
        0x2e
        0x3b
        0x38
        0x36
        0x3f
        0x5a
        0xe
        0x5a
        0x52
        0x5a
        0x19
        0x1b
        0xe
        0x1f
        0x1d
        0x15
        0x8
        0x3
        0x5a
        0x2e
        0x3f
        0x22
        0x2e
        0x56
        0x5a
        0xa
        0x1b
        0x19
        0x11
        0x1b
        0x1d
        0x1f
        0x25
        0x16
        0x13
        0x9
        0xe
        0x5a
        0x2e
        0x3f
        0x22
        0x2e
        0x5a
        0x53
        0x41
    .end array-data
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-class v1, Lcom/android/server/ssrm/SsrmDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;

    sget-object v2, Lcom/android/server/ssrm/SsrmDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/android/server/ssrm/SsrmDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate:: "

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onUpgrade:: "

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
