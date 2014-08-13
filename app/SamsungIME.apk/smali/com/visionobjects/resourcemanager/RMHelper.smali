.class public Lcom/visionobjects/resourcemanager/RMHelper;
.super Ljava/lang/Object;
.source "RMHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;,
        Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;,
        Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private client:Landroid/content/ContentProviderClient;

.field private cr:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field private mParent:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

.field mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

.field mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

.field mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    .line 33
    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    .line 34
    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    .line 38
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mParent:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    .line 41
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    const-string v1, "com.visionobjects.resourcemanager"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/visionobjects/resourcemanager/RMHelper;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/visionobjects/resourcemanager/RMHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mParent:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-object v0
.end method

.method private resourceManagerGetAvailableQuery()V
    .locals 9

    .prologue
    .line 74
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v8

    .line 78
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private resourceManagerGetDownloadingQuery()V
    .locals 9

    .prologue
    .line 166
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Downloading;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v8

    .line 170
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private resourceManagerGetInstalledQuery()V
    .locals 9

    .prologue
    .line 120
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableList()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/RMHelper;->resourceManagerGetAvailableQuery()V

    .line 88
    return-void
.end method

.method public getDownloadingLangList()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/RMHelper;->resourceManagerGetDownloadingQuery()V

    .line 180
    return-void
.end method

.method public getEnginePath()Ljava/lang/String;
    .locals 9

    .prologue
    .line 215
    const-string v8, ""

    .line 216
    .local v8, "enginePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 217
    const/4 v6, 0x0

    .line 219
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Engine;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Engine;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    if-eqz v6, :cond_2

    .line 222
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 227
    :catch_0
    move-exception v7

    .line 228
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    if-eqz v6, :cond_0

    .line 231
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v8

    .line 230
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    throw v0

    :cond_2
    if-eqz v6, :cond_0

    goto :goto_1
.end method

.method public getInstalledLangList()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/RMHelper;->resourceManagerGetInstalledQuery()V

    .line 134
    return-void
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v10, 0x0

    .line 185
    .local v10, "result":[Ljava/lang/String;
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 189
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 194
    :goto_0
    if-eqz v6, :cond_0

    .line 196
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 197
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 198
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    const-string v0, "resource"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_1

    .line 190
    .end local v9    # "i":I
    :catch_0
    move-exception v7

    .line 191
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 203
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    if-eqz v6, :cond_0

    .line 206
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 211
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v10

    .line 205
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    throw v0

    .restart local v9    # "i":I
    :cond_2
    if-eqz v6, :cond_0

    goto :goto_2
.end method
