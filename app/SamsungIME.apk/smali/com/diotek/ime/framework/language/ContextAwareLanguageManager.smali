.class public Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;,
        Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;,
        Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# instance fields
.field private final CACHE_MAX_SIZE:I

.field private final CHECKSUM:B

.field private final CLM_MODE_CSL:I

.field private final CLM_MODE_NONE:I

.field private final CSL_DB:Ljava/lang/String;

.field private final DB_DIR:Ljava/lang/String;

.field private final FILE_MAX_SIZE:I

.field private final HEADER_SIZE:I

.field private final INT_BYTE_SIZE:I

.field private final LIMITATION_PREFERENCE:I

.field private final LONG_BYTE_SIZE:I

.field private final NOT_USE_SUBITEM:B

.field private final NUMBER_OF_PREFERRED_LANGUAGE:I

.field private final PLANG_DATA_LENGTH:I

.field private final SUBKEY_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private final USE_SUBITEM:B

.field private mCSLCount:I

.field private mCSLMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;"
        }
    .end annotation
.end field

.field private mCSLTotalSize:I

.field private mCacheCSLMap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

.field private mCurrentMode:I

.field private mDir:Ljava/io/File;

.field private mDirtyIndex:I

.field private final mIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializedMode:I

.field private mIsUseContextAwareLanguage:Z

.field private final mTimeStampComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "ContextAwareLanguageManager"

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "lang"

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->DB_DIR:Ljava/lang/String;

    .line 48
    const-string v0, "csl.db"

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CSL_DB:Ljava/lang/String;

    .line 49
    iput v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->NUMBER_OF_PREFERRED_LANGUAGE:I

    .line 50
    const/16 v0, 0xe

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->HEADER_SIZE:I

    .line 51
    iput v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->SUBKEY_SIZE:I

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->PLANG_DATA_LENGTH:I

    .line 53
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->FILE_MAX_SIZE:I

    .line 54
    iput v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->LIMITATION_PREFERENCE:I

    .line 55
    const/16 v0, -0x7f

    iput-byte v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CHECKSUM:B

    .line 56
    iput-byte v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->NOT_USE_SUBITEM:B

    .line 57
    iput-byte v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->USE_SUBITEM:B

    .line 58
    iput v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->INT_BYTE_SIZE:I

    .line 59
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->LONG_BYTE_SIZE:I

    .line 60
    const/16 v0, 0x14

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CACHE_MAX_SIZE:I

    .line 61
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CLM_MODE_NONE:I

    .line 62
    iput v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CLM_MODE_CSL:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCacheCSLMap:Ljava/util/LinkedList;

    .line 66
    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    .line 67
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 68
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 69
    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 70
    iput-boolean v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    .line 71
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    .line 72
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    .line 75
    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mComparator:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mTimeStampComparator:Ljava/util/Comparator;

    .line 95
    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIndexComparator:Ljava/util/Comparator;

    .line 111
    invoke-direct {p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->init()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->loadDb(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->saveCSL()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private addCSLData([BIZIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "index"    # I
    .param p3, "useSubItem"    # Z
    .param p4, "subItemCnt"    # I
    .param p5, "timeStamp"    # J

    .prologue
    .line 372
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p4, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->decodeData([BIZIJ)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    .line 376
    .local v0, "CSL":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addLanguageDataInCache(Ljava/util/LinkedList;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)V
    .locals 2
    .param p2, "data"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;>;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "cacheMap":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Integer;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 563
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0
.end method

.method private byteArrayToInteger([BI)I
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v6, 0x4

    .line 598
    const/4 v3, 0x4

    .line 599
    .local v3, "size":I
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lt v4, v6, :cond_0

    array-length v4, p1

    add-int/lit8 v5, p2, 0x4

    if-ge v4, v5, :cond_1

    .line 600
    :cond_0
    const/4 v4, -0x1

    .line 609
    :goto_0
    return v4

    .line 602
    :cond_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 603
    .local v0, "bytebuffer":Ljava/nio/ByteBuffer;
    new-array v2, v6, [B

    .line 604
    .local v2, "newBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 605
    add-int v4, v1, p2

    aget-byte v4, p1, v4

    aput-byte v4, v2, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 607
    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 608
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    goto :goto_0
.end method

.method private byteArrayToLong([BI)Ljava/lang/Long;
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v6, 0x8

    .line 613
    const/16 v3, 0x8

    .line 614
    .local v3, "size":I
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lt v4, v6, :cond_0

    array-length v4, p1

    add-int/lit8 v5, p2, 0x8

    if-ge v4, v5, :cond_1

    .line 615
    :cond_0
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 624
    :goto_0
    return-object v4

    .line 617
    :cond_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 618
    .local v0, "bytebuffer":Ljava/nio/ByteBuffer;
    new-array v2, v6, [B

    .line 619
    .local v2, "newBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 620
    add-int v4, v1, p2

    aget-byte v4, p1, v4

    aput-byte v4, v2, v1

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 622
    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 623
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 624
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0
.end method

.method private checkSumData([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 644
    if-eqz p1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    const/16 v1, -0x7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeData([BIZIJ)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 22
    .param p1, "data"    # [B
    .param p2, "index"    # I
    .param p3, "useSubItem"    # Z
    .param p4, "subItemCnt"    # I
    .param p5, "timeStamp"    # J

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    const/4 v3, 0x0

    .line 424
    :goto_0
    return-object v3

    .line 386
    :cond_0
    const/4 v15, 0x0

    .line 387
    .local v15, "byteOffset":I
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v4

    sub-int v18, v3, v4

    .line 388
    .local v18, "keyLength":I
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-direct {v6, v0, v15, v1}, Ljava/lang/String;-><init>([BII)V

    .line 389
    .local v6, "key":Ljava/lang/String;
    add-int v15, v15, v18

    .line 390
    if-nez p3, :cond_3

    .line 391
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 392
    .local v8, "plList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 393
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v4, v15, 0x5

    if-ge v3, v4, :cond_2

    .line 402
    :cond_1
    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v4, p0

    move/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;Ljava/lang/Long;Ljava/util/LinkedList;)V

    goto :goto_0

    .line 396
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v20

    .line 397
    .local v20, "lId":I
    add-int/lit8 v15, v15, 0x4

    .line 398
    aget-byte v19, p1, v15

    .line 399
    .local v19, "lCnt":B
    add-int/lit8 v15, v15, 0x1

    .line 400
    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 404
    .end local v8    # "plList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;>;"
    .end local v17    # "i":I
    .end local v19    # "lCnt":B
    .end local v20    # "lId":I
    :cond_3
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 405
    .local v14, "plListSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;>;"
    const/16 v16, 0x0

    .local v16, "cnt":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 406
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v4, v15, 0x4

    if-ge v3, v4, :cond_5

    .line 424
    :cond_4
    new-instance v9, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object v12, v6

    invoke-direct/range {v9 .. v14}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;Ljava/lang/Long;Landroid/util/SparseArray;)V

    move-object v3, v9

    goto/16 :goto_0

    .line 409
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v21

    .line 410
    .local v21, "subKey":I
    add-int/lit8 v15, v15, 0x4

    .line 411
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 412
    .restart local v8    # "plList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;>;"
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 413
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v4, v15, 0x5

    if-ge v3, v4, :cond_7

    .line 422
    :cond_6
    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v3, v0, v1, v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/util/LinkedList;)V

    move/from16 v0, v21

    invoke-virtual {v14, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 416
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v20

    .line 417
    .restart local v20    # "lId":I
    add-int/lit8 v15, v15, 0x4

    .line 418
    aget-byte v19, p1, v15

    .line 419
    .restart local v19    # "lCnt":B
    add-int/lit8 v15, v15, 0x1

    .line 420
    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v17, v17, 0x1

    goto :goto_3
.end method

.method private findCSLLanguageData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "contactID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    iget v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 507
    if-eqz p1, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findLanguageDataInCSLCache(Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    .line 509
    if-nez v0, :cond_0

    .line 510
    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getLanguageDataInMap(Ljava/util/HashMap;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCacheCSLMap:Ljava/util/LinkedList;

    invoke-direct {p0, v2, v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->addLanguageDataInCache(Ljava/util/LinkedList;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)V

    .line 516
    :cond_0
    if-eqz v0, :cond_1

    .line 517
    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 518
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    .line 522
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findLanguageData(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "contactID"    # Ljava/lang/String;
    .param p2, "inputType"    # I
    .param p3, "curLanguageID"    # I

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "res":Z
    if-eqz p1, :cond_0

    .line 495
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findCSLLanguageData(Ljava/lang/String;)Z

    move-result v0

    .line 497
    :cond_0
    if-nez v0, :cond_1

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 499
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    .line 501
    :cond_1
    return v0
.end method

.method private findLanguageDataInCSLCache(Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 534
    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 538
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCacheCSLMap:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findLanguageDataInCache(Ljava/util/LinkedList;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    goto :goto_0
.end method

.method private findLanguageDataInCache(Ljava/util/LinkedList;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "map":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Integer;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;>;"
    const/4 v0, 0x0

    .line 544
    .local v0, "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    invoke-virtual {p1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 545
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 546
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v0    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 552
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    .restart local v0    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :cond_1
    return-object v0
.end method

.method private getDefaultCSLData(ILjava/lang/String;I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 7
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "langID"    # I

    .prologue
    const/4 v4, 0x0

    .line 588
    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;IIZ)V

    return-object v0
.end method

.method private getIndexOrLastData(ILjava/util/HashMap;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;)",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    const/4 v5, -0x1

    .line 357
    .local v5, "tempIdx":I
    const/4 v1, 0x0

    .line 358
    .local v1, "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 359
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 361
    .local v2, "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 368
    .end local v2    # "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :goto_1
    return-object v2

    .line 363
    .restart local v2    # "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :cond_1
    invoke-virtual {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 364
    move-object v1, v2

    .line 365
    invoke-virtual {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v5

    goto :goto_0

    .end local v2    # "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :cond_2
    move-object v2, v1

    .line 368
    goto :goto_1
.end method

.method public static getInstance()Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    .line 107
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    return-object v0
.end method

.method private getLanguageDataInMap(Ljava/util/HashMap;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 528
    :cond_0
    const/4 v0, 0x0

    .line 530
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    goto :goto_0
.end method

.method private getTotalLanguageDataLength(IZ)I
    .locals 1
    .param p1, "subDataCnt"    # I
    .param p2, "useSubItem"    # Z

    .prologue
    .line 429
    if-eqz p2, :cond_0

    .line 430
    mul-int/lit8 v0, p1, 0x13

    add-int/lit8 v0, v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p1, 0xf

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lang"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    .line 117
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 127
    return-void
.end method

.method private integerToByteArray(I)[B
    .locals 3
    .param p1, "integer"    # I

    .prologue
    .line 628
    const/4 v1, 0x4

    .line 629
    .local v1, "size":I
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 630
    .local v0, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 631
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 632
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private isAvailablePreferredLanguage(II)Z
    .locals 3
    .param p1, "inputType"    # I
    .param p2, "imeOption"    # I

    .prologue
    const/4 v0, 0x1

    .line 577
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    and-int/lit8 v1, p1, 0xf

    if-ne v1, v0, :cond_0

    and-int/lit16 v1, p1, 0xff0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, p1, 0xff0

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, p1, 0xff0

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_0

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDb(Ljava/io/File;Ljava/lang/String;I)V
    .locals 18
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 133
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    or-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    .line 189
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v13, 0x0

    .line 140
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v14, v10, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .local v14, "raf":Ljava/io/RandomAccessFile;
    const/16 v2, 0xe

    :try_start_1
    new-array v11, v2, [B

    .line 142
    .local v11, "headerBytes":[B
    const/4 v15, -0x1

    .line 143
    .local v15, "size":I
    const/4 v4, 0x0

    .line 145
    .local v4, "index":I
    :cond_1
    invoke-virtual {v14, v11}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    .line 146
    if-lez v15, :cond_3

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v12

    .line 149
    .local v12, "offsetData":I
    const/4 v2, 0x4

    aget-byte v2, v11, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_5

    const/4 v5, 0x1

    .line 150
    .local v5, "useSubItem":Z
    :goto_1
    const/4 v2, 0x5

    aget-byte v6, v11, v2

    .line 151
    .local v6, "subItemCnt":I
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToLong([BI)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 153
    .local v7, "timeStamp":J
    if-lez v12, :cond_2

    .line 154
    new-array v3, v12, [B

    .line 155
    .local v3, "data":[B
    invoke-virtual {v14, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    .line 156
    if-lez v15, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->checkSumData([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    const-string v2, "csl.db"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    .line 158
    invoke-direct/range {v2 .. v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->addCSLData([BIZIJ)V

    .line 159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    add-int/lit8 v16, v12, 0xe

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    .end local v3    # "data":[B
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 166
    .end local v5    # "useSubItem":Z
    .end local v6    # "subItemCnt":I
    .end local v7    # "timeStamp":J
    .end local v12    # "offsetData":I
    :cond_3
    const/4 v2, -0x1

    if-ne v15, v2, :cond_1

    .line 180
    if-eqz v14, :cond_8

    .line 182
    :try_start_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v14

    .line 188
    .end local v4    # "index":I
    .end local v11    # "headerBytes":[B
    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .end local v15    # "size":I
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    or-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    goto :goto_0

    .line 149
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "index":I
    .restart local v11    # "headerBytes":[B
    .restart local v12    # "offsetData":I
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "size":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 183
    .end local v12    # "offsetData":I
    :catch_0
    move-exception v9

    .line 184
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v13, v14

    .line 185
    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 167
    .end local v4    # "index":I
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "headerBytes":[B
    .end local v15    # "size":I
    :catch_1
    move-exception v9

    .line 168
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb FileNotFoundException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v13, :cond_4

    .line 182
    :try_start_4
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 183
    :catch_2
    move-exception v9

    .line 184
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 170
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 171
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    if-eqz v13, :cond_4

    .line 182
    :try_start_6
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 183
    :catch_4
    move-exception v9

    .line 184
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 173
    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 174
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_7
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb OutOfMemoryError "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    :cond_6
    if-eqz v13, :cond_4

    .line 182
    :try_start_8
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    .line 183
    :catch_6
    move-exception v9

    .line 184
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 180
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v13, :cond_7

    .line 182
    :try_start_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 185
    :cond_7
    :goto_7
    throw v2

    .line 183
    :catch_7
    move-exception v9

    .line 184
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v16, "ContextAwareLanguageManager"

    const-string v17, "loadDb IOException "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 180
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 173
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v9

    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 170
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v9

    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 167
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v9

    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "index":I
    .restart local v11    # "headerBytes":[B
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "size":I
    :cond_8
    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method private longToByteArray(J)[B
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 636
    const/16 v1, 0x8

    .line 637
    .local v1, "size":I
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 638
    .local v0, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 639
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private makeNewLanguageData(Ljava/lang/String;II)V
    .locals 2
    .param p1, "contactID"    # Ljava/lang/String;
    .param p2, "inputType"    # I
    .param p3, "curLanguageID"    # I

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getDefaultCSLData(ILjava/lang/String;I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 570
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    .line 572
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    .line 574
    :cond_0
    return-void
.end method

.method private declared-synchronized saveCSL()V
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    const-string v0, "csl.db"

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeDB(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeDB(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 22
    .param p1, "db"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    const/4 v7, 0x0

    .line 219
    .local v7, "dataCount":I
    const/4 v9, 0x0

    .line 220
    .local v9, "dataTotalSize":I
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget v7, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 222
    move-object/from16 v0, p0

    iget v9, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdir()Z

    move-result v17

    .line 226
    .local v17, "res":Z
    const-string v19, "ContextAwareLanguageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lang directory created = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v17    # "res":Z
    :cond_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v11, "file":Ljava/io/File;
    const/16 v18, 0x0

    .line 230
    .local v18, "totalFileSize":I
    const/4 v15, 0x0

    .line 232
    .local v15, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v16, Ljava/io/RandomAccessFile;

    const-string v19, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .local v16, "raf":Ljava/io/RandomAccessFile;
    const/high16 v19, 0x20000

    move/from16 v0, v19

    if-le v9, v0, :cond_5

    .line 234
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 235
    .local v5, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mTimeStampComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "cnt":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "cnt":I
    .local v4, "cnt":I
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 239
    .local v6, "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    add-int v19, v19, v18

    const/high16 v20, 0x20000

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 240
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 284
    .end local v4    # "cnt":I
    .end local v5    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    .end local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    :catch_0
    move-exception v10

    move-object/from16 v15, v16

    .line 285
    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is FileNotFoundException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    if-eqz v15, :cond_3

    .line 299
    :try_start_3
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 301
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 303
    :cond_2
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 305
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_4
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 309
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 315
    :cond_3
    :goto_3
    return-void

    .line 243
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "cnt":I
    .restart local v5    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    .restart local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    move-result v19

    add-int v18, v18, v19

    .line 244
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    invoke-virtual {v6, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->setIndex(I)V

    move v4, v3

    .end local v3    # "cnt":I
    .restart local v4    # "cnt":I
    goto :goto_0

    .line 246
    .end local v4    # "cnt":I
    .end local v5    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    .end local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_b

    .line 247
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v9, :cond_9

    .line 248
    move/from16 v18, v9

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getIndexOrLastData(ILjava/util/HashMap;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v6

    .line 250
    .restart local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    if-nez v6, :cond_8

    .line 297
    if-eqz v16, :cond_7

    .line 299
    :try_start_7
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 301
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 303
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 305
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_8
    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 309
    :goto_4
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    :goto_5
    move-object/from16 v15, v16

    .line 312
    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 306
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 310
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 311
    .local v10, "e":Ljava/io/IOException;
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 253
    .end local v10    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v19

    add-int v18, v18, v19

    .line 297
    .end local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :cond_9
    :goto_6
    if-eqz v16, :cond_14

    .line 299
    :try_start_b
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 301
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 303
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 305
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_c
    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 309
    :goto_7
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v15, v16

    .line 312
    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 256
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :cond_b
    :try_start_e
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 257
    .restart local v5    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIndexComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    const/4 v12, 0x0

    .line 260
    .local v12, "forceWriteData":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 261
    .restart local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 262
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->isUseSubItem()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->isAddNewSubItem()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    .line 264
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->clearIsAddNewSubItem()V

    .line 265
    const/4 v12, 0x1

    .line 266
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    .line 267
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    add-int v18, v18, v19

    goto :goto_8

    .line 269
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    .line 270
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    .line 271
    move/from16 v18, v9

    .line 272
    goto/16 :goto_6

    .line 274
    :cond_d
    if-eqz v12, :cond_e

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    .line 276
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    add-int v18, v18, v19

    goto :goto_8

    .line 278
    :cond_e
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v8

    .line 279
    .local v8, "dataSize":I
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 280
    add-int v18, v18, v8

    goto :goto_8

    .line 306
    .end local v5    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    .end local v6    # "data":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .end local v8    # "dataSize":I
    .end local v12    # "forceWriteData":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;>;"
    :catch_3
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_7

    .line 310
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    .line 311
    .local v10, "e":Ljava/io/IOException;
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v15, v16

    .line 312
    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 306
    .local v10, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_2

    .line 310
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .line 311
    .local v10, "e":Ljava/io/IOException;
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 287
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 288
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :goto_9
    :try_start_11
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is OutOfMemoryError : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 291
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 297
    :cond_f
    if-eqz v15, :cond_3

    .line 299
    :try_start_12
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 301
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 303
    :cond_10
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 305
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_13
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 309
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    :goto_a
    :try_start_14
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_3

    .line 310
    :catch_8
    move-exception v10

    .line 311
    .local v10, "e":Ljava/io/IOException;
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 306
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :catch_9
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    :try_start_15
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_a

    .line 293
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v10

    .line 294
    .local v10, "e":Ljava/io/IOException;
    :goto_b
    :try_start_16
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 297
    if-eqz v15, :cond_3

    .line 299
    :try_start_17
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 301
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 303
    :cond_11
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    .line 305
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_18
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    .line 309
    .end local v10    # "e":Ljava/io/IOException;
    :goto_c
    :try_start_19
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_3

    .line 310
    :catch_b
    move-exception v10

    .line 311
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 306
    :catch_c
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto :goto_c

    .line 297
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    :goto_d
    if-eqz v15, :cond_13

    .line 299
    :try_start_1b
    const-string v20, "csl.db"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    .line 301
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    .line 303
    :cond_12
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    .line 305
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :try_start_1c
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 309
    :goto_e
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e

    .line 312
    :cond_13
    :goto_f
    throw v19

    .line 306
    :catch_d
    move-exception v10

    .line 307
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    goto :goto_e

    .line 310
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v10

    .line 311
    .local v10, "e":Ljava/io/IOException;
    const-string v20, "ContextAwareLanguageManager"

    const-string v21, "writeDB is IOException : "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 297
    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_d

    .line 293
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :catch_f
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .line 287
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :catch_10
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .line 284
    :catch_11
    move-exception v10

    goto/16 :goto_1

    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "raf":Ljava/io/RandomAccessFile;
    :cond_14
    move-object/from16 v15, v16

    .end local v16    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method private writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I
    .locals 11
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "data"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/16 v10, -0x7f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 319
    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 320
    .local v3, "keyByte":[B
    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->isUseSubItem()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 321
    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getSubItemCount()I

    move-result v5

    .line 322
    .local v5, "subItemCnt":I
    array-length v6, v3

    invoke-direct {p0, v5, v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 323
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 324
    int-to-byte v6, v5

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write(I)V

    .line 325
    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->longToByteArray(J)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 326
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 328
    invoke-virtual {p2, v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getPreferredLanguageListSet(I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    move-result-object v4

    .line 329
    .local v4, "set":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;
    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->getKey()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 331
    invoke-virtual {v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->getPreferredLanguageList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    .line 332
    .local v0, "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;
    iget v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 333
    iget-byte v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_1

    .line 327
    .end local v0    # "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v4    # "set":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;
    :cond_1
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->write(I)V

    .line 338
    array-length v6, v3

    invoke-direct {p0, v5, v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xe

    .line 350
    .end local v1    # "i":I
    .end local v5    # "subItemCnt":I
    :goto_2
    return v6

    .line 340
    :cond_2
    array-length v6, v3

    invoke-direct {p0, v8, v9}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 341
    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->write(I)V

    .line 342
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 343
    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->longToByteArray(J)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 344
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 345
    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getCurrentPreferredLanguageList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    .line 346
    .restart local v0    # "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;
    iget v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 347
    iget-byte v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_3

    .line 349
    .end local v0    # "entry":Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;
    :cond_3
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->write(I)V

    .line 350
    array-length v6, v3

    invoke-direct {p0, v8, v9}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xe

    goto :goto_2
.end method


# virtual methods
.method public findLanguage([Lcom/diotek/ime/framework/common/Language;Lcom/diotek/ime/framework/common/Language;Ljava/lang/String;Ljava/lang/String;II[Z)Lcom/diotek/ime/framework/common/Language;
    .locals 8
    .param p1, "selectedLanguageList"    # [Lcom/diotek/ime/framework/common/Language;
    .param p2, "curLanguage"    # Lcom/diotek/ime/framework/common/Language;
    .param p3, "contactID"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "inputType"    # I
    .param p6, "imeOption"    # I
    .param p7, "isFind"    # [Z

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 448
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 477
    .end local p2    # "curLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_0
    :goto_0
    return-object p2

    .line 451
    .restart local p2    # "curLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_1
    iput-boolean v6, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    .line 452
    if-eqz p4, :cond_6

    invoke-direct {p0, p5, p6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->isAvailablePreferredLanguage(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 453
    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    invoke-direct {p0, p3, p5, v5}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findLanguageData(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 454
    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-eqz v5, :cond_5

    .line 455
    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getBestPreferredLanguageID(I)I

    move-result v4

    .line 456
    .local v4, "preferredLangID":I
    if-eq v4, v7, :cond_5

    .line 457
    move-object v0, p1

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .line 458
    .local v2, "lang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 459
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    .line 460
    if-eqz p7, :cond_2

    array-length v5, p7

    if-lez v5, :cond_2

    .line 461
    iget-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    aput-boolean v5, p7, v6

    :cond_2
    move-object p2, v2

    .line 463
    goto :goto_0

    .line 457
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "arr$":[Lcom/diotek/ime/framework/common/Language;
    .end local v1    # "i$":I
    .end local v2    # "lang":Lcom/diotek/ime/framework/common/Language;
    .end local v3    # "len$":I
    .end local v4    # "preferredLangID":I
    :cond_4
    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    invoke-direct {p0, p3, p5, v5}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->makeNewLanguageData(Ljava/lang/String;II)V

    .line 474
    :cond_5
    :goto_2
    if-eqz p7, :cond_0

    array-length v5, p7

    if-lez v5, :cond_0

    .line 475
    iget-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    aput-boolean v5, p7, v6

    goto :goto_0

    .line 472
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    goto :goto_2
.end method

.method public isUseContextAwareLanguage()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .line 441
    iput-boolean v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    .line 442
    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    .line 443
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    .line 444
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 199
    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateCurrentLanguage(I)V
    .locals 1
    .param p1, "curLanguageID"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->updatePreferredLanguage(I)V

    .line 595
    :cond_0
    return-void
.end method
