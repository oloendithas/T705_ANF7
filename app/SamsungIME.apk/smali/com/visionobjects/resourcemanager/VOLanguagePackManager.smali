.class public Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
.super Ljava/lang/Object;
.source "VOLanguagePackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# instance fields
.field private languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field private mAvailableListUpdate:Z

.field public mContext:Landroid/content/Context;

.field private mDownloadingListUpdate:Z

.field private mInstalledListUpdate:Z

.field private mIsRegisterReceiver:Z

.field private mLanguagePacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/VOLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field public mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

.field public mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

.field public mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

.field mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

.field public rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

.field public rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    .line 37
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    .line 38
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    .line 39
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    .line 40
    iput-object v7, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    .line 41
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    .line 43
    iput-object v7, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    .line 57
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    .line 58
    new-instance v5, Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-direct {v5, p1, p0}, Lcom/visionobjects/resourcemanager/RMHelper;-><init>(Landroid/content/Context;Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    .line 59
    new-instance v5, Lcom/visionobjects/resourcemanager/RMLauncher;

    invoke-direct {v5, p1}, Lcom/visionobjects/resourcemanager/RMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    .line 60
    invoke-static {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setLanguagePacksManager(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    .line 62
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v4, "serviceIntent":Landroid/content/Intent;
    const-string v5, "com.visionobjects.resourcemanager"

    const-string v6, "com.visionobjects.resourcemanager.ResourceManagerService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    if-nez v5, :cond_0

    .line 70
    new-instance v5, Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    invoke-direct {v5, p0, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->resourceManagerStartQuery()V

    .line 75
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/RMHelper;->getAvailableList()V

    .line 76
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/RMHelper;->getInstalledLangList()V

    .line 77
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/RMHelper;->getDownloadingLangList()V

    .line 79
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v5, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-direct {v5, p0}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    .line 81
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "progressFilter":Landroid/content/IntentFilter;
    new-instance v5, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-direct {v5, p0}, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    .line 85
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.visionobjects.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "deleteFilter":Landroid/content/IntentFilter;
    new-instance v5, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-direct {v5, p0}, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    .line 89
    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    .line 91
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-direct {v0, p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-object v0
.end method

.method private getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 197
    .end local v0    # "index":I
    .end local p1    # "lang":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v0

    return-object v0
.end method

.method private resourceManagerStartQuery()V
    .locals 9

    .prologue
    .line 270
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

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

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v8

    .line 275
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public clearInstance()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 282
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;
    .locals 1
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    return-object v0
.end method

.method public getEnginePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getEnginePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0, p1, p2}, Lcom/visionobjects/resourcemanager/RMHelper;->getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v0, "ar"

    .line 250
    .local v0, "NO_LOCALE":Ljava/lang/String;
    const-string v1, ""

    .line 251
    .local v1, "languageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 254
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_1
    return-object v1
.end method

.method public registerReceiver()V
    .locals 5

    .prologue
    .line 94
    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    if-nez v3, :cond_0

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-direct {v3, p0}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    .line 97
    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "progressFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-direct {v3, p0}, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    .line 101
    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.visionobjects.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "deleteFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-direct {v3, p0}, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    .line 105
    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    .line 108
    .end local v0    # "deleteFilter":Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "progressFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .line 220
    .local v0, "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v0, :cond_0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    .line 222
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->deleteLanguage()V

    .line 224
    :cond_0
    return-void
.end method

.method public setProgressLanguage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .line 229
    .local v0, "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p2}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setProgress(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 4

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    .line 127
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 119
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .line 211
    .local v0, "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->notifyFailed()V

    .line 213
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getPrevState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public updateSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .line 203
    .local v0, "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->notifySuccess()V

    .line 206
    :cond_0
    return-void
.end method

.method public updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 1
    .param p1, "VOlanguagelistlistener"    # Lcom/touchtype_fluency/util/RefreshListener;

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    .line 131
    iput-boolean v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    .line 132
    iput-boolean v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    .line 133
    iput-boolean v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    .line 135
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getAvailableList()V

    .line 136
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getInstalledLangList()V

    .line 137
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getDownloadingLangList()V

    .line 138
    return-void
.end method

.method public updateVOlangugaeList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/RMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/RMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/RMLanguageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "availableLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/visionobjects/resourcemanager/RMLanguageModel;>;"
    .local p2, "installedLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/visionobjects/resourcemanager/RMLanguageModel;>;"
    .local p3, "downloadingLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/visionobjects/resourcemanager/RMLanguageModel;>;"
    const/4 v6, 0x1

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "mInputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    .line 144
    if-eqz p1, :cond_1

    .line 145
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 146
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "language":Ljava/lang/String;
    new-instance v3, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-direct {v3, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-virtual {v3, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    .line 149
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_0
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    .line 154
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz p2, :cond_5

    .line 155
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .restart local v1    # "language":Ljava/lang/String;
    new-instance v3, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-direct {v3, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v3    # "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-virtual {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getCurrentState()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 158
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    .line 162
    :goto_2
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    goto :goto_2

    .line 166
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_3
    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->setAvailableHWRLanguage()V

    .line 167
    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isWaitingforHWRResource()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    .line 171
    :cond_4
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    if-eqz p3, :cond_8

    .line 174
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .restart local v1    # "language":Ljava/lang/String;
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .line 177
    .restart local v3    # "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v3, :cond_6

    .line 179
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    goto :goto_3

    .line 182
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "voLanguagePack":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_7
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    .line 184
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    if-eqz v4, :cond_9

    .line 185
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    sget-object v5, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-interface {v4, v5}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    .line 186
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    .line 188
    :cond_9
    return-void
.end method
