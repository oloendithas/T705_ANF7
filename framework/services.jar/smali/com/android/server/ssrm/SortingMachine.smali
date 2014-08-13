.class public Lcom/android/server/ssrm/SortingMachine;
.super Ljava/lang/Object;
.source "SortingMachine.java"


# static fields
.field public static final CATEGORY_BROWSER:I = 0x0

.field public static final CATEGORY_GHEAVY_CONTENT:I = 0x2

.field public static final CATEGORY_HEAVY_CONTENT:I = 0x1

.field public static final CATEGORY_MAX:I = 0x4

.field public static final CATEGORY_PRELOAD:I = 0x3

.field private static final DB_FULL_PATH:Ljava/lang/String;

.field static final EMAIL1_PKG:Ljava/lang/String;

.field static final EMAIL2_PKG:Ljava/lang/String;

.field private static HARDCODED_PRELOAD_PACKAGES:[Ljava/lang/String;

.field static final SNS1_PKG:Ljava/lang/String;

.field static final SNS2_PKG:Ljava/lang/String;

.field static final SNS3_PKG:Ljava/lang/String;

.field static final SNS4_PKG:Ljava/lang/String;

.field static final SNS5_PKG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/ssrm/SortingMachine;


# instance fields
.field final STR_CATEGORY_GHEAVY_APP:Ljava/lang/String;

.field final STR_CATEGORY_HEAVY_APP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mBootComplete:Z

.field private final mContext:Landroid/content/Context;

.field private final mCpuCoreHelper:Landroid/os/DVFSHelper;

.field private final mCpuHelper:Landroid/os/DVFSHelper;

.field private mId:Ljava/lang/String;

.field private final mTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVmHeapSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/16 v4, 0x13

    const/16 v3, 0x12

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x16

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->HARDCODED_PRELOAD_PACKAGES:[Ljava/lang/String;

    .line 107
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->DB_FULL_PATH:Ljava/lang/String;

    .line 336
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->EMAIL1_PKG:Ljava/lang/String;

    .line 341
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->EMAIL2_PKG:Ljava/lang/String;

    .line 350
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS1_PKG:Ljava/lang/String;

    .line 355
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS2_PKG:Ljava/lang/String;

    .line 360
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS3_PKG:Ljava/lang/String;

    .line 365
    new-array v0, v4, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS4_PKG:Ljava/lang/String;

    .line 370
    new-array v0, v5, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS5_PKG:Ljava/lang/String;

    return-void

    .line 68
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x17
        0x15
        0x18
        0x13
        0x16
        0x1f
        0x19
        0x1b
        0x8
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x11
        0xe
        0x54
        0x9
        0x11
        0x1b
        0x1c
        0x54
        0x16
        0x4a
        0x4a
        0x4b
        0x17
        0xe
        0x17
        0x4a
        0x43
        0x4b
    .end array-data

    :array_3
    .array-data 4
        0x11
        0xe
        0x54
        0x14
        0x1b
        0xc
        0x13
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x14
        0x9
        0x15
        0x1c
        0xe
        0x54
        0x16
        0x1d
        0xf
        0x14
        0x1b
        0xc
        0x13
    .end array-data

    .line 107
    :array_5
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

    .line 336
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
    .end array-data

    .line 341
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    .line 350
    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 355
    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x1b
        0x11
        0x1b
        0x15
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 360
    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xd
        0x12
        0x1b
        0xe
        0x9
        0x1b
        0xa
        0xa
    .end array-data

    .line 365
    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data

    .line 370
    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/SortingMachine;->mVmHeapSize:I

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    .line 467
    const-string v0, "heavy_app"

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->STR_CATEGORY_HEAVY_APP:Ljava/lang/String;

    .line 469
    const-string v0, "gheavy_app"

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->STR_CATEGORY_GHEAVY_APP:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    .line 117
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v10, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 121
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-nez v0, :cond_1

    .line 122
    new-instance v6, Lcom/android/server/ssrm/AESEncryption;

    invoke-direct {v6}, Lcom/android/server/ssrm/AESEncryption;-><init>()V

    .line 123
    .local v6, "aes":Lcom/android/server/ssrm/AESEncryption;
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 124
    .local v11, "key":Ljavax/crypto/SecretKey;
    if-eqz v11, :cond_1

    .line 125
    invoke-interface {v11}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    .line 129
    .end local v6    # "aes":Lcom/android/server/ssrm/AESEncryption;
    .end local v11    # "key":Ljavax/crypto/SecretKey;
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 130
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    .line 135
    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_PKG_OPT"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 136
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v12

    .line 137
    .local v12, "table":[I
    if-eqz v12, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 141
    :cond_3
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_PKG_OPT2"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    .line 143
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v7

    .line 144
    .local v7, "coreTable":[I
    if-eqz v7, :cond_4

    .line 145
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v7, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 148
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ssrm/SortingMachine;->DB_FULL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->scanAndCreateDb()V

    .line 153
    :cond_5
    :try_start_0
    const-string v0, "dalvik.vm.heapsize"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "heapSize":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 155
    const-string v0, "m"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "words":[Ljava/lang/String;
    if-eqz v13, :cond_6

    array-length v0, v13

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 157
    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/SortingMachine;->mVmHeapSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v9    # "heapSize":Ljava/lang/String;
    .end local v13    # "words":[Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 160
    :catch_0
    move-exception v8

    .line 161
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 50
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
        0x15
        0x8
        0xe
        0x13
        0x14
        0x1d
        0x37
        0x1b
        0x19
        0x12
        0x13
        0x14
        0x1f
    .end array-data

    .line 130
    :array_1
    .array-data 4
        0x9
        0x9
        0x8
        0x17
        0x25
        0xe
        0x1f
        0x9
        0xe
        0x25
        0x11
        0x1f
        0x3
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/SortingMachine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    return-object v0
.end method

.method private getNonPreloadApplications(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "downloadAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 208
    .local v5, "mPackageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "launcherIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/16 v8, 0x20

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 213
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 216
    .local v6, "packageName":Ljava/lang/String;
    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 218
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 219
    if-eqz v6, :cond_0

    .line 220
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method private getPackageList(I)Ljava/lang/String;
    .locals 7
    .param p1, "category"    # I

    .prologue
    .line 574
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 575
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 576
    .local v1, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 577
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 578
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 579
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 581
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "packageList":Ljava/lang/String;
    return-object v3
.end method

.method public static isEmailApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 346
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->EMAIL1_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->EMAIL2_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSnsApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 376
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS1_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS2_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS3_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS4_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS5_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/ssrm/SortingMachine;->onReceiveImpl(Landroid/content/Context;Landroid/content/Intent;)V

    .line 233
    :cond_0
    return-void
.end method

.method private registerBrowserPackages()V
    .locals 8

    .prologue
    .line 276
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 278
    .local v3, "powerManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 280
    .local v0, "browserTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v6, "http://"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 284
    const/16 v6, 0x200

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 286
    .local v5, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 288
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method private reviewNonPreloadApplications(Ljava/util/ArrayList;Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "downloadAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 188
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_0
    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 192
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    .line 195
    .local v1, "hash":I
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->stringCheckFromPms(Ljava/lang/String;I)I

    move-result v6

    .line 197
    .local v6, "result":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 198
    :cond_1
    invoke-virtual {p2, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v1    # "hash":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "result":I
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private scanAndCreateDb()V
    .locals 10

    .prologue
    .line 166
    const-wide/16 v3, 0x0

    .local v3, "startTime":J
    const-wide/16 v1, 0x0

    .line 168
    .local v1, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "downloadAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SortingMachine;->getNonPreloadApplications(Ljava/util/ArrayList;)V

    .line 174
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    .line 176
    .local v5, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, v5}, Lcom/android/server/ssrm/SortingMachine;->reviewNonPreloadApplications(Ljava/util/ArrayList;Ljava/util/Hashtable;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 182
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scanAndCreateDb:: elapsed time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 640
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bootComplete()V
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    .line 268
    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->registerPreloadPackages()V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->readAppListFromDb()V

    goto :goto_0
.end method

.method public isAppInCategory(ILjava/lang/String;)Z
    .locals 3
    .param p1, "category"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 316
    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    if-nez p2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 320
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBrowserApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 296
    .local v0, "browserTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isHeavyApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 304
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 305
    .local v0, "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 309
    .local v1, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPreloadApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 328
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    const/4 v1, 0x0

    .line 332
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onReceiveImpl(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    const-string v6, "onReceiveImpl:: ACTION_PACKAGE_ADDED"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    const-string v6, "onReceiveImpl:: ACTION_PACKAGE_REMOVED"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "dirty":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v2, v5, :cond_3

    .line 245
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 246
    .local v4, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v1, 0x1

    .line 244
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v4    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    goto :goto_0
.end method

.method parseDex(Ljava/io/ByteArrayOutputStream;)Lcom/android/server/ssrm/Dex;
    .locals 7
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 636
    :goto_0
    return-object v0

    .line 616
    :cond_0
    const/4 v0, 0x0

    .line 619
    .local v0, "dex":Lcom/android/server/ssrm/Dex;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 621
    .local v3, "rawData":[B
    new-instance v1, Lcom/android/server/ssrm/Dex;

    invoke-direct {v1, v3}, Lcom/android/server/ssrm/Dex;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 622
    .end local v0    # "dex":Lcom/android/server/ssrm/Dex;
    .local v1, "dex":Lcom/android/server/ssrm/Dex;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderFileSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v4, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string ids size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v4, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string ids offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->parseStringItems()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 631
    .end local v1    # "dex":Lcom/android/server/ssrm/Dex;
    .end local v3    # "rawData":[B
    .restart local v0    # "dex":Lcom/android/server/ssrm/Dex;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v2

    .line 633
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 626
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 627
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v4, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDex:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 626
    .end local v0    # "dex":Lcom/android/server/ssrm/Dex;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dex":Lcom/android/server/ssrm/Dex;
    .restart local v3    # "rawData":[B
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "dex":Lcom/android/server/ssrm/Dex;
    .restart local v0    # "dex":Lcom/android/server/ssrm/Dex;
    goto :goto_2
.end method

.method readAppListFromDb()V
    .locals 21

    .prologue
    .line 472
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/android/server/ssrm/SortingMachine;->DB_FULL_PATH:Ljava/lang/String;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 525
    :cond_0
    return-void

    .line 478
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    move-result-object v15

    .line 479
    .local v15, "mSecureDbHelper":Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    const/4 v10, 0x0

    .line 480
    .local v10, "heavyAppList":Ljava/lang/String;
    const/4 v7, 0x0

    .line 482
    .local v7, "gheavyAppList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 483
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 485
    :try_start_0
    const-string v19, "SELECT * FROM t ;"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 486
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_4

    .line 487
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .local v8, "gheavyAppList":Ljava/lang/String;
    move-object v11, v10

    .line 488
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .local v11, "heavyAppList":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_3

    .line 489
    const-string v19, "category"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "category_":Ljava/lang/String;
    const-string v19, "package_list"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 491
    .local v16, "package_":Ljava/lang/String;
    const-string v19, "heavy_app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 492
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    move-object v7, v8

    .line 496
    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v7

    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    move-object v11, v10

    .line 497
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    goto :goto_0

    .line 493
    :cond_2
    :try_start_3
    const-string v19, "gheavy_app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 494
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    goto :goto_1

    .line 498
    .end local v3    # "category_":Ljava/lang/String;
    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .end local v16    # "package_":Ljava/lang/String;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v8

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .line 503
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 506
    :cond_5
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Hashtable;

    .line 508
    .local v12, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 509
    .local v18, "values":[Ljava/lang/String;
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/String;
    array-length v14, v2

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    if-ge v13, v14, :cond_7

    aget-object v17, v2, v13

    .line 510
    .local v17, "value":Ljava/lang/String;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    .line 511
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 500
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v12    # "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 501
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 516
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_7
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Hashtable;

    .line 518
    .local v9, "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 519
    .restart local v18    # "values":[Ljava/lang/String;
    move-object/from16 v2, v18

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v14, v2

    .restart local v14    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_5
    if-ge v13, v14, :cond_0

    aget-object v17, v2, v13

    .line 520
    .restart local v17    # "value":Ljava/lang/String;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 521
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 500
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .end local v9    # "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    goto :goto_4

    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .restart local v3    # "category_":Ljava/lang/String;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v16    # "package_":Ljava/lang/String;
    :cond_9
    move-object v7, v8

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method registerPreloadPackages()V
    .locals 11

    .prologue
    .line 586
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Hashtable;

    .line 587
    .local v8, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_1

    .line 609
    :cond_0
    return-void

    .line 591
    :cond_1
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 592
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x80

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 593
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_0

    .line 597
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 598
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 599
    .local v5, "packageName":Ljava/lang/String;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    .line 600
    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 601
    invoke-virtual {v8, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 606
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/server/ssrm/SortingMachine;->HARDCODED_PRELOAD_PACKAGES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v7, v1, v2

    .line 607
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v8, v7, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2710

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 382
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apkPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    sget-boolean v5, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 389
    const-string v5, "dev.ssrm.analysis"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "method":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v5, "dynamic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 391
    sput-boolean v8, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    .line 392
    sput-boolean v9, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    .line 399
    .end local v2    # "method":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 401
    .local v3, "startTime":J
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/server/ssrm/SortingMachine;->mVmHeapSize:I

    const/16 v6, 0x80

    if-lt v5, v6, :cond_3

    .line 402
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 403
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/SortingMachine;->reviewPackageForStaticAnalysis(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->release()V

    .line 408
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->release()V

    .line 411
    :cond_3
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    if-eqz v5, :cond_4

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/SortingMachine;->reviewPackageForDynamicAnalysis(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 416
    .local v0, "endTime":J
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Elapsed time to optimize DEX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v0    # "endTime":J
    .end local v3    # "startTime":J
    .restart local v2    # "method":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_2

    const-string/jumbo v5, "static"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    sput-boolean v9, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    .line 395
    sput-boolean v8, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    goto :goto_1
.end method

.method public reviewPackageForDynamicAnalysis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public reviewPackageForStaticAnalysis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    const/4 v6, 0x0

    .line 421
    .local v6, "mIsHeavyPackage":Z
    const/4 v5, 0x0

    .line 424
    .local v5, "mIsGHeavyPackage":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 426
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x40

    invoke-virtual {v8, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 427
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/content/pm/Signature;->hashCode()I

    move-result v2

    .line 428
    .local v2, "hash":I
    invoke-static {p1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->stringCheckFromPms(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 429
    .local v9, "result":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 430
    :cond_0
    const/4 v6, 0x1

    .line 432
    :cond_1
    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    .line 433
    const/4 v5, 0x1

    .line 439
    .end local v2    # "hash":I
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "result":I
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 441
    .local v4, "mDbUpdateNeeded":Z
    if-eqz v5, :cond_4

    .line 442
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    const-string v11, "@ptimization is done."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 444
    .local v1, "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const/4 v4, 0x1

    .line 455
    .end local v1    # "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-eqz v4, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    .line 459
    :cond_3
    return-void

    .line 435
    .end local v4    # "mDbUpdateNeeded":Z
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "mDbUpdateNeeded":Z
    :cond_4
    if-eqz v6, :cond_5

    .line 447
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    const-string v11, "@ptimization is done."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 449
    .local v3, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const/4 v4, 0x1

    .line 451
    goto :goto_1

    .line 452
    .end local v3    # "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    const-string v11, "Optimization is done."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method writeAppListToDb()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 528
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/SortingMachine;->getPackageList(I)Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, "heavyAppList":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/SortingMachine;->getPackageList(I)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "gheavyAppList":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/system/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/SsrmDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 534
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 538
    :cond_0
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmDatabaseHelper;

    move-result-object v1

    .line 539
    .local v1, "dbHelper":Lcom/android/server/ssrm/SsrmDatabaseHelper;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 540
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 541
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v6, "insertValues":Landroid/content/ContentValues;
    const-string v9, "category"

    const-string v10, "heavy_app"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v9, "package_list"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 546
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v7, "insertValues2":Landroid/content/ContentValues;
    const-string v9, "category"

    const-string v10, "gheavy_app"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v9, "package_list"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 551
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 553
    .end local v6    # "insertValues":Landroid/content/ContentValues;
    .end local v7    # "insertValues2":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 557
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    move-result-object v8

    .line 559
    .local v8, "secureDbHelper":Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->generateSecureDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v8    # "secureDbHelper":Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 566
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 568
    :cond_2
    return-void

    .line 560
    :catch_0
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
