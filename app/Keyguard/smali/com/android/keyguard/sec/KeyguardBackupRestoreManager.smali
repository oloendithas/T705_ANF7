.class public Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;,
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;,
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String;

.field private static REQUIRED_SIZE:J

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String;

.field public static RESULT_KEY:Ljava/lang/String;

.field public static SOURCE_KEY:Ljava/lang/String;

.field private static basePath:Ljava/lang/String;

.field private static sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private static source:Ljava/lang/String;


# instance fields
.field private mBasePath:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

.field private mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

.field private mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "RESULT"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    .line 35
    const-string v0, "ERR_CODE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    .line 36
    const-string v0, "REQ_SIZE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 37
    const-string v0, "SOURCE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    .line 39
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 43
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 44
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;-><init>(Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "KeyguardBackupRestoreManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    sput-object p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    sput-object p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->source:Ljava/lang/String;

    return-object p0
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "createBackupFiles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 207
    const-string v0, "wallpaper/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    return-void
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/sec/KeyguardWallpaperUser;>;"
    new-instance v0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    const/16 v2, 0x65

    invoke-direct {v0, v2, p1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;-><init>(ILjava/lang/String;)V

    .line 227
    .local v0, "object":Lcom/android/keyguard/sec/KeyguardWallpaperUser;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Lcom/android/keyguard/sec/KeyguardGenerateXML;

    invoke-direct {v2, v1, p2}, Lcom/android/keyguard/sec/KeyguardGenerateXML;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    if-nez v0, :cond_12

    .line 120
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 121
    :cond_12
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 235
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x1

    .line 241
    :goto_2d
    return v1

    .line 238
    :cond_2e
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method private makeDir(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "dir_path"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 248
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_2c
    return-object v0

    .line 250
    :cond_2d
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method


# virtual methods
.method public chageFileAttr(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 398
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 400
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist File("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 402
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 404
    :cond_33
    return-void
.end method

.method public copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "desPath"    # Ljava/lang/String;

    .prologue
    .line 256
    const-wide/16 v3, 0x0

    .line 257
    .local v3, "fsize":J
    const/4 v8, 0x0

    .line 258
    .local v8, "fin":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 260
    .local v10, "fout":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_4d

    .line 261
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v9, "fin":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_67

    .line 263
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v11, "fout":Ljava/io/FileOutputStream;
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 264
    .local v0, "inc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 266
    .local v5, "outc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 267
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFile( fsize = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ")"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 271
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 272
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 273
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 274
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_49} :catch_6a

    .line 294
    const/4 v1, 0x1

    move-object v10, v11

    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v0    # "inc":Ljava/nio/channels/FileChannel;
    .end local v5    # "outc":Ljava/nio/channels/FileChannel;
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :goto_4c
    return v1

    .line 275
    :catch_4d
    move-exception v6

    .line 276
    .local v6, "e":Ljava/lang/Exception;
    :goto_4e
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    if-eqz v8, :cond_56

    .line 279
    :try_start_53
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_5d

    .line 284
    :cond_56
    :goto_56
    if-eqz v10, :cond_5b

    .line 286
    :try_start_58
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_62

    .line 291
    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    goto :goto_4c

    .line 280
    :catch_5d
    move-exception v7

    .line 281
    .local v7, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_56

    .line 287
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_62
    move-exception v7

    .line 288
    .restart local v7    # "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5b

    .line 275
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    :catch_67
    move-exception v6

    move-object v8, v9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    goto :goto_4e

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    :catch_6a
    move-exception v6

    move-object v10, v11

    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    goto :goto_4e
.end method

.method public disableLiveWallpaper(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 389
    return-void
.end method

.method public getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLiveWallpaper(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_f

    const/4 v0, 0x0

    :cond_f
    return v0
.end method

.method public launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "isBackup"    # Z
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "launchKeyguardBackuporRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_f

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_e
    return-void

    .line 136
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    const-string v5, "KeyguardBackupRestoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushRestoreFiles( basePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Lcom/android/keyguard/sec/KeyguardXmlParser;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, p1, v5}, Lcom/android/keyguard/sec/KeyguardXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    .local v0, "keyguardParser":Lcom/android/keyguard/sec/KeyguardXmlParser;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardXmlParser;->getObject()Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    move-result-object v1

    .line 354
    .local v1, "mItem":Lcom/android/keyguard/sec/KeyguardWallpaperUser;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "restoreFromPath":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->splitFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "restoreFileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.android.keyguard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "restoreToFullPath":Ljava/lang/String;
    const-string v5, "/data/data/com.android.keyguard/"

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 360
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 361
    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->chageFileAttr(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, p1, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    const-string v5, "KeyguardBackupRestoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushRestoreFiles( Saved path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method public setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 379
    return-void
.end method

.method public splitFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "temp":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "strFileName":Ljava/lang/String;
    return-object v0
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v11, "KeyguardBackupRestoreManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startBackup( basePath = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", source = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    .line 142
    const-wide/16 v1, 0x0

    .line 143
    .local v1, "availableBlocks":J
    const-wide/16 v3, 0x0

    .line 144
    .local v3, "blockSizeInBytes":J
    const-wide/32 v6, 0x40000000

    .line 145
    .local v6, "freeSpaceInBytes":J
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "wallpaperPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    .line 149
    :try_start_52
    new-instance v9, Landroid/os/StatFs;

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {v9, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 150
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v1, v11

    .line 151
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v3, v11

    .line 152
    mul-long v6, v1, v3

    .line 153
    const-string v11, "KeyguardBackupRestoreManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startBackup( StatFs : availableBlocks = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", blockSizeInBytes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", freeSpaceInBytes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_97} :catch_10b

    .line 162
    .end local v9    # "stat":Landroid/os/StatFs;
    :goto_97
    :try_start_97
    sget-wide v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v11, v6, v11

    if-gez v11, :cond_110

    .line 163
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 164
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 165
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a9} :catch_123

    .line 190
    :goto_a9
    const-string v11, "KeyguardBackupRestoreManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startBackup( mResult = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mErrorCode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v8, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v12}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v12}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v12}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void

    .line 156
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_10b
    move-exception v5

    .line 157
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_97

    .line 167
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_110
    :try_start_110
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_132

    .line 168
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 169
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 170
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_122} :catch_123

    goto :goto_a9

    .line 184
    :catch_123
    move-exception v5

    .line 185
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 186
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 187
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_a9

    .line 172
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_132
    if-eqz v10, :cond_14d

    :try_start_134
    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->hasFile(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14d

    .line 173
    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 175
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 176
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_a9

    .line 178
    :cond_14d
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 179
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 180
    sget-object v11, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_159} :catch_123

    goto/16 :goto_a9
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v9, "KeyguardBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRestore( basePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", source = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "lockscreen.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 302
    const-wide/16 v0, 0x0

    .line 303
    .local v0, "availableBlocks":J
    const-wide/16 v2, 0x0

    .line 304
    .local v2, "blockSizeInBytes":J
    const-wide/32 v5, 0x40000000

    .line 308
    .local v5, "freeSpaceInBytes":J
    :try_start_57
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 309
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 310
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 311
    mul-long v5, v0, v2

    .line 312
    const-string v9, "KeyguardBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRestore( StatFs : availableBlocks = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", blockSizeInBytes = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", freeSpaceInBytes = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_9a} :catch_10c

    .line 321
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_9a
    :try_start_9a
    sget-wide v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_111

    .line 322
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 323
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 324
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ac} :catch_124

    .line 338
    :goto_ac
    const-string v9, "KeyguardBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRestore( mResult = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mErrorCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v7, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v7, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    return-void

    .line 315
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_10c
    move-exception v4

    .line 316
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9a

    .line 326
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_111
    :try_start_111
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->disableLiveWallpaper(Landroid/content/Context;)V

    .line 328
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 329
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 330
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_123} :catch_124

    goto :goto_ac

    .line 332
    :catch_124
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 334
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 335
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_ac
.end method
