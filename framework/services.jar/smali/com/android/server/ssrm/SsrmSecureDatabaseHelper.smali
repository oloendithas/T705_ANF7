.class public Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
.super Landroid/database/sqlite/SQLiteSecureOpenHelper;
.source "SsrmSecureDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String;

.field static final DATABASE_VERSION:I = 0x1

.field static final ORIG_DATABASE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field static mPassword:[B

.field static sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;


# instance fields
.field db_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->ORIG_DATABASE_NAME:Ljava/lang/String;

    .line 26
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    return-void

    .line 13
    nop

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
        0x29
        0x1f
        0x19
        0xf
        0x8
        0x1f
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

    .line 21
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

    .line 26
    :array_2
    .array-data 4
        0x9
        0x9
        0x8
        0x17
        0x25
        0x9
        0x1f
        0x19
        0xf
        0x8
        0x1f
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
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    .line 49
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x55
        0x1e
        0x1b
        0xe
        0x1b
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
    .end array-data
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-class v1, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    sget-object v2, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateSecureDB(Ljava/lang/String;)V
    .locals 5
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->ORIG_DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "orig_db_file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "sec_db_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    sget-object v3, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v4, "Original Plain database file does not exist"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 62
    sget-object v3, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v4, "Delete secure database file"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->mPassword:[B

    .line 68
    :try_start_0
    sget-object v3, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->mPassword:[B

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onUpgrade::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
