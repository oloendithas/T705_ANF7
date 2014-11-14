.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0xd

.field static final PROCESS_STATE_TO_STATE:[I

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String;

.field public static final STATE_TOP:I = 0x1

.field static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field mWebView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 53
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    .line 96
    new-array v0, v6, [I

    fill-array-data v0, :array_196

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_1a2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 101
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1aa

    sput-object v0, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1c0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 113
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1d2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    .line 130
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1f2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 137
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Persist"

    aput-object v1, v0, v3

    const-string v1, "Top    "

    aput-object v1, v0, v5

    const-string v1, "ImpFg  "

    aput-object v1, v0, v4

    const-string v1, "ImpBg  "

    aput-object v1, v0, v7

    const-string v1, "Backup "

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "HeavyWt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ServRst"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Receivr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home   "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LastAct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CchAct "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CchCAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CchEmty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    .line 144
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "on"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 148
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "norm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mod"

    aput-object v1, v0, v5

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "crit"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 152
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pers"

    aput-object v1, v0, v3

    const-string/jumbo v1, "top"

    aput-object v1, v0, v5

    const-string v1, "impfg"

    aput-object v1, v0, v4

    const-string v1, "impbg"

    aput-object v1, v0, v7

    const-string v1, "backup"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "heavy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "service-rs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "receiver"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "home"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cch-activity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cch-aclient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cch-empty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 162
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "n"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v5

    const-string v1, "l"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 166
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "p"

    aput-object v1, v0, v3

    const-string/jumbo v1, "t"

    aput-object v1, v0, v5

    const-string v1, "f"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string/jumbo v1, "u"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    .line 179
    sput v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    .line 180
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    .line 182
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    .line 183
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    .line 185
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    .line 186
    const v0, 0xffff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    .line 303
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1072
    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    return-void

    .line 96
    :array_196
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 99
    :array_1a2
    .array-data 4
        0x0
        0x4
    .end array-data

    .line 101
    :array_1aa
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 107
    :array_1c0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 113
    :array_1d2
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 130
    :array_1f2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 193
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 195
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "running"    # Z

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 193
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 195
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 220
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 222
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats;
    .param p1, "x1"    # Landroid/os/Parcel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static binarySearch([III)I
    .registers 9
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 1612
    const/4 v1, 0x0

    .line 1613
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 1615
    .local v0, "hi":I
    :goto_3
    if-gt v1, v0, :cond_1c

    .line 1616
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1617
    .local v2, "mid":I
    aget v4, p0, v2

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int/2addr v4, v5

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 1619
    .local v3, "midVal":I
    if-ge v3, p2, :cond_17

    .line 1620
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1621
    :cond_17
    if-le v3, p2, :cond_1e

    .line 1622
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1627
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1c
    xor-int/lit8 v2, v1, -0x1

    :cond_1e
    return v2
.end method

.method private buildTimePeriodStartClockStr()V
    .registers 4

    .prologue
    .line 1068
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1070
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .registers 31
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .prologue
    .line 480
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 481
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 483
    const/4 v10, 0x0

    .local v10, "is":I
    :goto_35
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_1c0

    .line 484
    const/4 v8, 0x0

    .local v8, "im":I
    :goto_45
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1bc

    .line 485
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_55
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_1b8

    .line 486
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v21, v0

    aget v21, v21, v10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    add-int v7, v21, v22

    .line 488
    .local v7, "bucket":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v23

    add-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 489
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v19

    .line 490
    .local v19, "samples":J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-lez v21, :cond_fc

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v15

    .line 492
    .local v15, "minPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v3

    .line 493
    .local v3, "avgPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v11

    .line 494
    .local v11, "maxPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v17

    .line 495
    .local v17, "minUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v5

    .line 496
    .local v5, "avgUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v13

    .line 497
    .local v13, "maxUss":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_100

    .line 498
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 499
    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 500
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 501
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 502
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 503
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 522
    :cond_ee
    :goto_ee
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v21, v0

    add-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 485
    .end local v3    # "avgPss":J
    .end local v5    # "avgUss":J
    .end local v11    # "maxPss":J
    .end local v13    # "maxUss":J
    .end local v15    # "minPss":J
    .end local v17    # "minUss":J
    :cond_fc
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_55

    .line 505
    .restart local v3    # "avgPss":J
    .restart local v5    # "avgUss":J
    .restart local v11    # "maxPss":J
    .restart local v13    # "maxUss":J
    .restart local v15    # "minPss":J
    .restart local v17    # "minUss":J
    :cond_100
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v21, v0

    cmp-long v21, v15, v21

    if-gez v21, :cond_10e

    .line 506
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 508
    :cond_10e
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    long-to-double v0, v3

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    add-long v23, v23, v19

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 510
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v21, v0

    cmp-long v21, v11, v21

    if-lez v21, :cond_15a

    .line 511
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 513
    :cond_15a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_16a

    .line 514
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 516
    :cond_16a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    long-to-double v0, v5

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    add-long v23, v23, v19

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 518
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v21, v0

    cmp-long v21, v13, v21

    if-lez v21, :cond_ee

    .line 519
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_ee

    .line 484
    .end local v3    # "avgPss":J
    .end local v5    # "avgUss":J
    .end local v7    # "bucket":I
    .end local v11    # "maxPss":J
    .end local v13    # "maxUss":J
    .end local v15    # "minPss":J
    .end local v17    # "minUss":J
    .end local v19    # "samples":J
    :cond_1b8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_45

    .line 483
    .end local v9    # "ip":I
    :cond_1bc
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_35

    .line 527
    .end local v8    # "im":I
    :cond_1c0
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .registers 14
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .prologue
    .line 531
    const-wide/16 v4, 0x0

    .line 541
    .local v4, "totalTime":J
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_3
    array-length v6, p1

    if-ge v3, v6, :cond_27

    .line 542
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_7
    array-length v6, p2

    if-ge v1, v6, :cond_24

    .line 543
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_b
    array-length v6, p3

    if-ge v2, v6, :cond_21

    .line 544
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v2

    add-int v0, v6, v7

    .line 546
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 542
    .end local v0    # "bucket":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 541
    .end local v2    # "ip":I
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 550
    .end local v1    # "im":I
    :cond_27
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    .line 551
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .registers 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 428
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_1
    const/16 v5, 0x8

    if-ge v1, v5, :cond_21

    .line 429
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_6
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1e

    .line 430
    add-int v2, v0, v1

    .line 431
    .local v2, "state":I
    aget-wide v3, p2, v2

    .line 432
    .local v3, "time":J
    if-ne p3, v2, :cond_12

    .line 433
    sub-long v5, p6, p4

    add-long/2addr v3, v5

    .line 435
    :cond_12
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1b

    .line 436
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 429
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 428
    .end local v2    # "state":I
    .end local v3    # "time":J
    :cond_1e
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 440
    .end local v0    # "imem":I
    :cond_21
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .registers 24
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 940
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_103

    .line 941
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    move-object/from16 v20, v0

    aget v12, v20, v7

    .line 942
    .local v12, "off":I
    sget v20, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v20, v12, v20

    sget v21, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v13, v20, v21

    .line 943
    .local v13, "type":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    .line 944
    .local v5, "count":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    .line 945
    .local v10, "min":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    .line 946
    .local v3, "avg":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    .line 947
    .local v8, "max":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v18

    .line 948
    .local v18, "umin":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    .line 949
    .local v14, "uavg":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    .line 950
    .local v16, "umax":J
    const/16 v20, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 951
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 952
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 953
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 954
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 955
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 956
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 957
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 958
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 959
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 960
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 961
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 962
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 963
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 964
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 965
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 940
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 967
    .end local v3    # "avg":J
    .end local v5    # "count":J
    .end local v8    # "max":J
    .end local v10    # "min":J
    .end local v12    # "off":I
    .end local v13    # "type":I
    .end local v14    # "uavg":J
    .end local v16    # "umax":J
    .end local v18    # "umin":J
    :cond_103
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .registers 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "now"    # J

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v1, v6, :cond_29

    .line 925
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v6, v1

    .line 926
    .local v2, "off":I
    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v6, v2, v6

    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v5, v6, v7

    .line 927
    .local v5, "type":I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    .line 928
    .local v3, "time":J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v6, v5, :cond_23

    .line 929
    const/4 v0, 0x1

    .line 930
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v3, v6

    .line 932
    :cond_23
    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 934
    .end local v2    # "off":I
    .end local v3    # "time":J
    .end local v5    # "type":I
    :cond_29
    if-nez v0, :cond_39

    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    .line 935
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iget-wide v7, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v7, p2, v7

    invoke-static {p0, v6, v7, v8}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 937
    :cond_39
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p4, "dumpAll"    # Z

    .prologue
    .line 1727
    if-eqz p4, :cond_6f

    .line 1728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1729
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1730
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1731
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_44

    .line 1734
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1736
    :cond_44
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq p3, v0, :cond_6f

    .line 1737
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1738
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1739
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    :cond_6f
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-eqz v0, :cond_80

    .line 1743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1745
    :cond_80
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v0, :cond_91

    .line 1746
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1748
    :cond_91
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_99

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_b1

    .line 1749
    :cond_99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1750
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1751
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1753
    :cond_b1
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .registers 17
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_19
    if-ltz v8, :cond_5d

    .line 740
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 741
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 745
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget v0, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 747
    const-string v0, " entries)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 749
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 750
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v0, :cond_5a

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 751
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 739
    :cond_5a
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    .line 754
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_5d
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .registers 21
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string/jumbo v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    const-string v4, "\t"

    if-eqz p2, :cond_56

    move-object v3, p3

    :goto_16
    if-eqz p4, :cond_59

    move-object/from16 v2, p5

    :goto_1a
    if-eqz p6, :cond_5c

    move-object/from16 v0, p7

    :goto_1e
    invoke-static {p0, v4, v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 875
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 876
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_2a
    if-ltz v10, :cond_5e

    .line 877
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 878
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 881
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    .line 883
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 876
    add-int/lit8 v10, v10, -0x1

    goto :goto_2a

    .line 872
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "i":I
    :cond_56
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_16

    :cond_59
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1a

    :cond_5c
    const/4 v0, 0x0

    goto :goto_1e

    .line 885
    .restart local v10    # "i":I
    :cond_5e
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .registers 22
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    .prologue
    .line 604
    const/4 v9, 0x0

    .line 605
    .local v9, "printedHeader":Z
    const/4 v11, -0x1

    .line 606
    .local v11, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_3
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v7, v12, :cond_11e

    .line 607
    const/4 v10, -0x1

    .line 608
    .local v10, "printedMem":I
    const/4 v4, 0x0

    .local v4, "im":I
    :goto_a
    move-object/from16 v0, p4

    array-length v12, v0

    if-ge v4, v12, :cond_11a

    .line 609
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_10
    move-object/from16 v0, p5

    array-length v12, v0

    if-ge v6, v12, :cond_116

    .line 610
    aget v8, p3, v7

    .line 611
    .local v8, "iscreen":I
    aget v5, p4, v4

    .line 612
    .local v5, "imem":I
    add-int v12, v8, v5

    mul-int/lit8 v12, v12, 0xe

    aget v13, p5, v6

    add-int v1, v12, v13

    .line 613
    .local v1, "bucket":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v2

    .line 614
    .local v2, "count":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_10c

    .line 615
    if-nez v9, :cond_4a

    .line 616
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    const-string v12, "PSS/USS ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 619
    const-string v12, " entries):"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const/4 v9, 0x1

    .line 622
    :cond_4a
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v12, "  "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_63

    .line 625
    if-eq v11, v8, :cond_110

    move v12, v8

    :goto_5d
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 627
    move v11, v8

    .line 629
    :cond_63
    move-object/from16 v0, p4

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_74

    .line 630
    if-eq v10, v5, :cond_113

    move v12, v5

    :goto_6c
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 631
    move v10, v5

    .line 633
    :cond_74
    sget-object v12, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v13, p5, v6

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 635
    const-string v12, " samples "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 637
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 639
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 641
    const-string v12, " / "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 643
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 645
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 609
    :cond_10c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    .line 625
    :cond_110
    const/4 v12, -0x1

    goto/16 :goto_5d

    .line 630
    :cond_113
    const/4 v12, -0x1

    goto/16 :goto_6c

    .line 608
    .end local v1    # "bucket":I
    .end local v2    # "count":J
    .end local v5    # "imem":I
    .end local v8    # "iscreen":I
    :cond_116
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 606
    .end local v6    # "ip":I
    :cond_11a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 652
    .end local v4    # "im":I
    .end local v10    # "printedMem":I
    :cond_11e
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-eqz v12, :cond_13e

    .line 653
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed for excessive wake locks: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    :cond_13e
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-eqz v12, :cond_15e

    .line 657
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed for excessive CPU use: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    :cond_15e
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-eqz v12, :cond_1b3

    .line 661
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed from cached state: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times from pss "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v12, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v12, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 667
    :cond_1b3
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .registers 26
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .prologue
    .line 556
    const-wide/16 v14, 0x0

    .line 557
    .local v14, "totalTime":J
    const/4 v10, -0x1

    .line 558
    .local v10, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_b6

    .line 559
    const/4 v9, -0x1

    .line 560
    .local v9, "printedMem":I
    const/4 v4, 0x0

    .local v4, "im":I
    :goto_f
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_b2

    .line 561
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_19
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_ae

    .line 562
    aget v8, p3, v7

    .line 563
    .local v8, "iscreen":I
    aget v5, p4, v4

    .line 564
    .local v5, "imem":I
    add-int v16, v8, v5

    mul-int/lit8 v16, v16, 0xe

    aget v17, p5, v6

    add-int v3, v16, v17

    .line 565
    .local v3, "bucket":I
    move-object/from16 v0, p2

    move-wide/from16 v1, p6

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v12

    .line 566
    .local v12, "time":J
    const-string v11, ""

    .line 567
    .local v11, "running":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v3, :cond_44

    .line 568
    const-string v11, " (running)"

    .line 570
    :cond_44
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-eqz v16, :cond_a4

    .line 571
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_66

    .line 573
    if-eq v10, v8, :cond_a8

    move/from16 v16, v8

    :goto_5e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 575
    move v10, v8

    .line 577
    :cond_66
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_83

    .line 578
    if-eq v9, v5, :cond_ab

    move/from16 v16, v5

    :goto_77
    const/16 v17, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 579
    move v9, v5

    .line 581
    :cond_83
    sget-object v16, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v17, p5, v6

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v16, ": "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    add-long/2addr v14, v12

    .line 561
    :cond_a4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_19

    .line 573
    :cond_a8
    const/16 v16, -0x1

    goto :goto_5e

    .line 578
    :cond_ab
    const/16 v16, -0x1

    goto :goto_77

    .line 560
    .end local v3    # "bucket":I
    .end local v5    # "imem":I
    .end local v8    # "iscreen":I
    .end local v11    # "running":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 558
    .end local v6    # "ip":I
    :cond_b2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 588
    .end local v4    # "im":I
    .end local v9    # "printedMem":I
    :cond_b6
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_100

    .line 589
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d5

    .line 591
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 593
    :cond_d5
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_ef

    .line 594
    const/16 v16, -0x1

    const/16 v17, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 596
    :cond_ef
    const-string v16, "TOTAL  : "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 600
    :cond_100
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .registers 36
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .prologue
    .line 704
    if-eqz p2, :cond_5d

    move-object/from16 v0, p3

    array-length v8, v0

    .line 705
    .local v8, "NSS":I
    :goto_5
    if-eqz p4, :cond_5f

    move-object/from16 v0, p5

    array-length v4, v0

    .line 706
    .local v4, "NMS":I
    :goto_a
    if-eqz p6, :cond_61

    move-object/from16 v0, p7

    array-length v6, v0

    .line 707
    .local v6, "NPS":I
    :goto_f
    const/4 v15, 0x0

    .local v15, "iss":I
    :goto_10
    if-ge v15, v8, :cond_a3

    .line 708
    const/4 v11, 0x0

    .local v11, "ims":I
    :goto_13
    if-ge v11, v4, :cond_9f

    .line 709
    const/4 v13, 0x0

    .local v13, "ips":I
    :goto_16
    if-ge v13, v6, :cond_9b

    .line 710
    if-eqz p2, :cond_63

    aget v23, p3, v15

    .line 711
    .local v23, "vsscreen":I
    :goto_1c
    if-eqz p4, :cond_66

    aget v21, p5, v11

    .line 712
    .local v21, "vsmem":I
    :goto_20
    if-eqz p6, :cond_69

    aget v22, p7, v13

    .line 713
    .local v22, "vsproc":I
    :goto_24
    if-eqz p2, :cond_6c

    const/4 v7, 0x1

    .line 714
    .local v7, "NSA":I
    :goto_27
    if-eqz p4, :cond_70

    const/4 v3, 0x1

    .line 715
    .local v3, "NMA":I
    :goto_2a
    if-eqz p6, :cond_74

    const/4 v5, 0x1

    .line 716
    .local v5, "NPA":I
    :goto_2d
    const-wide/16 v16, 0x0

    .line 717
    .local v16, "totalTime":J
    const/4 v14, 0x0

    .local v14, "isa":I
    :goto_30
    if-ge v14, v7, :cond_87

    .line 718
    const/4 v10, 0x0

    .local v10, "ima":I
    :goto_33
    if-ge v10, v3, :cond_84

    .line 719
    const/4 v12, 0x0

    .local v12, "ipa":I
    :goto_36
    if-ge v12, v5, :cond_81

    .line 720
    if-eqz p2, :cond_78

    const/16 v20, 0x0

    .line 721
    .local v20, "vascreen":I
    :goto_3c
    if-eqz p4, :cond_7b

    const/16 v18, 0x0

    .line 722
    .local v18, "vamem":I
    :goto_40
    if-eqz p6, :cond_7e

    const/16 v19, 0x0

    .line 723
    .local v19, "vaproc":I
    :goto_44
    add-int v24, v23, v20

    add-int v24, v24, v21

    add-int v24, v24, v18

    mul-int/lit8 v24, v24, 0xe

    add-int v24, v24, v22

    add-int v9, v24, v19

    .line 725
    .local v9, "bucket":I
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v16, v16, v24

    .line 719
    add-int/lit8 v12, v12, 0x1

    goto :goto_36

    .line 704
    .end local v3    # "NMA":I
    .end local v4    # "NMS":I
    .end local v5    # "NPA":I
    .end local v6    # "NPS":I
    .end local v7    # "NSA":I
    .end local v8    # "NSS":I
    .end local v9    # "bucket":I
    .end local v10    # "ima":I
    .end local v11    # "ims":I
    .end local v12    # "ipa":I
    .end local v13    # "ips":I
    .end local v14    # "isa":I
    .end local v15    # "iss":I
    .end local v16    # "totalTime":J
    .end local v18    # "vamem":I
    .end local v19    # "vaproc":I
    .end local v20    # "vascreen":I
    .end local v21    # "vsmem":I
    .end local v22    # "vsproc":I
    .end local v23    # "vsscreen":I
    :cond_5d
    const/4 v8, 0x1

    goto :goto_5

    .line 705
    .restart local v8    # "NSS":I
    :cond_5f
    const/4 v4, 0x1

    goto :goto_a

    .line 706
    .restart local v4    # "NMS":I
    :cond_61
    const/4 v6, 0x1

    goto :goto_f

    .line 710
    .restart local v6    # "NPS":I
    .restart local v11    # "ims":I
    .restart local v13    # "ips":I
    .restart local v15    # "iss":I
    :cond_63
    const/16 v23, 0x0

    goto :goto_1c

    .line 711
    .restart local v23    # "vsscreen":I
    :cond_66
    const/16 v21, 0x0

    goto :goto_20

    .line 712
    .restart local v21    # "vsmem":I
    :cond_69
    const/16 v22, 0x0

    goto :goto_24

    .line 713
    .restart local v22    # "vsproc":I
    :cond_6c
    move-object/from16 v0, p3

    array-length v7, v0

    goto :goto_27

    .line 714
    .restart local v7    # "NSA":I
    :cond_70
    move-object/from16 v0, p5

    array-length v3, v0

    goto :goto_2a

    .line 715
    .restart local v3    # "NMA":I
    :cond_74
    move-object/from16 v0, p7

    array-length v5, v0

    goto :goto_2d

    .line 720
    .restart local v5    # "NPA":I
    .restart local v10    # "ima":I
    .restart local v12    # "ipa":I
    .restart local v14    # "isa":I
    .restart local v16    # "totalTime":J
    :cond_78
    aget v20, p3, v14

    goto :goto_3c

    .line 721
    .restart local v20    # "vascreen":I
    :cond_7b
    aget v18, p5, v10

    goto :goto_40

    .line 722
    .restart local v18    # "vamem":I
    :cond_7e
    aget v19, p7, v12

    goto :goto_44

    .line 718
    .end local v18    # "vamem":I
    .end local v20    # "vascreen":I
    :cond_81
    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    .line 717
    .end local v12    # "ipa":I
    :cond_84
    add-int/lit8 v14, v14, 0x1

    goto :goto_30

    .line 729
    .end local v10    # "ima":I
    :cond_87
    const-string v24, "\t"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 709
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_16

    .line 708
    .end local v3    # "NMA":I
    .end local v5    # "NPA":I
    .end local v7    # "NSA":I
    .end local v14    # "isa":I
    .end local v16    # "totalTime":J
    .end local v21    # "vsmem":I
    .end local v22    # "vsproc":I
    .end local v23    # "vsscreen":I
    :cond_9b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 707
    .end local v13    # "ips":I
    :cond_9f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_10

    .line 734
    .end local v11    # "ims":I
    :cond_a3
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .registers 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .prologue
    .line 759
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    invoke-direct {v3, p4, p5, p6}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 761
    .local v3, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide v0, p7

    invoke-static {p1, v3, v0, v1}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 762
    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_19

    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2f

    .line 763
    :cond_19
    if-eqz p2, :cond_1e

    .line 764
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    :cond_1e
    if-eqz p3, :cond_23

    .line 767
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    :cond_23
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 770
    if-eqz p2, :cond_2f

    .line 771
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 774
    :cond_2f
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, "i":I
    :goto_6
    if-ltz v12, :cond_156

    .line 780
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 781
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    const-string v0, "* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 786
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    const-string v3, "         TOTAL: "

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 789
    const-string v3, "    Persistent: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 791
    const-string v3, "           Top: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 793
    const-string v3, "        Imp Fg: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 795
    const-string v3, "        Imp Bg: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x3

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 797
    const-string v3, "        Backup: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x4

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 799
    const-string v3, "     Heavy Wgt: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x5

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 801
    const-string v3, "       Service: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x6

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 803
    const-string v3, "    Service Rs: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x7

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 805
    const-string v3, "      Receiver: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x8

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 807
    const-string v3, "        (Home): "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x9

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 809
    const-string v3, "    (Last Act): "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0xa

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 811
    const-string v3, "      (Cached): "

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_158

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 779
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_6

    .line 815
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_156
    return-void

    .line 811
    nop

    :array_158
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p6, "serviceType"    # I
    .param p7, "opCount"    # I
    .param p8, "curState"    # I
    .param p9, "curStartTime"    # J
    .param p11, "now"    # J

    .prologue
    .line 445
    if-gtz p7, :cond_3

    .line 477
    :goto_2
    return-void

    .line 448
    :cond_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 453
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, "didCurState":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    iget v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v2, v8, :cond_58

    .line 459
    iget-object v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v4, v8, v2

    .line 460
    .local v4, "off":I
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v8, v4, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v7, v8, v9

    .line 461
    .local v7, "type":I
    div-int/lit8 v3, v7, 0x4

    .line 462
    .local v3, "memFactor":I
    rem-int/lit8 v7, v7, 0x4

    .line 463
    move/from16 v0, p6

    if-eq v7, v0, :cond_45

    .line 458
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 466
    :cond_45
    iget-object v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    .line 467
    .local v5, "time":J
    move/from16 v0, p8

    if-ne v0, v3, :cond_54

    .line 468
    const/4 v1, 0x1

    .line 469
    sub-long v8, p11, p9

    add-long/2addr v5, v8

    .line 471
    :cond_54
    invoke-static {p0, v3, v5, v6}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_42

    .line 473
    .end local v3    # "memFactor":I
    .end local v4    # "off":I
    .end local v5    # "time":J
    .end local v7    # "type":I
    :cond_58
    if-nez v1, :cond_66

    const/4 v8, -0x1

    move/from16 v0, p8

    if-eq v0, v8, :cond_66

    .line 474
    sub-long v8, p11, p9

    move/from16 v0, p8

    invoke-static {p0, v0, v8, v9}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 476
    :cond_66
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_2
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .registers 27
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    .prologue
    .line 1950
    const-wide/16 v16, 0x0

    .line 1951
    .local v16, "totalTime":J
    const/4 v12, -0x1

    .line 1952
    .local v12, "printedScreen":I
    const/4 v10, 0x0

    .local v10, "iscreen":I
    :goto_4
    const/16 v1, 0x8

    if-ge v10, v1, :cond_62

    .line 1953
    const/4 v11, -0x1

    .line 1954
    .local v11, "printedMem":I
    const/4 v9, 0x0

    .local v9, "imem":I
    :goto_a
    const/4 v1, 0x4

    if-ge v9, v1, :cond_5f

    .line 1955
    add-int v6, v9, v10

    .local v6, "state":I
    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v7, p7

    .line 1956
    # invokes: Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    move-result-wide v14

    .line 1958
    .local v14, "time":J
    const-string v13, ""

    .line 1959
    .local v13, "running":Ljava/lang/String;
    move/from16 v0, p4

    if-ne v0, v6, :cond_27

    if-eqz p0, :cond_27

    .line 1960
    const-string v13, " (running)"

    .line 1962
    :cond_27
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-eqz v1, :cond_58

    .line 1963
    if-eqz p0, :cond_56

    .line 1964
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1965
    if-eq v12, v10, :cond_5b

    move v1, v10

    :goto_35
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1967
    move v12, v10

    .line 1968
    if-eq v11, v9, :cond_5d

    move v1, v9

    :goto_3e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1969
    move v11, v9

    .line 1970
    const-string v1, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1971
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    :cond_56
    add-long v16, v16, v14

    .line 1954
    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1965
    :cond_5b
    const/4 v1, -0x1

    goto :goto_35

    .line 1968
    :cond_5d
    const/4 v1, -0x1

    goto :goto_3e

    .line 1952
    .end local v6    # "state":I
    .end local v13    # "running":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_5f
    add-int/lit8 v10, v10, 0x4

    goto :goto_4

    .line 1977
    .end local v9    # "imem":I
    .end local v11    # "printedMem":I
    :cond_62
    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-eqz v1, :cond_7a

    if-eqz p0, :cond_7a

    .line 1978
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1979
    const-string v1, "    TOTAL: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1980
    invoke-static/range {v16 .. v18}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1981
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 1983
    :cond_7a
    return-wide v16
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .registers 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 388
    const-wide/16 v8, 0x0

    .line 389
    .local v8, "totalTime":J
    const/4 v3, -0x1

    .line 390
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_4
    const/16 v10, 0x8

    if-ge v1, v10, :cond_4c

    .line 391
    const/4 v2, -0x1

    .line 392
    .local v2, "printedMem":I
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_a
    const/4 v10, 0x4

    if-ge v0, v10, :cond_49

    .line 393
    add-int v5, v0, v1

    .line 394
    .local v5, "state":I
    aget-wide v6, p2, v5

    .line 395
    .local v6, "time":J
    const-string v4, ""

    .line 396
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_1c

    .line 397
    sub-long v10, p6, p4

    add-long/2addr v6, v10

    .line 398
    if-eqz p0, :cond_1c

    .line 399
    const-string v4, " (running)"

    .line 402
    :cond_1c
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_42

    .line 403
    if-eqz p0, :cond_41

    .line 404
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    if-eq v3, v1, :cond_45

    move v10, v1

    :goto_2a
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 407
    move v3, v1

    .line 408
    if-eq v2, v0, :cond_47

    move v10, v0

    :goto_31
    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 409
    move v2, v0

    .line 410
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    :cond_41
    add-long/2addr v8, v6

    .line 392
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 405
    :cond_45
    const/4 v10, -0x1

    goto :goto_2a

    .line 408
    :cond_47
    const/4 v10, -0x1

    goto :goto_31

    .line 390
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_49
    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    .line 417
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_4c
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_62

    if-eqz p0, :cond_62

    .line 418
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v10, "    TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 421
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 423
    :cond_62
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .registers 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .prologue
    const/4 v7, 0x1

    .line 671
    if-eqz p2, :cond_4c

    array-length v2, p2

    .line 672
    .local v2, "NS":I
    :goto_4
    if-eqz p3, :cond_4e

    array-length v0, p3

    .line 673
    .local v0, "NM":I
    :goto_7
    if-eqz p4, :cond_50

    array-length v1, p4

    .line 674
    .local v1, "NP":I
    :goto_a
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_b
    if-ge v5, v2, :cond_58

    .line 675
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_e
    if-ge v3, v0, :cond_55

    .line 676
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_11
    if-ge v4, v1, :cond_52

    .line 677
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    const/4 v6, 0x0

    .line 679
    .local v6, "printed":Z
    if-eqz p2, :cond_22

    array-length v8, p2

    if-le v8, v7, :cond_22

    .line 680
    aget v8, p2, v5

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 681
    const/4 v6, 0x1

    .line 683
    :cond_22
    if-eqz p3, :cond_34

    array-length v8, p3

    if-le v8, v7, :cond_34

    .line 684
    if-eqz v6, :cond_2e

    .line 685
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    :cond_2e
    aget v8, p3, v3

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 688
    const/4 v6, 0x1

    .line 690
    :cond_34
    if-eqz p4, :cond_49

    array-length v8, p4

    if-le v8, v7, :cond_49

    .line 691
    if-eqz v6, :cond_40

    .line 692
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    :cond_40
    sget-object v8, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v9, p4, v4

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_4c
    move v2, v7

    .line 671
    goto :goto_4

    .restart local v2    # "NS":I
    :cond_4e
    move v0, v7

    .line 672
    goto :goto_7

    .restart local v0    # "NM":I
    :cond_50
    move v1, v7

    .line 673
    goto :goto_a

    .line 675
    .restart local v1    # "NP":I
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 674
    .end local v4    # "ip":I
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 699
    .end local v3    # "im":I
    :cond_58
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 904
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 905
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 906
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 916
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 917
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 918
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 919
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 920
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .prologue
    .line 888
    div-int v0, p2, p3

    .line 889
    .local v0, "index":I
    if-ltz v0, :cond_11

    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 890
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    :goto_c
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    .line 892
    :cond_11
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_c
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .registers 4
    .param p0, "off"    # I

    .prologue
    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1595
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1596
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1597
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;IC)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_48

    .line 370
    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 374
    :cond_d
    :goto_d
    return-void

    .line 350
    :pswitch_e
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    if-eqz p2, :cond_d

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 354
    :pswitch_1b
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 358
    :pswitch_26
    const-string v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 362
    :pswitch_31
    const-string v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 366
    :pswitch_3c
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 348
    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_e
        :pswitch_1b
        :pswitch_26
        :pswitch_31
        :pswitch_3c
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 377
    if-ltz p1, :cond_c

    .line 378
    const/4 v0, 0x3

    if-gt p1, v0, :cond_d

    .line 379
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    :cond_c
    :goto_c
    return-void

    .line 381
    :cond_d
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 818
    const-wide/high16 v0, 0x4059000000000000L

    mul-double/2addr p1, v0

    .line 819
    const-wide/high16 v0, 0x3ff0000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_22

    .line 820
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    :goto_1c
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    return-void

    .line 821
    :cond_22
    const-wide/high16 v0, 0x4024000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3a

    .line 822
    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c

    .line 824
    :cond_3a
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 898
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 899
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 900
    sget-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 901
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 909
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 910
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 911
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 912
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 913
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_1c

    .line 326
    :pswitch_3
    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    :goto_8
    return-void

    .line 317
    :pswitch_9
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 320
    :pswitch_f
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 323
    :pswitch_15
    const-string v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 315
    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_1c

    .line 342
    :pswitch_3
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    :goto_8
    :pswitch_8
    return-void

    .line 336
    :pswitch_9
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 339
    :pswitch_12
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 332
    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
    .end packed-switch
.end method

.method static printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x44800000

    const/high16 v4, 0x44610000

    .line 830
    long-to-float v0, p1

    .line 831
    .local v0, "result":F
    const-string v1, ""

    .line 832
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v4

    if-lez v3, :cond_10

    .line 833
    const-string v1, "KB"

    .line 834
    div-float/2addr v0, v5

    .line 836
    :cond_10
    cmpl-float v3, v0, v4

    if-lez v3, :cond_17

    .line 837
    const-string v1, "MB"

    .line 838
    div-float/2addr v0, v5

    .line 840
    :cond_17
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1e

    .line 841
    const-string v1, "GB"

    .line 842
    div-float/2addr v0, v5

    .line 844
    :cond_1e
    cmpl-float v3, v0, v4

    if-lez v3, :cond_25

    .line 845
    const-string v1, "TB"

    .line 846
    div-float/2addr v0, v5

    .line 848
    :cond_25
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2c

    .line 849
    const-string v1, "PB"

    .line 850
    div-float/2addr v0, v5

    .line 853
    :cond_2c
    const/high16 v3, 0x3f800000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_47

    .line 854
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "value":Ljava/lang/String;
    :goto_40
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    return-void

    .line 855
    .end local v2    # "value":Ljava/lang/String;
    :cond_47
    const/high16 v3, 0x41200000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5c

    .line 856
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_40

    .line 857
    .end local v2    # "value":Ljava/lang/String;
    :cond_5c
    const/high16 v3, 0x42c80000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_71

    .line 858
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_40

    .line 860
    .end local v2    # "value":Ljava/lang/String;
    :cond_71
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_40
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 1291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "got":I
    if-eq v0, p2, :cond_27

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1293
    const/4 v1, 0x0

    .line 1295
    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x1

    goto :goto_26
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 1153
    const/16 v2, 0x9

    if-gt p2, v2, :cond_9

    .line 1154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    :goto_8
    return-object v2

    .line 1156
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1157
    .local v0, "index":I
    if-ltz v0, :cond_18

    .line 1158
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_8

    .line 1160
    :cond_18
    xor-int/lit8 v0, v0, -0x1

    .line 1161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    .local v1, "name":Ljava/lang/String;
    :goto_1e
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2d

    .line 1163
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1165
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1166
    goto :goto_8
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .prologue
    .line 1116
    const/16 v4, 0xa

    if-gt p2, v4, :cond_8

    .line 1117
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 1138
    :cond_7
    return-void

    .line 1120
    :cond_8
    array-length v0, p3

    .line 1121
    .local v0, "alen":I
    if-le p4, v0, :cond_2e

    .line 1122
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1125
    :cond_2e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, p4, :cond_4c

    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1127
    .local v3, "val":I
    if-ltz v3, :cond_3d

    .line 1128
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 1125
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1130
    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1131
    .local v1, "bottom":I
    xor-int/lit8 v4, v3, -0x1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_3a

    .line 1134
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_4c
    :goto_4c
    if-ge v2, v0, :cond_7

    .line 1135
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .registers 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1299
    const/4 v4, 0x0

    .line 1300
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1301
    .local v2, "initialAvail":I
    if-lez v2, :cond_17

    add-int/lit8 v5, v2, 0x1

    :goto_a
    new-array v1, v5, [B

    .line 1303
    .local v1, "data":[B
    :cond_c
    :goto_c
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1306
    .local v0, "amt":I
    if-gez v0, :cond_1a

    .line 1309
    aput v4, p1, v6

    .line 1310
    return-object v1

    .line 1301
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_17
    const/16 v5, 0x4000

    goto :goto_a

    .line 1312
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_1a
    add-int/2addr v4, v0

    .line 1313
    array-length v5, v1

    if-lt v4, v5, :cond_c

    .line 1314
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 1317
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1318
    move-object v1, v3

    goto :goto_c
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1076
    .local v1, "size":I
    if-gez v1, :cond_2c

    .line 1077
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    .line 1094
    :cond_2b
    :goto_2b
    return-object v2

    .line 1080
    :cond_2c
    if-nez v1, :cond_30

    move-object v2, v3

    .line 1081
    goto :goto_2b

    .line 1083
    :cond_30
    new-array v2, v1, [I

    .line 1084
    .local v2, "table":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    if-ge v0, v1, :cond_2b

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 1088
    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ProcessStats;->validateLongOffset(I)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 1089
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring existing stats; bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-static {v6}, Lcom/android/internal/app/ProcessStats;->printLongOffset(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1091
    goto :goto_2b

    .line 1084
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method private resetCommon()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1035
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1037
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1040
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 1041
    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1043
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1044
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 1045
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1142
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    :goto_11
    return-void

    .line 1146
    :cond_12
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1147
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 14
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1098
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, p3, :cond_47

    .line 1099
    aget-wide v3, p2, v1

    .line 1100
    .local v3, "val":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_28

    .line 1101
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-wide/16 v3, 0x0

    .line 1104
    :cond_28
    cmp-long v5, v3, v8

    if-gtz v5, :cond_33

    .line 1105
    long-to-int v5, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1107
    :cond_33
    const/16 v5, 0x20

    shr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    xor-int/lit8 v2, v5, -0x1

    .line 1108
    .local v2, "top":I
    const-wide/32 v5, 0xfffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    .line 1109
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 1113
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v3    # "val":J
    :cond_47
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .registers 35
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats;

    .prologue
    .line 230
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 231
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_b
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_f9

    .line 232
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 233
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 234
    .local v25, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v11, 0x0

    .local v11, "iu":I
    :goto_24
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_f5

    .line 235
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 236
    .local v24, "uid":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 237
    .local v15, "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 238
    .local v5, "NPROCS":I
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 239
    .local v6, "NSRVS":I
    const/4 v9, 0x0

    .local v9, "iproc":I
    :goto_4b
    if-ge v9, v5, :cond_be

    .line 240
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 241
    .local v14, "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v14, :cond_bb

    .line 244
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v21

    .line 246
    .local v21, "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b6

    .line 248
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 250
    .local v12, "now":J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v19

    .line 251
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v21

    .line 252
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v12    # "now":J
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_b6
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 239
    .end local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    .line 257
    .end local v14    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_be
    const/4 v10, 0x0

    .local v10, "isvc":I
    :goto_bf
    if-ge v10, v6, :cond_f1

    .line 258
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 261
    .local v16, "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v23

    .line 263
    .local v23, "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 257
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    .line 234
    .end local v16    # "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v23    # "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_f1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_24

    .line 231
    .end local v5    # "NPROCS":I
    .end local v6    # "NSRVS":I
    .end local v9    # "iproc":I
    .end local v10    # "isvc":I
    .end local v15    # "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v24    # "uid":I
    :cond_f5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    .line 268
    .end local v11    # "iu":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v25    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_f9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v20

    .line 269
    .local v20, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/4 v8, 0x0

    :goto_104
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_1ad

    .line 270
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/SparseArray;

    .line 271
    .local v26, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    .restart local v11    # "iu":I
    :goto_115
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_1a9

    .line 272
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 273
    .restart local v24    # "uid":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 274
    .restart local v14    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 276
    .restart local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v21, :cond_1a0

    .line 278
    new-instance v21, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move/from16 v3, v24

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    .restart local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v22

    .line 281
    .local v22, "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1a0

    .line 282
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v22    # "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_1a0
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 271
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_115

    .line 269
    .end local v14    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v24    # "uid":I
    :cond_1a9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_104

    .line 289
    .end local v11    # "iu":I
    .end local v26    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1ad
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1ae
    const/16 v27, 0x8

    move/from16 v0, v27

    if-ge v7, v0, :cond_1cb

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    add-long v28, v28, v30

    aput-wide v28, v27, v7

    .line 289
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ae

    .line 296
    :cond_1cb
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-gez v27, :cond_1f3

    .line 297
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 298
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 300
    :cond_1f3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v31, v0

    sub-long v29, v29, v31

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 301
    return-void
.end method

.method addLongData(III)I
    .registers 12
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "num"    # I

    .prologue
    const/4 v4, 0x0

    .line 1546
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    array-length v3, v5

    .line 1547
    .local v3, "tableLen":I
    :goto_8
    iget v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    if-lt v5, v3, :cond_1d

    .line 1548
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 1549
    .local v0, "newSize":I
    new-array v1, v0, [I

    .line 1550
    .local v1, "newTable":[I
    if-lez v3, :cond_1b

    .line 1551
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    invoke-static {v5, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1553
    :cond_1b
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 1555
    .end local v0    # "newSize":I
    .end local v1    # "newTable":[I
    :cond_1d
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    if-lez v4, :cond_32

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    sub-int/2addr v4, p1

    if-eqz v4, :cond_32

    .line 1556
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, p1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1559
    :cond_32
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->allocLongData(I)I

    move-result v2

    .line 1560
    .local v2, "off":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v5, p2, v2

    aput v5, v4, p1

    .line 1561
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 1562
    return v2

    .end local v2    # "off":I
    .end local v3    # "tableLen":I
    :cond_43
    move v3, v4

    .line 1546
    goto :goto_8
.end method

.method allocLongData(I)I
    .registers 8
    .param p1, "num"    # I

    .prologue
    .line 1566
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1567
    .local v2, "whichLongs":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1568
    .local v0, "longs":[J
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    array-length v4, v0

    if-le v3, v4, :cond_24

    .line 1569
    const/16 v3, 0x1000

    new-array v0, v3, [J

    .line 1570
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    add-int/lit8 v2, v2, 0x1

    .line 1572
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1574
    :cond_24
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shl-int v3, v2, v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shl-int/2addr v4, v5

    or-int v1, v3, v4

    .line 1575
    .local v1, "off":I
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1576
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    .prologue
    .line 2115
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2117
    .local v0, "ITEMLEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2118
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_13

    .line 2119
    const-string p2, ""

    .line 2126
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    .end local p2    # "itemName":Ljava/lang/String;
    :cond_12
    :goto_12
    return-object p2

    .line 2120
    .restart local v0    # "ITEMLEN":I
    .restart local v1    # "PKGLEN":I
    .restart local p2    # "itemName":Ljava/lang/String;
    :cond_13
    if-lt v0, v1, :cond_12

    .line 2121
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    .line 2122
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_12
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .registers 29
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2070
    .local v9, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    .line 2071
    .local v15, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_e
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v11, v3, :cond_78

    .line 2072
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2073
    .local v17, "pkgName":Ljava/lang/String;
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 2074
    .local v18, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v13, 0x0

    .local v13, "iu":I
    :goto_21
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_75

    .line 2075
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2076
    .local v19, "state":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 2077
    .local v8, "NPROCS":I
    if-eqz p7, :cond_43

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    :cond_43
    const/16 v16, 0x1

    .line 2078
    .local v16, "pkgMatch":Z
    :goto_45
    const/4 v12, 0x0

    .local v12, "iproc":I
    :goto_46
    if-ge v12, v8, :cond_72

    .line 2079
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2080
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v16, :cond_64

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 2078
    :cond_5e
    :goto_5e
    add-int/lit8 v12, v12, 0x1

    goto :goto_46

    .line 2077
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v12    # "iproc":I
    .end local v16    # "pkgMatch":Z
    :cond_61
    const/16 v16, 0x0

    goto :goto_45

    .line 2083
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v12    # "iproc":I
    .restart local v16    # "pkgMatch":Z
    :cond_64
    if-eqz p8, :cond_6c

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 2086
    :cond_6c
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 2074
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_72
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    .line 2071
    .end local v8    # "NPROCS":I
    .end local v12    # "iproc":I
    .end local v16    # "pkgMatch":Z
    .end local v19    # "state":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 2090
    .end local v13    # "iu":I
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_78
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2091
    .local v14, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_82
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v10, v3, :cond_b7

    .line 2092
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 2093
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_b4

    .line 2094
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_b4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2096
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    .line 2091
    :cond_b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 2100
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_b7
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2111
    return-object v14
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 41
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 2130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2131
    .local v13, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 2132
    .local v30, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const-string/jumbo v2, "vers,3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    const-string/jumbo v2, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2134
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2135
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v2, :cond_cd

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_46
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2136
    const/16 v29, 0x1

    .line 2137
    .local v29, "partial":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5e

    .line 2138
    const-string v2, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2139
    const/16 v29, 0x0

    .line 2141
    :cond_5e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6f

    .line 2142
    const-string v2, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2143
    const/16 v29, 0x0

    .line 2145
    :cond_6f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_80

    .line 2146
    const-string v2, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    const/16 v29, 0x0

    .line 2149
    :cond_80
    if-eqz v29, :cond_89

    .line 2150
    const-string v2, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2152
    :cond_89
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2153
    const-string v2, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    const/16 v25, 0x0

    .local v25, "ip":I
    :goto_ae
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_2be

    .line 2155
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2156
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_d3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 2154
    :cond_ca
    add-int/lit8 v25, v25, 0x1

    goto :goto_ae

    .line 2135
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v25    # "ip":I
    .end local v29    # "partial":Z
    :cond_cd
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto/16 :goto_46

    .line 2159
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v25    # "ip":I
    .restart local v29    # "partial":Z
    :cond_d3
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/SparseArray;

    .line 2160
    .local v36, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v28, 0x0

    .local v28, "iu":I
    :goto_df
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_ca

    .line 2161
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2162
    .local v5, "uid":I
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2163
    .local v31, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 2164
    .local v23, "NPROCS":I
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v24

    .line 2165
    .local v24, "NSRVS":I
    const/16 v26, 0x0

    .local v26, "iproc":I
    :goto_10b
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_255

    .line 2166
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2167
    .local v32, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string/jumbo v2, "pkgproc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2171
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2174
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2175
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v2, :cond_1a5

    .line 2176
    const-string/jumbo v2, "pkgpss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2178
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2180
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2183
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2185
    :cond_1a5
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v2, :cond_1b7

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v2, :cond_1b7

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_251

    .line 2187
    :cond_1b7
    const-string/jumbo v2, "pkgkills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2191
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2195
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2197
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2199
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2201
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2203
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2205
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2165
    :cond_251
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_10b

    .line 2208
    .end local v32    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_255
    const/16 v27, 0x0

    .local v27, "isvc":I
    :goto_257
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_2ba

    .line 2209
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2211
    .local v6, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2212
    .local v7, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string/jumbo v3, "pkgsvc-run"

    const/4 v8, 0x0

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2215
    const-string/jumbo v3, "pkgsvc-start"

    const/4 v8, 0x1

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2218
    const-string/jumbo v3, "pkgsvc-bound"

    const/4 v8, 0x2

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2221
    const-string/jumbo v3, "pkgsvc-exec"

    const/4 v8, 0x3

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2208
    add-int/lit8 v27, v27, 0x1

    goto :goto_257

    .line 2160
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_2ba
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_df

    .line 2228
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v23    # "NPROCS":I
    .end local v24    # "NSRVS":I
    .end local v26    # "iproc":I
    .end local v27    # "isvc":I
    .end local v28    # "iu":I
    .end local v31    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v36    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_2be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v33

    .line 2229
    .local v33, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v25, 0x0

    :goto_2c8
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_3ed

    .line 2230
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 2231
    .local v34, "procName":Ljava/lang/String;
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/SparseArray;

    .line 2232
    .local v37, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v28, 0x0

    .restart local v28    # "iu":I
    :goto_2e6
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_3e9

    .line 2233
    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2234
    .restart local v5    # "uid":I
    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2235
    .local v35, "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-lez v2, :cond_32b

    .line 2236
    const-string/jumbo v2, "proc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2237
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2239
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2240
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2241
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2243
    :cond_32b
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v2, :cond_356

    .line 2244
    const-string/jumbo v2, "pss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2245
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2248
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2249
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2251
    :cond_356
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v2, :cond_368

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v2, :cond_368

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_3e5

    .line 2253
    :cond_368
    const-string v2, "kills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2256
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2257
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2259
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2261
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2263
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2265
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2267
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2269
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2232
    :cond_3e5
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2e6

    .line 2229
    .end local v5    # "uid":I
    .end local v35    # "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3e9
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2c8

    .line 2273
    .end local v28    # "iu":I
    .end local v34    # "procName":Ljava/lang/String;
    .end local v37    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_3ed
    const-string/jumbo v2, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    const-string v16, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v19, v0

    move-object/from16 v15, p1

    move-wide/from16 v21, v13

    invoke-static/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2276
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2277
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .prologue
    .line 2054
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2056
    .local v2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 2057
    if-eqz p2, :cond_1f

    .line 2058
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2059
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 2061
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 2064
    :cond_2c
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .registers 62
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    .prologue
    .line 1757
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v15

    .line 1759
    .local v15, "totalTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v42

    .line 1760
    .local v42, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v46, 0x0

    .line 1761
    .local v46, "printedHeader":Z
    const/16 v50, 0x0

    .line 1762
    .local v50, "sepNeeded":Z
    const/16 v36, 0x0

    .local v36, "ip":I
    :goto_22
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_36c

    .line 1763
    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 1764
    .local v44, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/util/SparseArray;

    .line 1765
    .local v52, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v39, 0x0

    .local v39, "iu":I
    :goto_40
    invoke-virtual/range {v52 .. v52}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_368

    .line 1766
    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v51

    .line 1767
    .local v51, "uid":I
    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1768
    .local v45, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v34

    .line 1769
    .local v34, "NPROCS":I
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v35

    .line 1770
    .local v35, "NSRVS":I
    if-eqz p2, :cond_76

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    :cond_76
    const/16 v43, 0x1

    .line 1771
    .local v43, "pkgMatch":Z
    :goto_78
    if-nez v43, :cond_a7

    .line 1772
    const/16 v48, 0x0

    .line 1773
    .local v48, "procMatch":Z
    const/16 v37, 0x0

    .local v37, "iproc":I
    :goto_7e
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_9c

    .line 1774
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1775
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1776
    const/16 v48, 0x1

    .line 1780
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9c
    if-nez v48, :cond_a7

    .line 1765
    .end local v48    # "procMatch":Z
    :cond_9e
    add-int/lit8 v39, v39, 0x1

    goto :goto_40

    .line 1770
    .end local v37    # "iproc":I
    .end local v43    # "pkgMatch":Z
    :cond_a1
    const/16 v43, 0x0

    goto :goto_78

    .line 1773
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v37    # "iproc":I
    .restart local v43    # "pkgMatch":Z
    .restart local v48    # "procMatch":Z
    :cond_a4
    add-int/lit8 v37, v37, 0x1

    goto :goto_7e

    .line 1784
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v37    # "iproc":I
    .end local v48    # "procMatch":Z
    :cond_a7
    if-gtz v34, :cond_ab

    if-lez v35, :cond_db

    .line 1785
    :cond_ab
    if-nez v46, :cond_b8

    .line 1786
    const-string v4, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    const/16 v46, 0x1

    .line 1788
    const/16 v50, 0x1

    .line 1790
    :cond_b8
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    :cond_db
    if-eqz p5, :cond_df

    if-eqz p6, :cond_195

    .line 1794
    :cond_df
    const/16 v37, 0x0

    .restart local v37    # "iproc":I
    :goto_e1
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_1d8

    .line 1795
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1796
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v43, :cond_102

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_102

    .line 1794
    :goto_ff
    add-int/lit8 v37, v37, 0x1

    goto :goto_e1

    .line 1799
    :cond_102
    if-eqz p7, :cond_12a

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_12a

    .line 1800
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ff

    .line 1804
    :cond_12a
    const-string v4, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1805
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1806
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_18d

    .line 1807
    const-string v4, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1811
    :goto_14f
    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1812
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1813
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1816
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1818
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_ff

    .line 1809
    :cond_18d
    const-string v4, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14f

    .line 1821
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v37    # "iproc":I
    :cond_195
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v37, 0x0

    .restart local v37    # "iproc":I
    :goto_19c
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_1c9

    .line 1823
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1824
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v43, :cond_1bd

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1bd

    .line 1822
    :cond_1ba
    :goto_1ba
    add-int/lit8 v37, v37, 0x1

    goto :goto_19c

    .line 1827
    :cond_1bd
    if-eqz p7, :cond_1c5

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 1830
    :cond_1c5
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ba

    .line 1832
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1c9
    const-string v8, "      "

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v12, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v7, p1

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v16}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1835
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1d8
    const/16 v38, 0x0

    .local v38, "isvc":I
    :goto_1da
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_9e

    .line 1836
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1837
    .local v23, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-nez v43, :cond_1fd

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1fd

    .line 1835
    :cond_1fa
    :goto_1fa
    add-int/lit8 v38, v38, 0x1

    goto :goto_1da

    .line 1840
    :cond_1fd
    if-eqz p7, :cond_225

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_225

    .line 1841
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1842
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1fa

    .line 1845
    :cond_225
    if-eqz p6, :cond_350

    .line 1846
    const-string v4, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    :goto_22e
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1851
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    const-string v4, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "    "

    const-string v22, "Running"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_276

    if-eqz p6, :cond_359

    :cond_276
    const/16 v33, 0x1

    :goto_278
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1856
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "    "

    const-string v22, "Started"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_2a3

    if-eqz p6, :cond_35d

    :cond_2a3
    const/16 v33, 0x1

    :goto_2a5
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1859
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "      "

    const-string v22, "Bound"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_2d0

    if-eqz p6, :cond_361

    :cond_2d0
    const/16 v33, 0x1

    :goto_2d2
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1862
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "  "

    const-string v22, "Executing"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_2fd

    if-eqz p6, :cond_365

    :cond_2fd
    const/16 v33, 0x1

    :goto_2ff
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1865
    if-eqz p6, :cond_1fa

    .line 1866
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v4, :cond_322

    .line 1867
    const-string v4, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1869
    :cond_322
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v4, :cond_32e

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v4, :cond_1fa

    .line 1870
    :cond_32e
    const-string v4, "        mStarted="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1871
    const-string v4, " mRestarting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_1fa

    .line 1848
    :cond_350
    const-string v4, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_22e

    .line 1853
    :cond_359
    const/16 v33, 0x0

    goto/16 :goto_278

    .line 1856
    :cond_35d
    const/16 v33, 0x0

    goto/16 :goto_2a5

    .line 1859
    :cond_361
    const/16 v33, 0x0

    goto/16 :goto_2d2

    .line 1862
    :cond_365
    const/16 v33, 0x0

    goto :goto_2ff

    .line 1762
    .end local v23    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v34    # "NPROCS":I
    .end local v35    # "NSRVS":I
    .end local v37    # "iproc":I
    .end local v38    # "isvc":I
    .end local v43    # "pkgMatch":Z
    .end local v45    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v51    # "uid":I
    :cond_368
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_22

    .line 1878
    .end local v39    # "iu":I
    .end local v44    # "pkgName":Ljava/lang/String;
    .end local v52    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_36c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v47

    .line 1879
    .local v47, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v46, 0x0

    .line 1880
    const/16 v40, 0x0

    .local v40, "numShownProcs":I
    const/16 v41, 0x0

    .line 1881
    .local v41, "numTotalProcs":I
    const/16 v36, 0x0

    :goto_37c
    invoke-virtual/range {v47 .. v47}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_47b

    .line 1882
    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 1883
    .local v49, "procName":Ljava/lang/String;
    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/util/SparseArray;

    .line 1884
    .local v53, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v39, 0x0

    .restart local v39    # "iu":I
    :goto_39a
    invoke-virtual/range {v53 .. v53}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_477

    .line 1885
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v51

    .line 1886
    .restart local v51    # "uid":I
    add-int/lit8 v41, v41, 0x1

    .line 1887
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1888
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-nez v4, :cond_3c6

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3c6

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-nez v4, :cond_3c6

    .line 1884
    :cond_3c3
    :goto_3c3
    add-int/lit8 v39, v39, 0x1

    goto :goto_39a

    .line 1892
    :cond_3c6
    iget-boolean v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_3c3

    .line 1895
    if-eqz p2, :cond_3e0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e0

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    .line 1899
    :cond_3e0
    add-int/lit8 v40, v40, 0x1

    .line 1900
    if-eqz v50, :cond_3e7

    .line 1901
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1903
    :cond_3e7
    const/16 v50, 0x1

    .line 1904
    if-nez v46, :cond_3f4

    .line 1905
    const-string v4, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    const/16 v46, 0x1

    .line 1908
    :cond_3f4
    if-eqz p7, :cond_412

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_412

    .line 1909
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3c3

    .line 1912
    :cond_412
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1913
    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1914
    const-string v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1915
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    const-string v25, "        "

    sget-object v27, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v28, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v29, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v24, p1

    move-object/from16 v26, v6

    move-wide/from16 v30, p3

    invoke-static/range {v24 .. v31}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1918
    const-string v18, "        "

    sget-object v20, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v21, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v22, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v17, p1

    move-object/from16 v19, v6

    invoke-static/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1920
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_3c3

    .line 1881
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v51    # "uid":I
    :cond_477
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_37c

    .line 1923
    .end local v39    # "iu":I
    .end local v49    # "procName":Ljava/lang/String;
    .end local v53    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_47b
    if-eqz p6, :cond_4a3

    .line 1924
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1925
    const-string v4, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1926
    const-string v4, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    :cond_4a3
    if-eqz v50, :cond_4a8

    .line 1930
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1932
    :cond_4a8
    if-eqz p5, :cond_4ff

    .line 1933
    const-string v4, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-wide/from16 v20, p3

    move/from16 v22, p7

    .line 1934
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1939
    :goto_4be
    if-eqz p6, :cond_4fe

    .line 1940
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1941
    const-string v4, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    const-string v4, "  Num long arrays: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1943
    const-string v4, "  Next long entry: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1944
    const-string v4, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1946
    :cond_4fe
    return-void

    .line 1936
    :cond_4ff
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_4be
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "count"    # I
    .param p8, "serviceType"    # I
    .param p9, "state"    # I
    .param p10, "startTime"    # J
    .param p12, "now"    # J
    .param p14, "totalTime"    # J
    .param p16, "dumpAll"    # Z

    .prologue
    .line 1990
    if-eqz p7, :cond_2b

    .line 1991
    if-eqz p16, :cond_2c

    .line 1992
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1993
    const-string v2, " op count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-wide/from16 v9, p12

    .line 1994
    invoke-static/range {v2 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    .line 2006
    :cond_2b
    :goto_2b
    return-void

    .line 1997
    :cond_2c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-wide/from16 v9, p12

    invoke-static/range {v2 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v11

    .line 1999
    .local v11, "myTime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2000
    const-string v2, " count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2001
    const-string v2, " / time "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2002
    long-to-double v2, v11

    move-wide/from16 v0, p14

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 2003
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .prologue
    .line 2009
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 2011
    .local v14, "totalTime":J
    const/4 v6, 0x0

    const-string v7, "  "

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 2013
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2014
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 2015
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    const/16 v9, 0x20

    .line 2018
    const-string v0, "Run time Stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    const-string v1, "  "

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object v0, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2020
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2021
    const-string v0, "          Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2022
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2024
    const-string v0, "  Total elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2025
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_7e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_38
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2028
    const/4 v8, 0x1

    .line 2029
    .local v8, "partial":Z
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4b

    .line 2030
    const-string v0, " (shutdown)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    const/4 v8, 0x0

    .line 2033
    :cond_4b
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_57

    .line 2034
    const-string v0, " (sysprops)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2035
    const/4 v8, 0x0

    .line 2037
    :cond_57
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_63

    .line 2038
    const-string v0, " (complete)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2039
    const/4 v8, 0x0

    .line 2041
    :cond_63
    if-eqz v8, :cond_6a

    .line 2042
    const-string v0, " (partial)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2044
    :cond_6a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2045
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2047
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2048
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2049
    return-void

    .line 2025
    .end local v8    # "partial":Z
    :cond_7e
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_38
.end method

.method public evaluateSystemProperties(Z)Z
    .registers 7
    .param p1, "update"    # Z

    .prologue
    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, "changed":Z
    const-string/jumbo v3, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "runtime":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1052
    const/4 v0, 0x1

    .line 1053
    if-eqz p1, :cond_1d

    .line 1054
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1057
    :cond_1d
    invoke-static {}, Landroid/webkit/WebViewFactory;->useExperimentalWebView()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v2, "chromeview"

    .line 1058
    .local v2, "webview":Ljava/lang/String;
    :goto_25
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1059
    const/4 v0, 0x1

    .line 1060
    if-eqz p1, :cond_32

    .line 1061
    iput-object v2, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    .line 1064
    :cond_32
    return v0

    .line 1057
    .end local v2    # "webview":Ljava/lang/String;
    :cond_33
    const-string/jumbo v2, "webview"

    goto :goto_25
.end method

.method getLong(II)J
    .registers 7
    .param p1, "off"    # I
    .param p2, "index"    # I

    .prologue
    .line 1607
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1608
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1631
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1632
    .local v0, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 1637
    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    .local v1, "as":Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 1635
    .end local v1    # "as":Ljava/lang/Object;
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_c
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1636
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1637
    .restart local v1    # "as":Ljava/lang/Object;
    goto :goto_b
.end method

.method public getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 1641
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v21

    .line 1642
    .local v21, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1643
    .local v4, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_15

    move-object/from16 v22, v4

    .line 1706
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v22, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_14
    return-object v22

    .line 1646
    .end local v22    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1647
    .local v5, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v5, :cond_3d

    .line 1648
    new-instance v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 1649
    .restart local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1652
    :cond_3d
    iget-boolean v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v6, :cond_e2

    .line 1653
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1656
    move-object v4, v5

    .line 1704
    :goto_4c
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v4

    .line 1706
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v22    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_14

    .line 1663
    .end local v22    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_58
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 1668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1671
    .local v9, "now":J
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v19

    .line 1672
    .local v19, "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v19, :cond_a3

    .line 1673
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v18

    .line 1676
    .local v18, "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v20, v6, -0x1

    .local v20, "i":I
    :goto_86
    if-ltz v20, :cond_d5

    .line 1680
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1681
    .local v23, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v6, v5, :cond_a0

    .line 1684
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1679
    :cond_a0
    add-int/lit8 v20, v20, -0x1

    goto :goto_86

    .line 1690
    .end local v18    # "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v20    # "i":I
    .end local v23    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_a3
    const-string v6, "ProcessStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cloning proc state: no package state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_d5
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1696
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_4c

    .line 1700
    .end local v9    # "now":J
    .end local v19    # "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_e2
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_4c
.end method

.method public getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 1711
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v6

    .line 1712
    .local v6, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1713
    .local v0, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_10

    move-object v7, v0

    .line 1722
    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v7, "ss":Ljava/lang/Object;
    :goto_f
    return-object v7

    .line 1717
    .end local v7    # "ss":Ljava/lang/Object;
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_10
    if-eqz p3, :cond_26

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v5

    .line 1719
    .local v5, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_16
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1720
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 1722
    .restart local v7    # "ss":Ljava/lang/Object;
    goto :goto_f

    .line 1717
    .end local v5    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "ss":Ljava/lang/Object;
    :cond_26
    const/4 v5, 0x0

    goto :goto_16
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1325
    const/4 v4, 0x1

    :try_start_1
    new-array v2, v4, [I

    .line 1326
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 1327
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1328
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1329
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1330
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1332
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 1336
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_1c
    return-void

    .line 1333
    :catch_1d
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_1c
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 30
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1339
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_1c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_34

    :cond_1c
    const/16 v22, 0x1

    .line 1341
    .local v22, "hadData":Z
    :goto_1e
    if-eqz v22, :cond_23

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 1345
    :cond_23
    const v10, 0x50535453

    const-string/jumbo v11, "magic number"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_37

    .line 1543
    :cond_33
    :goto_33
    return-void

    .line 1339
    .end local v22    # "hadData":Z
    :cond_34
    const/16 v22, 0x0

    goto :goto_1e

    .line 1348
    .restart local v22    # "hadData":Z
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1349
    .local v27, "version":I
    const/16 v10, 0xd

    move/from16 v0, v27

    if-eq v0, v10, :cond_5b

    .line 1350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_33

    .line 1353
    :cond_5b
    const/16 v10, 0xe

    const-string/jumbo v11, "state count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1356
    const/16 v10, 0x8

    const-string v11, "adj count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1359
    const/4 v10, 0x7

    const-string/jumbo v11, "pss count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1362
    const/16 v10, 0x1000

    const-string v11, "longs size"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1366
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1369
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1370
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1371
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1372
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1373
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    .line 1374
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1376
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1377
    .local v16, "NLONGS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1378
    .local v15, "NEXTLONG":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1379
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_e1
    add-int/lit8 v10, v16, -0x1

    move/from16 v0, v24

    if-ge v0, v10, :cond_119

    .line 1380
    :goto_e7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v0, v24

    if-lt v0, v10, :cond_ff

    .line 1381
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v11, 0x1000

    new-array v11, v11, [J

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 1383
    :cond_ff
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    const/16 v11, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1379
    add-int/lit8 v24, v24, 0x1

    goto :goto_e1

    .line 1385
    :cond_119
    const/16 v10, 0x1000

    new-array v0, v10, [J

    move-object/from16 v25, v0

    .line 1386
    .local v25, "longs":[J
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    array-length v11, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1392
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1393
    .local v18, "NPROC":I
    if-gez v18, :cond_16a

    .line 1394
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad process count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1397
    :cond_16a
    if-lez v18, :cond_20f

    .line 1398
    add-int/lit8 v18, v18, -0x1

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1400
    .local v8, "procName":Ljava/lang/String;
    if-nez v8, :cond_182

    .line 1401
    const-string v10, "bad process name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1404
    :cond_182
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1405
    .local v21, "NUID":I
    if-gez v21, :cond_1aa

    .line 1406
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1434
    .local v4, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v6, "pkgName":Ljava/lang/String;
    .local v7, "uid":I
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1409
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_1aa
    if-lez v21, :cond_16a

    .line 1410
    add-int/lit8 v21, v21, -0x1

    .line 1411
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1412
    .restart local v7    # "uid":I
    if-gez v7, :cond_1cd

    .line 1413
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1416
    :cond_1cd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1417
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_1e1

    .line 1418
    const-string v10, "bad process package name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1421
    :cond_1e1
    if-eqz v22, :cond_1fb

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v4, v10

    .line 1422
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_1ee
    if-eqz v4, :cond_1fd

    .line 1423
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_1a3

    goto/16 :goto_33

    .line 1421
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1fb
    const/4 v4, 0x0

    goto :goto_1ee

    .line 1427
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1fd
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 1428
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_1a3

    goto/16 :goto_33

    .line 1440
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "procName":Ljava/lang/String;
    .end local v21    # "NUID":I
    :cond_20f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1441
    .local v17, "NPKG":I
    if-gez v17, :cond_230

    .line 1442
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1445
    :cond_230
    if-lez v17, :cond_3ae

    .line 1446
    add-int/lit8 v17, v17, -0x1

    .line 1447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1448
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_248

    .line 1449
    const-string v10, "bad package name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1452
    :cond_248
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1453
    .restart local v21    # "NUID":I
    if-gez v21, :cond_269

    .line 1454
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1457
    :cond_269
    if-lez v21, :cond_230

    .line 1458
    add-int/lit8 v21, v21, -0x1

    .line 1459
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1460
    .restart local v7    # "uid":I
    if-gez v7, :cond_28c

    .line 1461
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1464
    :cond_28c
    new-instance v26, Lcom/android/internal/app/ProcessStats$PackageState;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1465
    .local v26, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    invoke-virtual {v10, v6, v7, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1466
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1467
    .local v19, "NPROCS":I
    if-gez v19, :cond_2c4

    .line 1468
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package process count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1506
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v5, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v8    # "procName":Ljava/lang/String;
    .local v23, "hasProc":I
    :cond_2bd
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "procName":Ljava/lang/String;
    .end local v23    # "hasProc":I
    :cond_2c4
    :goto_2c4
    if-lez v19, :cond_33e

    .line 1472
    add-int/lit8 v19, v19, -0x1

    .line 1473
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1474
    .restart local v8    # "procName":Ljava/lang/String;
    if-nez v8, :cond_2dc

    .line 1475
    const-string v10, "bad package process name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1478
    :cond_2dc
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1481
    .restart local v23    # "hasProc":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1484
    .restart local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v5, :cond_306

    .line 1485
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no common proc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1488
    :cond_306
    if-eqz v23, :cond_336

    .line 1493
    if-eqz v22, :cond_322

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v4, v10

    .line 1494
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_315
    if-eqz v4, :cond_324

    .line 1495
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_2bd

    goto/16 :goto_33

    .line 1493
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_322
    const/4 v4, 0x0

    goto :goto_315

    .line 1499
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_324
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-wide/16 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1500
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_2bd

    goto/16 :goto_33

    .line 1510
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_336
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c4

    .line 1513
    .end local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "procName":Ljava/lang/String;
    .end local v23    # "hasProc":I
    :cond_33e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1514
    .local v20, "NSRVS":I
    if-gez v20, :cond_366

    .line 1515
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package service count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1535
    .local v9, "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v12, "serviceName":Ljava/lang/String;
    .local v13, "processName":Ljava/lang/String;
    :cond_35f
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    .end local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "processName":Ljava/lang/String;
    :cond_366
    if-lez v20, :cond_269

    .line 1519
    add-int/lit8 v20, v20, -0x1

    .line 1520
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1521
    .restart local v12    # "serviceName":Ljava/lang/String;
    if-nez v12, :cond_378

    .line 1522
    const-string v10, "bad package service name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1525
    :cond_378
    const/16 v10, 0x9

    move/from16 v0, v27

    if-le v0, v10, :cond_3aa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    .line 1526
    .restart local v13    # "processName":Ljava/lang/String;
    :goto_388
    if-eqz v22, :cond_3ac

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object v9, v10

    .line 1527
    .restart local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :goto_395
    if-nez v9, :cond_3a0

    .line 1528
    new-instance v9, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v11, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1530
    .restart local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3a0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v10

    if-nez v10, :cond_35f

    goto/16 :goto_33

    .line 1525
    .end local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v13    # "processName":Ljava/lang/String;
    :cond_3aa
    const/4 v13, 0x0

    goto :goto_388

    .line 1526
    .restart local v13    # "processName":Ljava/lang/String;
    :cond_3ac
    const/4 v9, 0x0

    goto :goto_395

    .line 1540
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "processName":Ljava/lang/String;
    .end local v19    # "NPROCS":I
    .end local v20    # "NSRVS":I
    .end local v21    # "NUID":I
    .end local v26    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_3ae
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    goto/16 :goto_33
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 972
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 973
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 974
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 975
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 977
    return-void
.end method

.method public resetSafely()V
    .registers 15

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 982
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 983
    .local v4, "now":J
    iget-object v13, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 984
    .local v8, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v0, v13, -0x1

    .local v0, "ip":I
    :goto_13
    if-ltz v0, :cond_54

    .line 985
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 986
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "iu":I
    :goto_21
    if-ltz v3, :cond_48

    .line 987
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 988
    .local v9, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 989
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 986
    :goto_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 991
    :cond_3b
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 992
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_38

    .line 995
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_48
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-gtz v13, :cond_51

    .line 996
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 984
    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 999
    .end local v3    # "iu":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_54
    iget-object v13, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 1000
    .local v6, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v0, v13, -0x1

    :goto_60
    if-ltz v0, :cond_105

    .line 1001
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 1002
    .local v11, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .restart local v3    # "iu":I
    :goto_6e
    if-ltz v3, :cond_f8

    .line 1003
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1004
    .local v7, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v1, v13, -0x1

    .local v1, "iproc":I
    :goto_7e
    if-ltz v1, :cond_b5

    .line 1005
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1006
    .restart local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v13

    if-nez v13, :cond_96

    iget-object v13, v9, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_a4

    .line 1007
    :cond_96
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1004
    :goto_a1
    add-int/lit8 v1, v1, -0x1

    goto :goto_7e

    .line 1009
    :cond_a4
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1010
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_a1

    .line 1013
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_b5
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, "isvc":I
    :goto_bd
    if-ltz v2, :cond_e1

    .line 1014
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1015
    .local v10, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_db

    .line 1016
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    .line 1013
    :goto_d8
    add-int/lit8 v2, v2, -0x1

    goto :goto_bd

    .line 1018
    :cond_db
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_d8

    .line 1021
    .end local v10    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_e1
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_f4

    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_f4

    .line 1022
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1002
    :cond_f4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_6e

    .line 1025
    .end local v1    # "iproc":I
    .end local v2    # "isvc":I
    .end local v7    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_f8
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-gtz v13, :cond_101

    .line 1026
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1000
    :cond_101
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_60

    .line 1029
    .end local v3    # "iu":I
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_105
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1031
    return-void
.end method

.method setLong(IIJ)V
    .registers 9
    .param p1, "off"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1603
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 1604
    return-void
.end method

.method validateLongOffset(I)Z
    .registers 7
    .param p1, "off"    # I

    .prologue
    const/4 v2, 0x0

    .line 1580
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v0, v3, v4

    .line 1581
    .local v0, "arr":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_12

    .line 1590
    :cond_11
    :goto_11
    return v2

    .line 1584
    :cond_12
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v1, v3, v4

    .line 1585
    .local v1, "idx":I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_11

    .line 1590
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 34
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1177
    .local v16, "now":J
    const v25, 0x50535453

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    const/16 v25, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    const/16 v25, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    new-instance v25, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1188
    .local v21, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1189
    .local v5, "NPROC":I
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_65
    if-ge v11, v5, :cond_8b

    .line 1190
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1191
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1192
    .local v8, "NUID":I
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_74
    if-ge v14, v8, :cond_88

    .line 1193
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1192
    add-int/lit8 v14, v14, 0x1

    goto :goto_74

    .line 1189
    :cond_88
    add-int/lit8 v11, v11, 0x1

    goto :goto_65

    .line 1196
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v18

    .line 1197
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1198
    .local v4, "NPKG":I
    const/4 v11, 0x0

    :goto_9a
    if-ge v11, v4, :cond_10f

    .line 1199
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1200
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1201
    .restart local v8    # "NUID":I
    const/4 v14, 0x0

    .restart local v14    # "iu":I
    :goto_a9
    if-ge v14, v8, :cond_10c

    .line 1202
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1203
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1204
    .local v6, "NPROCS":I
    const/4 v12, 0x0

    .local v12, "iproc":I
    :goto_be
    if-ge v12, v6, :cond_e4

    .line 1205
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1206
    .local v20, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_e1

    .line 1207
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1204
    :cond_e1
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    .line 1210
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1211
    .local v7, "NSRVS":I
    const/4 v13, 0x0

    .local v13, "isvc":I
    :goto_ef
    if-ge v13, v7, :cond_109

    .line 1212
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    .line 1211
    add-int/lit8 v13, v13, 0x1

    goto :goto_ef

    .line 1201
    :cond_109
    add-int/lit8 v14, v14, 0x1

    goto :goto_a9

    .line 1198
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v12    # "iproc":I
    .end local v13    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_10c
    add-int/lit8 v11, v11, 0x1

    goto :goto_9a

    .line 1217
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_10f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1218
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1219
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v10, v0, :cond_1a9

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 1228
    .local v9, "array":[J
    array-length v0, v9

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1226
    add-int/lit8 v10, v10, 0x1

    goto :goto_17c

    .line 1230
    .end local v9    # "array":[J
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [J

    .line 1231
    .local v15, "lastLongs":[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1fe

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    aget-wide v27, v25, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v29, v0

    sub-long v29, v16, v29

    add-long v27, v27, v29

    aput-wide v27, v25, v26

    .line 1235
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1237
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1239
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v11, 0x0

    :goto_220
    if-ge v11, v5, :cond_27a

    .line 1241
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1242
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1243
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1244
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v14, 0x0

    .restart local v14    # "iu":I
    :goto_245
    if-ge v14, v8, :cond_277

    .line 1246
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1248
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1245
    add-int/lit8 v14, v14, 0x1

    goto :goto_245

    .line 1240
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_277
    add-int/lit8 v11, v11, 0x1

    goto :goto_220

    .line 1252
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_27a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    const/4 v11, 0x0

    :goto_280
    if-ge v11, v4, :cond_376

    .line 1254
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1256
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1257
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    const/4 v14, 0x0

    .restart local v14    # "iu":I
    :goto_2a5
    if-ge v14, v8, :cond_372

    .line 1259
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1261
    .restart local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1262
    .restart local v6    # "NPROCS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v12, 0x0

    .restart local v12    # "iproc":I
    :goto_2cc
    if-ge v12, v6, :cond_31e

    .line 1264
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1266
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_30b

    .line 1268
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    :goto_308
    add-int/lit8 v12, v12, 0x1

    goto :goto_2cc

    .line 1271
    :cond_30b
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_308

    .line 1275
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_31e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1276
    .restart local v7    # "NSRVS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    const/4 v13, 0x0

    .restart local v13    # "isvc":I
    :goto_32e
    if-ge v13, v7, :cond_36e

    .line 1278
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1279
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1280
    .local v22, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1281
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1277
    add-int/lit8 v13, v13, 0x1

    goto :goto_32e

    .line 1258
    .end local v22    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_36e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2a5

    .line 1253
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v12    # "iproc":I
    .end local v13    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_372
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_280

    .line 1286
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_376
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1287
    return-void
.end method
