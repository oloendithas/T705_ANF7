.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "Xt9Wrapper.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# static fields
.field public static final ASDB_DB_TYPE:B = 0x2t

.field private static final ASDB_FILE_NAME:Ljava/lang/String; = "xT9ASdbData.dat"

.field private static final ASDB_SIZE:I = 0x2800

.field private static final ASDB_WORD_SIZE:I = 0x40

.field public static final CDB_DB_TYPE:B = 0x1t

.field private static final CDB_FILE_NAME:Ljava/lang/String; = "xT9CdbData.dat"

.field private static final CDB_SIZE:I = 0x800

.field private static final DB_DIR:Ljava/lang/String; = "xT9DB"

.field public static final DLM_DB_TYPE:B = 0x4t

.field private static final DLM_FILE_NAME:Ljava/lang/String; = "xT9DLMData.dat"

.field private static DLM_SIZE:I = 0x0

.field private static final FORWARD:B = 0x0t

.field private static INPUT_MODE_AMBIG:I = 0x0

.field private static INPUT_MODE_MULTITAP:I = 0x0

.field public static final KUDB_DB_TYPE:B = 0x3t

.field private static final KUDB_FILE_NAME:Ljava/lang/String; = "xT9KUdbData.dat"

.field private static final KUDB_SIZE:I = 0x5000

.field public static final UDB_DB_TYPE:B = 0x0t

.field private static final UDB_FILE_NAME:Ljava/lang/String; = "xT9UdbData.dat"

.field private static final UDB_SIZE:I = 0x5000

.field private static final UDB_WORD_SIZE:I = 0x40

.field private static mASDBBuffer:[B

.field private static mCDBBuffer:[B

.field private static mDLMBuffer:[B

.field private static mKUDBBuffer:[B

.field private static mUDBBuffer:[B


# instance fields
.field private final EMPTY_MULTITAP_SEQ:[S

.field private final ET9CPSYLLABLEDELIMITER:C

.field private final EXTEND_KEYMAP_AR:[S

.field private final EXTEND_KEYMAP_AZ:[S

.field private final EXTEND_KEYMAP_BG:[S

.field private final EXTEND_KEYMAP_DA:[S

.field private final EXTEND_KEYMAP_ET:[S

.field private final EXTEND_KEYMAP_FA:[S

.field private final EXTEND_KEYMAP_HE:[S

.field private final EXTEND_KEYMAP_HY:[S

.field private final EXTEND_KEYMAP_IS:[S

.field private final EXTEND_KEYMAP_KO:[S

.field private final EXTEND_KEYMAP_LT:[S

.field private final EXTEND_KEYMAP_RU:[S

.field private final EXTEND_KEYMAP_SQ:[S

.field private final EXTEND_KEYMAP_UR:[S

.field private final KEYMAP_PHONEPAD:[S

.field private final KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

.field private final KEYMAP_PHONEPAD_TH:[S

.field private final KEYMAP_QWERTY:[S

.field private final KEYMAP_QWERTY_EL:[S

.field private final KEYMAP_QWERTY_TH:[S

.field private final KEYMAP_QWERTY_TR:[S

.field private final KEYMAP_QWERTY_TR_F:[S

.field private final KEYMAP_QWERTY_VI:[S

.field private final STROKE_CHARSET:[C

.field private final VIETNAMESE_CONSONANT:Ljava/lang/String;

.field private final XT9_9:Ljava/lang/String;

.field private final XT9_9_4:Ljava/lang/String;

.field private final mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field private mBilingualInputLanguage:I

.field private mBilingualInputLanguageId:S

.field private final mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

.field private mCacheRecapture:Ljava/lang/String;

.field private final mCount:[S

.field private mGap:I

.field private final mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

.field private final mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

.field private mImeInputLanguage:I

.field private mInitialized:Z

.field private mInputLanguageId:S

.field private mIsActiveWordStatusChangable:Z

.field private mIsRecapture:Z

.field private mShiftState:B

.field private final mShortcutBuf:[S

.field private final mShortcutLengthBuf:[S

.field private final mSubstitutionBuf:[S

.field private final mSubstitutionLengthBuf:[S

.field private final mWordBuf:[S

.field private final mWordLengthBuf:[S

.field private mXt9Version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x5000

    const/4 v1, 0x0

    .line 73
    sput v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_MULTITAP:I

    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_AMBIG:I

    .line 369
    sput v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    .line 377
    new-array v0, v2, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    .line 379
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    .line 381
    const/16 v0, 0x2800

    new-array v0, v0, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    .line 383
    new-array v0, v2, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    .line 385
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 466
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD:[S

    .line 85
    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_TH:[S

    .line 92
    new-array v0, v5, [S

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    .line 99
    new-array v0, v2, [S

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    .line 110
    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HY:[S

    .line 124
    new-array v0, v2, [S

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_SQ:[S

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_BG:[S

    .line 142
    new-array v0, v2, [S

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_DA:[S

    .line 153
    new-array v0, v2, [S

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_IS:[S

    .line 165
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_RU:[S

    .line 171
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AR:[S

    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_FA:[S

    .line 185
    const/16 v0, 0xf

    new-array v0, v0, [S

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_UR:[S

    .line 194
    new-array v0, v3, [S

    aput-short v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HE:[S

    .line 200
    const/16 v0, 0x33

    new-array v0, v0, [S

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_KO:[S

    .line 213
    new-array v0, v2, [S

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_ET:[S

    .line 224
    const/16 v0, 0x1b

    new-array v0, v0, [S

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_VI:[S

    .line 235
    const/16 v0, 0x1b

    new-array v0, v0, [S

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TH:[S

    .line 246
    new-array v0, v2, [S

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_LT:[S

    .line 258
    new-array v0, v2, [S

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AZ:[S

    .line 270
    new-array v0, v2, [S

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_EL:[S

    .line 281
    new-array v0, v2, [S

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR:[S

    .line 292
    new-array v0, v2, [S

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR_F:[S

    .line 303
    new-array v0, v5, [C

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->STROKE_CHARSET:[C

    .line 310
    const/16 v0, 0x27

    iput-char v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->ET9CPSYLLABLEDELIMITER:C

    .line 313
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    .line 315
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    .line 317
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    .line 321
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    .line 324
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    .line 326
    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    .line 328
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    .line 330
    iput-byte v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    .line 332
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    .line 336
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    .line 415
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    .line 418
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    .line 420
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    .line 423
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutBuf:[S

    .line 425
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutLengthBuf:[S

    .line 427
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionBuf:[S

    .line 429
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionLengthBuf:[S

    .line 432
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EMPTY_MULTITAP_SEQ:[S

    .line 451
    const-string v0, "XT9 V09"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->XT9_9:Ljava/lang/String;

    .line 452
    const-string v0, "XT9 V09.06"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->XT9_9_4:Ljava/lang/String;

    .line 453
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    .line 456
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguage:I

    .line 458
    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguageId:S

    .line 460
    const-string v0, "bcd\u0111fghjklmnpqrstvwxz0123456789"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->VIETNAMESE_CONSONANT:Ljava/lang/String;

    .line 462
    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mGap:I

    .line 469
    return-void

    .line 78
    :array_0
    .array-data 2
        0x9s
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    .line 85
    :array_1
    .array-data 2
        0xas
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
    .end array-data

    .line 92
    nop

    :array_2
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
    .end array-data

    .line 99
    :array_3
    .array-data 2
        0xas
        0x17s
        0x15s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x19s
        0x18s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x16s
        0x1s
        0x14s
        0x5s
        0x13s
    .end array-data

    .line 110
    :array_4
    .array-data 2
        0x25s
        0x1as
        -0x1s
        -0x1s
        0x21s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x1es
        -0x1s
        0x1fs
        0x1ds
        0x1bs
        -0x1s
        0x22s
        -0x1s
        0x27s
        0x1cs
        0x26s
        0x20s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x24s
        -0x1s
        -0x1s
        0x23s
    .end array-data

    .line 124
    :array_5
    .array-data 2
        0xbs
        0x19s
        0x17s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1bs
        0x1as
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x18s
        0x1s
        0x16s
        0x5s
        0x15s
    .end array-data

    .line 135
    :array_6
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
    .end array-data

    .line 142
    nop

    :array_7
    .array-data 2
        0xbs
        0x1as
        0x18s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1cs
        0x1bs
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x19s
        0x1s
        0x17s
        0x5s
        0x16s
    .end array-data

    .line 153
    :array_8
    .array-data 2
        0xbs
        0x19s
        0x17s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1bs
        0x1as
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x18s
        0x1s
        0x16s
        0x5s
        0x15s
    .end array-data

    .line 165
    :array_9
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
    .end array-data

    .line 171
    nop

    :array_a
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
    .end array-data

    .line 178
    nop

    :array_b
    .array-data 2
        0x1as
        0x0s
        0x4s
        0xfs
        0x14s
        0x15s
        0x17s
        0x1as
    .end array-data

    .line 185
    :array_c
    .array-data 2
        0x1as
        0x3s
        0x4s
        0x6s
        0xas
        0xbs
        0xcs
        0xes
        0xfs
        0x10s
        0x14s
        0x15s
        0x16s
        0x17s
        0x19s
    .end array-data

    .line 200
    nop

    :array_d
    .array-data 2
        0x3s
        -0x1s
        -0x1s
        0xbs
        -0x1s
        -0x1s
        0x2s
        -0x1s
        0xds
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0xas
        0x0s
        -0x1s
        -0x1s
        0x4s
        -0x1s
        0xcs
        0x1s
        -0x1s
        0x15s
        0x13s
        0x14s
        0x16s
        0xes
        0x11s
        0x8s
        0x7s
        -0x1s
        0x10s
        0x9s
        0x6s
        -0x1s
        0xfs
        -0x1s
        -0x1s
        -0x1s
        0x5s
        0x18s
        -0x1s
        -0x1s
        -0x1s
        0x17s
        0x19s
        -0x1s
        0x12s
    .end array-data

    .line 213
    nop

    :array_e
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x7s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    .line 224
    :array_f
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
        0x13s
    .end array-data

    .line 235
    nop

    :array_10
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
        0x13s
    .end array-data

    .line 246
    nop

    :array_11
    .array-data 2
        0x13s
        0x20s
        0x1es
        0x15s
        0xbs
        0x16s
        0x17s
        0x18s
        0x10s
        0x19s
        0x1as
        0x1bs
        0x22s
        0x21s
        0x11s
        0x12s
        0x9s
        0xcs
        0x14s
        0xds
        0xfs
        0x1fs
        0xas
        0x1ds
        0xes
        0x1cs
    .end array-data

    .line 258
    :array_12
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x7s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    .line 270
    :array_13
    .array-data 2
        0x9s
        0x16s
        0x14s
        0xbs
        0x1s
        0xcs
        0xds
        0xes
        0x6s
        0xfs
        0x10s
        0x11s
        0x18s
        0x17s
        0x7s
        0x8s
        -0x1s
        0x2s
        0xas
        0x3s
        0x5s
        0x15s
        0x0s
        0x13s
        0x4s
        0x12s
    .end array-data

    .line 281
    :array_14
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x16s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    .line 292
    :array_15
    .array-data 2
        0xfs
        0x1fs
        0x1bs
        0x5s
        0xes
        0x0s
        0x1s
        0x8s
        0xds
        0x18s
        0x12s
        0x14s
        0x13s
        0x7s
        0x4s
        0x9s
        0xas
        0x6s
        0x1es
        0x11s
        0xcs
        0x1as
        0xbs
        0x17s
        0x15s
        0x1ds
    .end array-data

    .line 303
    :array_16
    .array-data 2
        0x4e00s
        0x4e28s
        0x4e3fs
        0x4e36s
        0x4e5bs
        0x3fs
    .end array-data
.end method

.method private changeKDBNum(I)V
    .locals 17
    .param p1, "inputType"    # I

    .prologue
    .line 2614
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v14, v15, :cond_16

    .line 2616
    const/4 v13, 0x0

    .line 2621
    .local v13, "wStatus":S
    const/4 v14, 0x1

    new-array v5, v14, [S

    .line 2623
    .local v5, "pwFirstKdbNum":[S
    const/4 v14, 0x1

    new-array v8, v14, [S

    .line 2625
    .local v8, "pwSecondKdbNum":[S
    invoke-static {v5, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v13

    .line 2627
    if-eqz v13, :cond_0

    .line 2629
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_0
    const/4 v14, 0x1

    new-array v7, v14, [S

    .line 2638
    .local v7, "pwFirstPageNum":[S
    const/4 v14, 0x1

    new-array v10, v14, [S

    .line 2640
    .local v10, "pwSecondPageNum":[S
    invoke-static {v7, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v13

    .line 2642
    if-eqz v13, :cond_1

    .line 2644
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_1
    const/4 v14, 0x1

    new-array v6, v14, [S

    .line 2653
    .local v6, "pwFirstLdbNum":[S
    const/4 v14, 0x1

    new-array v9, v14, [S

    .line 2655
    .local v9, "pwSecondLdbNum":[S
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v6, v14

    .line 2657
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v9, v14

    .line 2659
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_b

    .line 2661
    const/4 v14, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v15

    aput-short v15, v6, v14

    .line 2676
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_3

    .line 2678
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v6, v15

    const v16, 0xff00

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, v6, v14

    .line 2683
    :cond_3
    const/4 v2, 0x0

    .line 2685
    .local v2, "firstPageNum":S
    const/4 v1, 0x0

    .line 2688
    .local v1, "firstKdbNum":S
    if-eqz p1, :cond_4

    const/4 v14, 0x7

    move/from16 v0, p1

    if-eq v0, v14, :cond_4

    const/16 v14, 0x8

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 2692
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 2694
    .local v11, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2699
    .local v4, "locale":Ljava/lang/String;
    const-string v14, "nl"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "BE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2701
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x13

    if-ne v14, v15, :cond_5

    .line 2703
    const/4 v2, 0x1

    .line 2748
    .end local v4    # "locale":Ljava/lang/String;
    .end local v11    # "sLocal":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2750
    :cond_6
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_10

    .line 2752
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xa00

    int-to-short v1, v14

    .line 2809
    :goto_2
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x12

    if-eq v14, v15, :cond_7

    const/4 v14, 0x0

    aget-short v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x12

    if-ne v14, v15, :cond_7

    .line 2815
    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v10, v15

    invoke-static {v1, v2, v14, v15}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v13

    .line 2830
    if-eqz v13, :cond_8

    .line 2832
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v10, v15

    invoke-static {v1, v2, v14, v15}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v13

    .line 2839
    :cond_8
    if-eqz v13, :cond_9

    .line 2841
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_9
    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v2, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    move-result v13

    .line 2848
    if-eqz v13, :cond_a

    .line 2850
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    .end local v1    # "firstKdbNum":S
    .end local v2    # "firstPageNum":S
    .end local v5    # "pwFirstKdbNum":[S
    .end local v6    # "pwFirstLdbNum":[S
    .end local v7    # "pwFirstPageNum":[S
    .end local v8    # "pwSecondKdbNum":[S
    .end local v9    # "pwSecondLdbNum":[S
    .end local v10    # "pwSecondPageNum":[S
    .end local v13    # "wStatus":S
    :cond_a
    :goto_3
    return-void

    .line 2665
    .restart local v5    # "pwFirstKdbNum":[S
    .restart local v6    # "pwFirstLdbNum":[S
    .restart local v7    # "pwFirstPageNum":[S
    .restart local v8    # "pwSecondKdbNum":[S
    .restart local v9    # "pwSecondLdbNum":[S
    .restart local v10    # "pwSecondPageNum":[S
    .restart local v13    # "wStatus":S
    :cond_b
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v13

    .line 2667
    if-eqz v13, :cond_2

    .line 2669
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9AWLdbGetLanguage : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2709
    .restart local v1    # "firstKdbNum":S
    .restart local v2    # "firstPageNum":S
    .restart local v4    # "locale":Ljava/lang/String;
    .restart local v11    # "sLocal":Ljava/lang/String;
    :cond_c
    const-string v14, "CA"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2711
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_5

    .line 2713
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2721
    :cond_d
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 2723
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x10

    if-ne v14, v15, :cond_e

    .line 2725
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2727
    :cond_e
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_5

    .line 2729
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 2733
    :cond_f
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x60

    if-ne v14, v15, :cond_5

    .line 2735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 2737
    .local v3, "isUpperCase":Z
    if-eqz v3, :cond_5

    .line 2739
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2756
    .end local v3    # "isUpperCase":Z
    .end local v4    # "locale":Ljava/lang/String;
    .end local v11    # "sLocal":Ljava/lang/String;
    :cond_10
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x600

    int-to-short v1, v14

    goto/16 :goto_2

    .line 2762
    :cond_11
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_12

    .line 2764
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xd00

    int-to-short v1, v14

    goto/16 :goto_2

    .line 2766
    :cond_12
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_13

    .line 2768
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    .line 2770
    .local v12, "turkishKeyboardType":I
    packed-switch v12, :pswitch_data_0

    .line 2786
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_2

    .line 2774
    :pswitch_0
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xf00

    int-to-short v1, v14

    .line 2776
    goto/16 :goto_2

    .line 2780
    :pswitch_1
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x1000

    int-to-short v1, v14

    .line 2782
    goto/16 :goto_2

    .line 2792
    .end local v12    # "turkishKeyboardType":I
    :cond_13
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v15, 0x1

    if-eq v14, v15, :cond_14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x19

    if-eq v14, v15, :cond_14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x61

    if-ne v14, v15, :cond_15

    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v14

    const/16 v15, 0x1e0

    if-ne v14, v15, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v14

    const/16 v15, 0x140

    if-ne v14, v15, :cond_15

    .line 2798
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x500

    int-to-short v1, v14

    goto/16 :goto_2

    .line 2802
    :cond_15
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_2

    .line 2865
    .end local v1    # "firstKdbNum":S
    .end local v2    # "firstPageNum":S
    .end local v5    # "pwFirstKdbNum":[S
    .end local v6    # "pwFirstLdbNum":[S
    .end local v7    # "pwFirstPageNum":[S
    .end local v8    # "pwSecondKdbNum":[S
    .end local v9    # "pwSecondLdbNum":[S
    .end local v10    # "pwSecondPageNum":[S
    .end local v13    # "wStatus":S
    :cond_16
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v14, :cond_a

    .line 2867
    const/4 v13, 0x0

    .line 2872
    .restart local v13    # "wStatus":S
    const/4 v14, 0x1

    new-array v5, v14, [S

    .line 2874
    .restart local v5    # "pwFirstKdbNum":[S
    const/4 v14, 0x1

    new-array v8, v14, [S

    .line 2876
    .restart local v8    # "pwSecondKdbNum":[S
    invoke-static {v5, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v13

    .line 2878
    if-eqz v13, :cond_17

    .line 2880
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_17
    const/4 v14, 0x1

    new-array v7, v14, [S

    .line 2889
    .restart local v7    # "pwFirstPageNum":[S
    const/4 v14, 0x1

    new-array v10, v14, [S

    .line 2891
    .restart local v10    # "pwSecondPageNum":[S
    invoke-static {v7, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v13

    .line 2893
    if-eqz v13, :cond_18

    .line 2895
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_18
    const/4 v14, 0x1

    new-array v6, v14, [S

    .line 2904
    .restart local v6    # "pwFirstLdbNum":[S
    const/4 v14, 0x1

    new-array v9, v14, [S

    .line 2906
    .restart local v9    # "pwSecondLdbNum":[S
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v6, v14

    .line 2908
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v9, v14

    .line 2910
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_20

    .line 2912
    const/4 v14, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v15

    aput-short v15, v6, v14

    .line 2927
    :cond_19
    :goto_4
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_1a

    .line 2929
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v6, v15

    const v16, 0xff00

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, v6, v14

    .line 2934
    :cond_1a
    const/4 v2, 0x0

    .line 2936
    .restart local v2    # "firstPageNum":S
    const/4 v1, 0x0

    .line 2939
    .restart local v1    # "firstKdbNum":S
    if-eqz p1, :cond_1b

    const/4 v14, 0x7

    move/from16 v0, p1

    if-eq v0, v14, :cond_1b

    const/16 v14, 0x8

    move/from16 v0, p1

    if-ne v0, v14, :cond_1c

    .line 2943
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 2945
    .restart local v11    # "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2950
    .restart local v4    # "locale":Ljava/lang/String;
    const-string v14, "nl"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    const-string v14, "BE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 2952
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x13

    if-ne v14, v15, :cond_1c

    .line 2954
    const/4 v2, 0x1

    .line 2999
    .end local v4    # "locale":Ljava/lang/String;
    .end local v11    # "sLocal":Ljava/lang/String;
    :cond_1c
    :goto_5
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 3001
    :cond_1d
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_25

    .line 3003
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xa00

    int-to-short v1, v14

    .line 3061
    :goto_6
    const/4 v14, 0x0

    aget-short v14, v8, v14

    const/4 v15, 0x0

    aget-short v15, v10, v15

    invoke-static {v1, v2, v14, v15}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v13

    .line 3065
    if-eqz v13, :cond_1e

    .line 3067
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_1e
    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v2, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    move-result v13

    .line 3074
    if-eqz v13, :cond_1f

    .line 3076
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_1f
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetLocale(S)S

    move-result v13

    .line 3083
    if-eqz v13, :cond_a

    .line 3085
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetLocale : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2916
    .end local v1    # "firstKdbNum":S
    .end local v2    # "firstPageNum":S
    :cond_20
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v13

    .line 2918
    if-eqz v13, :cond_19

    .line 2920
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9AWLdbGetLanguage : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2960
    .restart local v1    # "firstKdbNum":S
    .restart local v2    # "firstPageNum":S
    .restart local v4    # "locale":Ljava/lang/String;
    .restart local v11    # "sLocal":Ljava/lang/String;
    :cond_21
    const-string v14, "CA"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 2962
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_1c

    .line 2964
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 2972
    :cond_22
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 2974
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x10

    if-ne v14, v15, :cond_23

    .line 2976
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 2978
    :cond_23
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_1c

    .line 2980
    const/4 v2, 0x2

    goto/16 :goto_5

    .line 2984
    :cond_24
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x60

    if-ne v14, v15, :cond_1c

    .line 2986
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 2988
    .restart local v3    # "isUpperCase":Z
    if-eqz v3, :cond_1c

    .line 2990
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 3007
    .end local v3    # "isUpperCase":Z
    .end local v4    # "locale":Ljava/lang/String;
    .end local v11    # "sLocal":Ljava/lang/String;
    :cond_25
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x600

    int-to-short v1, v14

    goto/16 :goto_6

    .line 3013
    :cond_26
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_27

    .line 3015
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xd00

    int-to-short v1, v14

    goto/16 :goto_6

    .line 3017
    :cond_27
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_28

    .line 3019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    .line 3021
    .restart local v12    # "turkishKeyboardType":I
    packed-switch v12, :pswitch_data_1

    .line 3037
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_6

    .line 3025
    :pswitch_2
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xf00

    int-to-short v1, v14

    .line 3027
    goto/16 :goto_6

    .line 3031
    :pswitch_3
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x1000

    int-to-short v1, v14

    .line 3033
    goto/16 :goto_6

    .line 3043
    .end local v12    # "turkishKeyboardType":I
    :cond_28
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v15, 0x1

    if-eq v14, v15, :cond_29

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x19

    if-eq v14, v15, :cond_29

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x61

    if-ne v14, v15, :cond_2a

    :cond_29
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v14

    const/16 v15, 0x1e0

    if-ne v14, v15, :cond_2a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v14

    const/16 v15, 0x140

    if-ne v14, v15, :cond_2a

    .line 3050
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x500

    int-to-short v1, v14

    goto/16 :goto_6

    .line 3054
    :cond_2a
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_6

    .line 2770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3021
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionKorRecapture([CSZ)I
    .locals 1
    .param p1, "psWord"    # [C
    .param p2, "wWordLen"    # S
    .param p3, "isKorMod"    # Z

    .prologue
    .line 7928
    const/4 v0, 0x0

    .line 7930
    .local v0, "wStatus":I
    if-eqz p3, :cond_0

    .line 7932
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS)S

    move-result v0

    .line 7940
    :goto_0
    return v0

    .line 7936
    :cond_0
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method private explicitSymbol(I)S
    .locals 6
    .param p1, "wKeyIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 3352
    const/4 v3, 0x1

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v3, v4, :cond_3

    .line 3354
    const/4 v1, 0x0

    .line 3357
    .local v1, "wStatus":S
    const/4 v0, 0x0

    .line 3359
    .local v0, "shiftState":B
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3361
    const/4 v0, 0x1

    .line 3369
    :cond_0
    :goto_0
    int-to-short v3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v1

    .line 3371
    if-eqz v1, :cond_1

    .line 3373
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AddExplicitSymb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    .end local v0    # "shiftState":B
    .end local v1    # "wStatus":S
    :cond_1
    :goto_1
    return v1

    .line 3363
    .restart local v0    # "shiftState":B
    .restart local v1    # "wStatus":S
    :cond_2
    iget-byte v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    if-eqz v3, :cond_0

    .line 3365
    const/4 v0, 0x1

    goto :goto_0

    .line 3379
    .end local v0    # "shiftState":B
    .end local v1    # "wStatus":S
    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_6

    .line 3381
    const/4 v1, 0x0

    .line 3384
    .restart local v1    # "wStatus":S
    const/4 v0, 0x0

    .line 3386
    .restart local v0    # "shiftState":B
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3388
    const/4 v0, 0x1

    .line 3396
    :cond_4
    :goto_2
    int-to-short v3, p1

    invoke-static {v3, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SBB)S

    move-result v1

    .line 3398
    if-eqz v1, :cond_1

    .line 3400
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AddExplicitSymb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3390
    :cond_5
    iget-byte v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    if-eqz v3, :cond_4

    .line 3392
    const/4 v0, 0x1

    goto :goto_2

    .end local v0    # "shiftState":B
    .end local v1    # "wStatus":S
    :cond_6
    move v1, v2

    .line 3408
    goto :goto_1
.end method

.method private getAWInputWords(I)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "wordIndex"    # I

    .prologue
    const/16 v6, 0x40

    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 4639
    iget v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4641
    .local v7, "totalWordsCount":I
    if-lez v7, :cond_8

    .line 4643
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    .line 4645
    if-ge p1, v7, :cond_0

    move v2, p1

    .line 4647
    .local v2, "index":I
    :goto_0
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    int-to-byte v12, v2

    invoke-static {v11, v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v9

    .line 4650
    .local v9, "wStatus":S
    if-eqz v9, :cond_1

    .line 4652
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ET9AWSelLstGetWord : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    const/4 v10, 0x0

    .line 4744
    .end local v2    # "index":I
    .end local v9    # "wStatus":S
    :goto_1
    return-object v10

    :cond_0
    move v2, v10

    .line 4645
    goto :goto_0

    .line 4659
    .restart local v2    # "index":I
    .restart local v9    # "wStatus":S
    :cond_1
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    if-ge v11, v6, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v6, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    .line 4663
    .local v6, "size":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4665
    .local v5, "sb":Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    .line 4668
    .local v4, "isPredictionOn":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-eqz v11, :cond_3

    if-eqz v4, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v11, v12, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4674
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v1, v10, :cond_7

    .line 4676
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4674
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4682
    .end local v1    # "i":I
    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 4684
    .local v3, "inputMethod":I
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v11, v12, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    .line 4688
    .local v8, "turkishKeyboardType":I
    const/4 v0, 0x0

    .line 4690
    .local v0, "bUseTurkishIConvert":Z
    iget-short v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v11, 0x1f

    if-ne v10, v11, :cond_4

    if-eqz v8, :cond_4

    if-eq v3, v13, :cond_4

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v10

    if-nez v10, :cond_4

    .line 4698
    const/4 v0, 0x1

    .line 4703
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_7

    .line 4705
    iget-byte v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    if-ne v10, v13, :cond_6

    if-nez v4, :cond_6

    .line 4707
    if-eqz v0, :cond_5

    .line 4709
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-direct {p0, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->toUpperCaseOfTurkish(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4703
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4713
    :cond_5
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 4731
    :cond_6
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 4740
    .end local v0    # "bUseTurkishIConvert":Z
    .end local v3    # "inputMethod":I
    .end local v8    # "turkishKeyboardType":I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 4744
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v4    # "isPredictionOn":Z
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "size":I
    .end local v9    # "wStatus":S
    :cond_8
    const-string v10, ""

    goto/16 :goto_1
.end method

.method private getCPInputWords(I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "wordIndex"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x20

    .line 5161
    iget v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 5163
    .local v5, "totalWordsCount":I
    if-lez v5, :cond_4

    .line 5165
    if-ge p1, v5, :cond_0

    move v2, p1

    .line 5167
    .local v2, "index":I
    :goto_0
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 5169
    .local v0, "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    int-to-short v8, v2

    invoke-static {v8, v0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v6

    .line 5171
    .local v6, "wStatus":S
    if-eqz v6, :cond_1

    .line 5199
    .end local v0    # "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .end local v2    # "index":I
    .end local v6    # "wStatus":S
    :goto_1
    return-object v7

    .line 5165
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5178
    .restart local v0    # "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .restart local v2    # "index":I
    .restart local v6    # "wStatus":S
    :cond_1
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v7, v4, :cond_2

    iget-byte v4, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    .line 5182
    .local v4, "size":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5185
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-eqz v7, :cond_3

    .line 5187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v7, :cond_3

    .line 5189
    iget-object v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5187
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5195
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 5199
    .end local v0    # "cpPhrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .end local v2    # "index":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "size":I
    .end local v6    # "wStatus":S
    :cond_4
    const-string v7, ""

    goto :goto_1
.end method

.method private getInputWords()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4603
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getInputWords(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "wordIndex"    # I

    .prologue
    .line 4610
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 4613
    .local v0, "isPredictionOn":Z
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 4614
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4616
    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getKInputWordsPrediction(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4630
    :goto_0
    return-object v1

    .line 4620
    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getKInputWordsMultiTap(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4624
    :cond_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_3

    .line 4626
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getCPInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4630
    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getAWInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private getKInputWordsMultiTap(I)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "wordIndex"    # I

    .prologue
    const/16 v11, 0x40

    const/16 v7, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4982
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v10, v6, :cond_4

    .line 4984
    const/4 v5, 0x1

    .line 4986
    .local v5, "wStatus":S
    new-array v2, v7, [S

    .line 4988
    .local v2, "multiTapSequence":[S
    new-array v4, v10, [S

    .line 4990
    .local v4, "totalSymbols":[S
    new-array v0, v10, [B

    .line 4993
    .local v0, "currentSymbol":[B
    invoke-static {v2, v7, v4, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 5000
    aget-short v6, v4, v9

    if-ne v6, v10, :cond_0

    .line 5002
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->invokeTimeOut()V

    .line 5004
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EMPTY_MULTITAP_SEQ:[S

    .line 5006
    aput-short v9, v4, v9

    .line 5011
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 5019
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    aget-short v7, v4, v9

    invoke-static {v6, v2, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v5

    .line 5023
    if-eqz v5, :cond_1

    .line 5025
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KBuildHangul : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5046
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v6, v10, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v6, v6

    if-lez v6, :cond_2

    .line 5050
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v9, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v5

    .line 5055
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5058
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v1, v6, :cond_3

    .line 5060
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v6, v6, v1

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5058
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5065
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5154
    .end local v0    # "currentSymbol":[B
    .end local v1    # "i":I
    .end local v2    # "multiTapSequence":[S
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "totalSymbols":[S
    .end local v5    # "wStatus":S
    :goto_1
    return-object v6

    .line 5067
    :cond_4
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v6, :cond_9

    .line 5069
    const/4 v5, 0x1

    .line 5071
    .restart local v5    # "wStatus":S
    new-array v2, v7, [S

    .line 5073
    .restart local v2    # "multiTapSequence":[S
    new-array v4, v10, [S

    .line 5075
    .restart local v4    # "totalSymbols":[S
    new-array v0, v10, [B

    .line 5078
    .restart local v0    # "currentSymbol":[B
    invoke-static {v2, v7, v4, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 5085
    aget-short v6, v4, v9

    if-ne v6, v10, :cond_5

    .line 5087
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->invokeTimeOut()V

    .line 5089
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EMPTY_MULTITAP_SEQ:[S

    .line 5091
    aput-short v9, v4, v9

    .line 5096
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 5100
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    aget-short v7, v4, v9

    invoke-static {v6, v2, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_BuildHangulSingleConsonants(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v5

    .line 5108
    if-eqz v5, :cond_6

    .line 5110
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KBuildHangul : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v6, v10, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v6, v6

    if-lez v6, :cond_7

    .line 5135
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v9, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v5

    .line 5140
    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5143
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v1, v6, :cond_8

    .line 5145
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v6, v6, v1

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5143
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5150
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 5154
    .end local v0    # "currentSymbol":[B
    .end local v1    # "i":I
    .end local v2    # "multiTapSequence":[S
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "totalSymbols":[S
    .end local v5    # "wStatus":S
    :cond_9
    const-string v6, ""

    goto :goto_1
.end method

.method private getKInputWordsPrediction(I)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "wordIndex"    # I

    .prologue
    .line 4751
    const/4 v11, 0x1

    iget v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v11, v12, :cond_8

    .line 4753
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4755
    .local v9, "totalWordsCount":I
    if-lez v9, :cond_7

    .line 4757
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    .line 4759
    const/4 v10, 0x1

    .line 4761
    .local v10, "wStatus":S
    const/4 v11, 0x1

    new-array v0, v11, [S

    .line 4764
    .local v0, "HangulLen":[S
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 4772
    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S)S

    move-result v10

    .line 4777
    const/16 v11, 0x22

    if-ne v10, v11, :cond_1

    .line 4779
    const/4 v11, 0x1

    new-array v2, v11, [B

    .line 4781
    .local v2, "bTotalWords":[B
    const/4 v11, 0x1

    new-array v1, v11, [B

    .line 4783
    .local v1, "bDefaultListIndex":[B
    const/4 v11, 0x1

    new-array v6, v11, [S

    .line 4786
    .local v6, "pwGestureValue":[S
    invoke-static {v2, v1, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v10

    .line 4788
    if-eqz v10, :cond_0

    .line 4790
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KBuildSelectionList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    :cond_0
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4796
    const/4 v11, 0x0

    aget-byte v11, v1, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 4804
    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S)S

    move-result v10

    .line 4808
    if-eqz v10, :cond_1

    .line 4810
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    .end local v1    # "bDefaultListIndex":[B
    .end local v2    # "bTotalWords":[B
    .end local v6    # "pwGestureValue":[S
    :cond_1
    if-eqz v10, :cond_2

    .line 4818
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    :cond_2
    const/4 v11, 0x0

    aget-short v11, v0, v11

    const/16 v12, 0x40

    if-ge v11, v12, :cond_5

    const/4 v11, 0x0

    aget-short v8, v0, v11

    .line 4827
    .local v8, "size":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4830
    .local v7, "sb":Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    .line 4832
    .local v5, "isPredictionOn":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    .line 4834
    .local v4, "inputMethod":I
    if-eqz v4, :cond_3

    const/4 v11, 0x7

    if-eq v4, v11, :cond_3

    const/16 v11, 0x8

    if-ne v4, v11, :cond_4

    :cond_3
    if-nez v5, :cond_4

    const/4 v11, 0x1

    if-le v8, v11, :cond_4

    .line 4840
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 4842
    if-eqz v10, :cond_4

    .line 4844
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9ClearAllSymbs : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4850
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_6

    .line 4852
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v11, v11, v3

    int-to-char v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4850
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4823
    .end local v3    # "i":I
    .end local v4    # "inputMethod":I
    .end local v5    # "isPredictionOn":Z
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "size":I
    :cond_5
    const/16 v8, 0x40

    goto :goto_0

    .line 4857
    .restart local v3    # "i":I
    .restart local v4    # "inputMethod":I
    .restart local v5    # "isPredictionOn":Z
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "size":I
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4975
    .end local v0    # "HangulLen":[S
    .end local v3    # "i":I
    .end local v4    # "inputMethod":I
    .end local v5    # "isPredictionOn":Z
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "size":I
    .end local v9    # "totalWordsCount":I
    .end local v10    # "wStatus":S
    :goto_2
    return-object v11

    .line 4861
    .restart local v9    # "totalWordsCount":I
    :cond_7
    const-string v11, ""

    goto :goto_2

    .line 4863
    .end local v9    # "totalWordsCount":I
    :cond_8
    iget v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v11, :cond_11

    .line 4865
    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4867
    .restart local v9    # "totalWordsCount":I
    if-lez v9, :cond_10

    .line 4869
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    .line 4871
    const/4 v10, 0x1

    .line 4873
    .restart local v10    # "wStatus":S
    const/4 v11, 0x1

    new-array v0, v11, [S

    .line 4876
    .restart local v0    # "HangulLen":[S
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 4880
    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S

    move-result v10

    .line 4889
    const/16 v11, 0x22

    if-ne v10, v11, :cond_a

    .line 4891
    const/4 v11, 0x1

    new-array v2, v11, [B

    .line 4893
    .restart local v2    # "bTotalWords":[B
    const/4 v11, 0x1

    new-array v1, v11, [B

    .line 4896
    .restart local v1    # "bDefaultListIndex":[B
    invoke-static {v2, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B)S

    move-result v10

    .line 4898
    if-eqz v10, :cond_9

    .line 4900
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KBuildSelectionList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4904
    :cond_9
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4906
    const/4 v11, 0x0

    aget-byte v11, v1, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 4910
    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S

    move-result v10

    .line 4918
    if-eqz v10, :cond_a

    .line 4920
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    .end local v1    # "bDefaultListIndex":[B
    .end local v2    # "bTotalWords":[B
    :cond_a
    if-eqz v10, :cond_b

    .line 4928
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4933
    :cond_b
    const/4 v11, 0x0

    aget-short v11, v0, v11

    const/16 v12, 0x40

    if-ge v11, v12, :cond_e

    const/4 v11, 0x0

    aget-short v8, v0, v11

    .line 4937
    .restart local v8    # "size":I
    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4940
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    .line 4942
    .restart local v5    # "isPredictionOn":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    .line 4944
    .restart local v4    # "inputMethod":I
    if-eqz v4, :cond_c

    const/4 v11, 0x7

    if-eq v4, v11, :cond_c

    const/16 v11, 0x8

    if-ne v4, v11, :cond_d

    :cond_c
    if-nez v5, :cond_d

    const/4 v11, 0x1

    if-le v8, v11, :cond_d

    .line 4950
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 4952
    if-eqz v10, :cond_d

    .line 4954
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9ClearAllSymbs : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v8, :cond_f

    .line 4962
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v11, v11, v3

    int-to-char v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4960
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4933
    .end local v3    # "i":I
    .end local v4    # "inputMethod":I
    .end local v5    # "isPredictionOn":Z
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "size":I
    :cond_e
    const/16 v8, 0x40

    goto :goto_3

    .line 4967
    .restart local v3    # "i":I
    .restart local v4    # "inputMethod":I
    .restart local v5    # "isPredictionOn":Z
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "size":I
    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 4971
    .end local v0    # "HangulLen":[S
    .end local v3    # "i":I
    .end local v4    # "inputMethod":I
    .end local v5    # "isPredictionOn":Z
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "size":I
    .end local v10    # "wStatus":S
    :cond_10
    const-string v11, ""

    goto/16 :goto_2

    .line 4975
    .end local v9    # "totalWordsCount":I
    :cond_11
    const-string v11, ""

    goto/16 :goto_2
.end method

.method private getSyllableDelimiter()I
    .locals 2

    .prologue
    .line 598
    const/4 v0, 0x1

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v0, v1, :cond_0

    .line 600
    const/16 v0, 0x27

    .line 604
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method private initASDB()S
    .locals 4

    .prologue
    .line 1612
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    const/16 v2, 0x2800

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    .line 1614
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 1616
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWASDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_0
    return v0
.end method

.method private initCDB()S
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1566
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return v0

    .line 1570
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    .line 1571
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWCDBInit([BS)S

    move-result v0

    .line 1573
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 1575
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWCDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initChineseLanguage()V
    .locals 7

    .prologue
    const/16 v6, 0xe1

    .line 965
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    .line 966
    .local v1, "strokeModeOn":Z
    const/4 v0, 0x0

    .line 969
    .local v0, "eMode":B
    iget-short v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v3, v6, :cond_2

    .line 971
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSysInit()S

    move-result v2

    .line 973
    .local v2, "wStatus":S
    if-eqz v2, :cond_0

    .line 975
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPSysInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v2

    .line 982
    if-eqz v2, :cond_1

    .line 984
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPLdbInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_1
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPLdbValidate(S)S

    move-result v2

    .line 991
    if-eqz v2, :cond_3

    .line 993
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPLdbValidate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    .line 1053
    .end local v2    # "wStatus":S
    :cond_2
    :goto_0
    return-void

    .line 1002
    .restart local v2    # "wStatus":S
    :cond_3
    if-eqz v1, :cond_4

    .line 1004
    const/4 v0, 0x2

    .line 1006
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v2

    .line 1011
    :cond_4
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetInputMode(B)S

    move-result v2

    .line 1013
    if-eqz v2, :cond_7

    .line 1015
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPSetInputMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_1
    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v2

    .line 1027
    if-eqz v2, :cond_5

    .line 1029
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9AWSysInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v2

    .line 1036
    if-eqz v2, :cond_6

    .line 1038
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9AWLdbInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPTraceInit()S

    move-result v2

    .line 1045
    if-eqz v2, :cond_2

    .line 1047
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPTraceInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1019
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v2

    goto :goto_1
.end method

.method private initKDB()V
    .locals 12

    .prologue
    .line 1723
    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v9, v10, :cond_d

    .line 1727
    const/4 v8, 0x0

    .line 1730
    .local v8, "wStatus":S
    const/4 v4, 0x0

    .line 1732
    .local v4, "wFirstKdbNum":S
    const/4 v5, 0x0

    .line 1734
    .local v5, "wFirstPageNum":S
    const/4 v6, 0x0

    .line 1736
    .local v6, "wSecondKdbNum":S
    const/4 v7, 0x0

    .line 1739
    .local v7, "wSecondPageNum":S
    const/4 v9, 0x1

    new-array v1, v9, [S

    .line 1741
    .local v1, "pwFirstLdbNum":[S
    const/4 v9, 0x1

    new-array v2, v9, [S

    .line 1744
    .local v2, "pwSecondLdbNum":[S
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v1, v9

    .line 1746
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v2, v9

    .line 1748
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_6

    .line 1750
    const/4 v9, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v10

    aput-short v10, v1, v9

    .line 1764
    :cond_0
    :goto_0
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_1

    .line 1766
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-short v10, v1, v10

    const v11, 0xff00

    and-int/2addr v10, v11

    iget-short v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v1, v9

    .line 1771
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1774
    .local v0, "inputMethod":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1776
    :cond_2
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_7

    .line 1778
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xa00

    int-to-short v4, v9

    .line 1835
    :goto_1
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v8

    .line 1837
    if-eqz v8, :cond_3

    .line 1839
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9WordSymbInit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v10, 0x1bc

    iput-short v10, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardHeight:S

    .line 1845
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v10, 0x2d0

    iput-short v10, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardWidth:S

    .line 1847
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-static {v4, v5, v6, v7, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;)S

    move-result v8

    .line 1849
    if-eqz v8, :cond_4

    .line 1851
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Init : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_4
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v8

    .line 1858
    if-eqz v8, :cond_5

    .line 1860
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Validate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    .end local v0    # "inputMethod":I
    .end local v1    # "pwFirstLdbNum":[S
    .end local v2    # "pwSecondLdbNum":[S
    .end local v4    # "wFirstKdbNum":S
    .end local v5    # "wFirstPageNum":S
    .end local v6    # "wSecondKdbNum":S
    .end local v7    # "wSecondPageNum":S
    .end local v8    # "wStatus":S
    :cond_5
    :goto_2
    return-void

    .line 1754
    .restart local v1    # "pwFirstLdbNum":[S
    .restart local v2    # "pwSecondLdbNum":[S
    .restart local v4    # "wFirstKdbNum":S
    .restart local v5    # "wFirstPageNum":S
    .restart local v6    # "wSecondKdbNum":S
    .restart local v7    # "wSecondPageNum":S
    .restart local v8    # "wStatus":S
    :cond_6
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v8

    .line 1756
    if-eqz v8, :cond_0

    .line 1758
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWLdbGetLanguage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1782
    .restart local v0    # "inputMethod":I
    :cond_7
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x600

    int-to-short v4, v9

    goto/16 :goto_1

    .line 1788
    :cond_8
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_9

    .line 1790
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xd00

    int-to-short v4, v9

    goto/16 :goto_1

    .line 1792
    :cond_9
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_a

    .line 1794
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 1796
    .local v3, "turkishKeyboardType":I
    packed-switch v3, :pswitch_data_0

    .line 1812
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_1

    .line 1800
    :pswitch_0
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xf00

    int-to-short v4, v9

    .line 1802
    goto/16 :goto_1

    .line 1806
    :pswitch_1
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x1000

    int-to-short v4, v9

    .line 1808
    goto/16 :goto_1

    .line 1818
    .end local v3    # "turkishKeyboardType":I
    :cond_a
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x19

    if-eq v9, v10, :cond_b

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x61

    if-ne v9, v10, :cond_c

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v9

    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v9

    const/16 v10, 0x140

    if-ne v9, v10, :cond_c

    .line 1824
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x500

    int-to-short v4, v9

    goto/16 :goto_1

    .line 1828
    :cond_c
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_1

    .line 1875
    .end local v0    # "inputMethod":I
    .end local v1    # "pwFirstLdbNum":[S
    .end local v2    # "pwSecondLdbNum":[S
    .end local v4    # "wFirstKdbNum":S
    .end local v5    # "wFirstPageNum":S
    .end local v6    # "wSecondKdbNum":S
    .end local v7    # "wSecondPageNum":S
    .end local v8    # "wStatus":S
    :cond_d
    iget v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v9, :cond_5

    .line 1879
    const/4 v8, 0x0

    .line 1882
    .restart local v8    # "wStatus":S
    const/4 v4, 0x0

    .line 1884
    .restart local v4    # "wFirstKdbNum":S
    const/4 v5, 0x0

    .line 1886
    .restart local v5    # "wFirstPageNum":S
    const/4 v6, 0x0

    .line 1888
    .restart local v6    # "wSecondKdbNum":S
    const/4 v7, 0x0

    .line 1891
    .restart local v7    # "wSecondPageNum":S
    const/4 v9, 0x1

    new-array v1, v9, [S

    .line 1893
    .restart local v1    # "pwFirstLdbNum":[S
    const/4 v9, 0x1

    new-array v2, v9, [S

    .line 1896
    .restart local v2    # "pwSecondLdbNum":[S
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v1, v9

    .line 1898
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v2, v9

    .line 1900
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_14

    .line 1902
    const/4 v9, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v10

    aput-short v10, v1, v9

    .line 1916
    :cond_e
    :goto_3
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_f

    .line 1918
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-short v10, v1, v10

    const v11, 0xff00

    and-int/2addr v10, v11

    iget-short v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v1, v9

    .line 1923
    :cond_f
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1926
    .restart local v0    # "inputMethod":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_10

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1928
    :cond_10
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_15

    .line 1930
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xa00

    int-to-short v4, v9

    .line 1987
    :goto_4
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v8

    .line 1989
    if-eqz v8, :cond_11

    .line 1991
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9WordSymbInit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_11
    invoke-static {v4, v5, v6, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSS)S

    move-result v8

    .line 1998
    if-eqz v8, :cond_12

    .line 2000
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Init : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_12
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v8

    .line 2007
    if-eqz v8, :cond_13

    .line 2009
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Validate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_13
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetLocale(S)S

    move-result v8

    .line 2016
    if-eqz v8, :cond_5

    .line 2018
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_SetLocale : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1906
    .end local v0    # "inputMethod":I
    :cond_14
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v8

    .line 1908
    if-eqz v8, :cond_e

    .line 1910
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWLdbGetLanguage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1934
    .restart local v0    # "inputMethod":I
    :cond_15
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x600

    int-to-short v4, v9

    goto/16 :goto_4

    .line 1940
    :cond_16
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_17

    .line 1942
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xd00

    int-to-short v4, v9

    goto/16 :goto_4

    .line 1944
    :cond_17
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_18

    .line 1946
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 1948
    .restart local v3    # "turkishKeyboardType":I
    packed-switch v3, :pswitch_data_1

    .line 1964
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_4

    .line 1952
    :pswitch_2
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xf00

    int-to-short v4, v9

    .line 1954
    goto/16 :goto_4

    .line 1958
    :pswitch_3
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x1000

    int-to-short v4, v9

    .line 1960
    goto/16 :goto_4

    .line 1970
    .end local v3    # "turkishKeyboardType":I
    :cond_18
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v10, 0x1

    if-eq v9, v10, :cond_19

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x19

    if-eq v9, v10, :cond_19

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x61

    if-ne v9, v10, :cond_1a

    :cond_19
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v9

    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_1a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v9

    const/16 v10, 0x140

    if-ne v9, v10, :cond_1a

    .line 1976
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x500

    int-to-short v4, v9

    goto/16 :goto_4

    .line 1980
    :cond_1a
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_4

    .line 1796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1948
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initKRUDB()S
    .locals 4

    .prologue
    .line 1627
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    const/16 v2, 0x5000

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KRUDBInit([BS)S

    move-result v0

    .line 1629
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 1631
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KRUDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_0
    return v0
.end method

.method private initKoreanLanguage()V
    .locals 6

    .prologue
    const/16 v3, 0x12

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 1058
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_5

    .line 1063
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_3

    .line 1067
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    move-result v0

    .line 1069
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 1071
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit()S

    move-result v0

    .line 1079
    if-eqz v0, :cond_1

    .line 1081
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableChunJiIn()S

    move-result v0

    .line 1090
    if-eqz v0, :cond_2

    .line 1092
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDisableChunJiIn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 1099
    if-nez v0, :cond_4

    .line 1101
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 1103
    if-eqz v0, :cond_3

    .line 1105
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    .end local v0    # "wStatus":S
    :cond_3
    :goto_0
    return-void

    .line 1113
    .restart local v0    # "wStatus":S
    :cond_4
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 1117
    if-eqz v0, :cond_3

    .line 1119
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1127
    .end local v0    # "wStatus":S
    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_3

    .line 1132
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_3

    .line 1136
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    move-result v0

    .line 1138
    .restart local v0    # "wStatus":S
    if-eqz v0, :cond_6

    .line 1140
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit()S

    move-result v0

    .line 1148
    if-eqz v0, :cond_7

    .line 1150
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableChunJiIn()S

    move-result v0

    .line 1159
    if-eqz v0, :cond_8

    .line 1161
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDisableChunJiIn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableJoinChunJiIn()S

    move-result v0

    .line 1168
    if-eqz v0, :cond_9

    .line 1170
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDisableJoinChunJiIn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_9
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 1177
    if-nez v0, :cond_a

    .line 1179
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 1181
    if-eqz v0, :cond_3

    .line 1183
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1191
    :cond_a
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 1195
    if-eqz v0, :cond_3

    .line 1197
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initLatinLanguage()V
    .locals 7

    .prologue
    const/16 v3, 0x10

    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 793
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v1, :cond_7

    .line 798
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 800
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 802
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 811
    if-eqz v0, :cond_1

    .line 813
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 820
    if-nez v0, :cond_6

    .line 822
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 824
    if-eqz v0, :cond_2

    .line 826
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordStemsPoint(S)S

    move-result v0

    .line 849
    if-eqz v0, :cond_3

    .line 851
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetWordStemsPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_3
    invoke-static {v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 860
    if-eqz v0, :cond_4

    .line 862
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoSpace()S

    move-result v0

    .line 869
    if-eqz v0, :cond_5

    .line 871
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetAutoSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v0    # "wStatus":S
    :cond_5
    :goto_1
    return-void

    .line 834
    .restart local v0    # "wStatus":S
    :cond_6
    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 838
    if-eqz v0, :cond_2

    .line 840
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 875
    .end local v0    # "wStatus":S
    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_5

    .line 880
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 882
    .restart local v0    # "wStatus":S
    if-eqz v0, :cond_8

    .line 884
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 893
    if-eqz v0, :cond_9

    .line 895
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_9
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 902
    if-nez v0, :cond_d

    .line 904
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 906
    if-eqz v0, :cond_a

    .line 908
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_a
    :goto_2
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetWordStemsPoint(S)S

    move-result v0

    .line 931
    if-eqz v0, :cond_b

    .line 933
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetWordStemsPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_b
    invoke-static {v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 942
    if-eqz v0, :cond_c

    .line 944
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetAutoSpace()S

    move-result v0

    .line 951
    if-eqz v0, :cond_5

    .line 953
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetAutoSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 916
    :cond_d
    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 920
    if-eqz v0, :cond_a

    .line 922
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initLinguistic()V
    .locals 5

    .prologue
    const/16 v4, 0xe1

    const/16 v3, 0x12

    const/4 v2, 0x1

    .line 673
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v1, :cond_3

    .line 677
    const/4 v0, 0x0

    .line 679
    .local v0, "wStatus":S
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKoreanLanguage()V

    .line 683
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    .line 695
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initDLM()S

    .line 697
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initCDB()S

    .line 699
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    .line 701
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    .line 704
    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    .line 706
    if-eqz v0, :cond_0

    .line 708
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUDBDelayedReorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .end local v0    # "wStatus":S
    :cond_0
    :goto_1
    return-void

    .line 685
    .restart local v0    # "wStatus":S
    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v4, :cond_2

    .line 687
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initChineseLanguage()V

    goto :goto_0

    .line 691
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    goto :goto_0

    .line 724
    .end local v0    # "wStatus":S
    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    .line 728
    const/4 v0, 0x0

    .line 730
    .restart local v0    # "wStatus":S
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_4

    .line 732
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKoreanLanguage()V

    .line 734
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    .line 746
    :goto_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initCDB()S

    .line 748
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    .line 750
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    .line 753
    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    .line 755
    if-eqz v0, :cond_0

    .line 757
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUDBDelayedReorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 736
    :cond_4
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v4, :cond_5

    .line 738
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initChineseLanguage()V

    goto :goto_2

    .line 742
    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    goto :goto_2
.end method

.method private initRUDB()S
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1589
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    .line 1605
    :cond_0
    :goto_0
    return v0

    .line 1593
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    .line 1594
    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    const/16 v2, 0x5000

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    .line 1596
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 1598
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWRUDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSubLinguistic()V
    .locals 2

    .prologue
    .line 774
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKoreanLanguage()V

    .line 788
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initChineseLanguage()V

    goto :goto_0

    .line 784
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    goto :goto_0
.end method

.method private invokeTimeOut()V
    .locals 4

    .prologue
    .line 5209
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    .line 5212
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 5214
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeTimeOut : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5218
    :cond_0
    return-void
.end method

.method private lookupChar(I)I
    .locals 12
    .param p1, "wKey"    # I

    .prologue
    const/16 v11, 0x7a

    const/16 v10, 0x61

    const/16 v9, 0x3a

    const/4 v8, 0x1

    const/16 v7, 0x30

    .line 3417
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 3419
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 3420
    .local v1, "isPredictionOn":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    .line 3422
    .local v3, "strokeModeOn":Z
    if-eq v0, v8, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3424
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD:[S

    .line 3427
    .local v2, "keyMap":[S
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_2

    .line 3429
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_TH:[S

    .line 3431
    if-lt p1, v7, :cond_1

    if-gt p1, v9, :cond_1

    .line 3433
    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    .line 3605
    :goto_0
    return v5

    .line 3435
    :cond_1
    const/16 v5, -0x3a

    if-ne p1, v5, :cond_5

    .line 3437
    const/16 v5, 0xa

    aget-short v5, v2, v5

    goto :goto_0

    .line 3441
    :cond_2
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6d0000

    if-ne v5, v6, :cond_3

    .line 3442
    if-lt p1, v7, :cond_5

    if-gt p1, v9, :cond_5

    .line 3443
    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    goto :goto_0

    .line 3445
    :cond_3
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const v6, 0x7a68434e

    if-ne v5, v6, :cond_5

    if-eqz v3, :cond_5

    .line 3447
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    .line 3449
    const/16 v5, 0x2a

    if-ne p1, v5, :cond_4

    .line 3451
    const/4 v5, 0x5

    aget-short v5, v2, v5

    goto :goto_0

    .line 3455
    :cond_4
    const/16 v5, 0x31

    if-lt p1, v5, :cond_5

    const/16 v5, 0x36

    if-gt p1, v5, :cond_5

    .line 3457
    add-int/lit8 v5, p1, -0x31

    aget-short v5, v2, v5

    goto :goto_0

    .line 3464
    :cond_5
    if-lt p1, v7, :cond_20

    const/16 v5, 0x39

    if-gt p1, v5, :cond_20

    .line 3466
    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    goto :goto_0

    .line 3470
    .end local v2    # "keyMap":[S
    :cond_6
    if-eqz v0, :cond_7

    const/4 v5, 0x7

    if-eq v0, v5, :cond_7

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1f

    .line 3476
    :cond_7
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    .line 3480
    .restart local v2    # "keyMap":[S
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_8

    .line 3482
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForTHAI(I)I

    move-result v5

    goto :goto_0

    .line 3484
    :cond_8
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_9

    .line 3486
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForVIETNAMESE(I)I

    move-result v5

    goto :goto_0

    .line 3488
    :cond_9
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6f0000

    if-ne v5, v6, :cond_b

    .line 3490
    if-eqz v1, :cond_a

    .line 3492
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForKorean(I)I

    move-result v5

    goto :goto_0

    .line 3496
    :cond_a
    const/16 v5, 0x80

    goto :goto_0

    .line 3500
    :cond_b
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6c740000

    if-ne v5, v6, :cond_c

    .line 3502
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForLithuanian(I)I

    move-result v5

    goto :goto_0

    .line 3504
    :cond_c
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x64610000

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x66690000

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6e620000

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x73760000

    if-ne v5, v6, :cond_e

    .line 3512
    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForDanish(I)I

    move-result v5

    goto/16 :goto_0

    .line 3514
    :cond_e
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x69730000

    if-ne v5, v6, :cond_f

    .line 3516
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForIcelandic(I)I

    move-result v5

    goto/16 :goto_0

    .line 3518
    :cond_f
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x617a0000

    if-ne v5, v6, :cond_10

    .line 3520
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForAzerbaijan(I)I

    move-result v5

    goto/16 :goto_0

    .line 3522
    :cond_10
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x65740000

    if-ne v5, v6, :cond_11

    .line 3524
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForEstonian(I)I

    move-result v5

    goto/16 :goto_0

    .line 3526
    :cond_11
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x73710000

    if-ne v5, v6, :cond_12

    .line 3528
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForAlbanian(I)I

    move-result v5

    goto/16 :goto_0

    .line 3530
    :cond_12
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-eqz v5, :cond_13

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x656c0000

    if-ne v5, v6, :cond_13

    .line 3532
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForGreek(I)I

    move-result v5

    goto/16 :goto_0

    .line 3534
    :cond_13
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74720000

    if-ne v5, v6, :cond_15

    .line 3536
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 3538
    .local v4, "turkishKeyboardType":I
    if-ne v4, v8, :cond_14

    .line 3540
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForTurkish(I)I

    move-result v5

    goto/16 :goto_0

    .line 3542
    :cond_14
    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    .line 3544
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForTurkishF(I)I

    move-result v5

    goto/16 :goto_0

    .line 3548
    .end local v4    # "turkishKeyboardType":I
    :cond_15
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6d0000

    if-ne v5, v6, :cond_16

    .line 3549
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForKhmer(I)I

    move-result v5

    goto/16 :goto_0

    .line 3550
    :cond_16
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6c6f0000

    if-ne v5, v6, :cond_17

    .line 3551
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForLao(I)I

    move-result v5

    goto/16 :goto_0

    .line 3555
    :cond_17
    if-lt p1, v10, :cond_18

    if-gt p1, v11, :cond_18

    .line 3557
    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0

    .line 3559
    :cond_18
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x68790000

    if-ne v5, v6, :cond_19

    .line 3561
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForArmenian(I)I

    move-result v5

    goto/16 :goto_0

    .line 3563
    :cond_19
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x62670000

    if-ne v5, v6, :cond_1a

    .line 3565
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForBulgarian(I)I

    move-result v5

    goto/16 :goto_0

    .line 3567
    :cond_1a
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x72750000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6b0000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x756b0000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x617a0000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6d6b0000

    if-ne v5, v6, :cond_1c

    .line 3577
    :cond_1b
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForRussian(I)I

    move-result v5

    goto/16 :goto_0

    .line 3579
    :cond_1c
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x61720000

    if-eq v5, v6, :cond_1d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x75720000

    if-eq v5, v6, :cond_1d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x66610000

    if-ne v5, v6, :cond_1e

    .line 3585
    :cond_1d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForArabic(I)I

    move-result v5

    goto/16 :goto_0

    .line 3587
    :cond_1e
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x69770000

    if-ne v5, v6, :cond_20

    .line 3589
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForHebrew(I)I

    move-result v5

    goto/16 :goto_0

    .line 3595
    .end local v2    # "keyMap":[S
    :cond_1f
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    .line 3597
    .restart local v2    # "keyMap":[S
    if-lt p1, v10, :cond_20

    if-gt p1, v11, :cond_20

    .line 3599
    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0

    .line 3605
    :cond_20
    const/16 v5, 0x80

    goto/16 :goto_0
.end method

.method private lookupCharForAlbanian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3759
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_SQ:[S

    .line 3761
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 3763
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3765
    aget-short v2, v1, v0

    .line 3779
    :goto_0
    return v2

    .line 3769
    :cond_0
    const/16 v2, 0xeb

    if-ne p1, v2, :cond_1

    .line 3771
    const/16 v2, 0xa

    goto :goto_0

    .line 3773
    :cond_1
    const/16 v2, 0xe7

    if-ne p1, v2, :cond_2

    .line 3775
    const/16 v2, 0x14

    goto :goto_0

    .line 3779
    :cond_2
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForArabic(I)I
    .locals 4
    .param p1, "wKey"    # I

    .prologue
    .line 3837
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AR:[S

    .line 3840
    .local v1, "keyMap":[S
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x61720000

    if-ne v2, v3, :cond_1

    .line 3842
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AR:[S

    .line 3854
    :cond_0
    :goto_0
    add-int/lit8 v0, p1, -0x41

    .line 3856
    .local v0, "keyIndex":I
    if-ltz v0, :cond_3

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 3858
    aget-short v2, v1, v0

    .line 3863
    :goto_1
    return v2

    .line 3844
    .end local v0    # "keyIndex":I
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x66610000

    if-ne v2, v3, :cond_2

    .line 3846
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_FA:[S

    goto :goto_0

    .line 3848
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x75720000

    if-ne v2, v3, :cond_0

    .line 3850
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_UR:[S

    goto :goto_0

    .line 3863
    .restart local v0    # "keyIndex":I
    :cond_3
    const/16 v2, 0x80

    goto :goto_1
.end method

.method private lookupCharForArmenian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3820
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HY:[S

    .line 3822
    .local v1, "keyMap":[S
    add-int/lit16 v0, p1, -0x562

    .line 3824
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3826
    aget-short v2, v1, v0

    .line 3830
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForAzerbaijan(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 4028
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AZ:[S

    .line 4030
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 4032
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4034
    aget-short v2, v1, v0

    .line 4076
    :goto_0
    return v2

    .line 4040
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4076
    const/16 v2, 0x80

    goto :goto_0

    .line 4044
    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    .line 4048
    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    .line 4052
    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    .line 4056
    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    .line 4060
    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    .line 4064
    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    .line 4068
    :sswitch_6
    const/4 v2, 0x1

    goto :goto_0

    .line 4040
    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_4
        0xf6 -> :sswitch_0
        0xfc -> :sswitch_6
        0x11f -> :sswitch_1
        0x131 -> :sswitch_2
        0x15f -> :sswitch_5
        0x259 -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForBulgarian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3803
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_BG:[S

    .line 3805
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x41

    .line 3807
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3809
    aget-short v2, v1, v0

    .line 3813
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForDanish(I)I
    .locals 8
    .param p1, "wKey"    # I

    .prologue
    const/16 v7, 0xe6

    const/16 v6, 0xe5

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v2, 0xa

    .line 3628
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_DA:[S

    .line 3630
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 3632
    .local v0, "keyIndex":I
    if-ltz v0, :cond_1

    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 3634
    aget-short v2, v1, v0

    .line 3721
    :cond_0
    :goto_0
    return v2

    .line 3638
    :cond_1
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    sparse-switch v5, :sswitch_data_0

    .line 3721
    :cond_2
    const/16 v2, 0x80

    goto :goto_0

    .line 3642
    :sswitch_0
    if-eq p1, v6, :cond_0

    .line 3646
    const/16 v2, 0xf8

    if-ne p1, v2, :cond_3

    move v2, v3

    .line 3648
    goto :goto_0

    .line 3650
    :cond_3
    if-ne p1, v7, :cond_2

    move v2, v4

    .line 3652
    goto :goto_0

    .line 3662
    :sswitch_1
    if-eq p1, v6, :cond_0

    .line 3666
    const/16 v2, 0xf6

    if-ne p1, v2, :cond_4

    move v2, v4

    .line 3668
    goto :goto_0

    .line 3670
    :cond_4
    const/16 v2, 0xe4

    if-ne p1, v2, :cond_2

    move v2, v3

    .line 3672
    goto :goto_0

    .line 3680
    :sswitch_2
    const/16 v3, 0xf0

    if-eq p1, v3, :cond_0

    .line 3684
    if-ne p1, v7, :cond_5

    move v2, v4

    .line 3686
    goto :goto_0

    .line 3688
    :cond_5
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_2

    .line 3690
    const/16 v2, 0x1c

    goto :goto_0

    .line 3698
    :sswitch_3
    if-eq p1, v6, :cond_0

    .line 3702
    const/16 v2, 0xf8

    if-ne p1, v2, :cond_6

    move v2, v4

    .line 3704
    goto :goto_0

    .line 3706
    :cond_6
    if-ne p1, v7, :cond_2

    move v2, v3

    .line 3708
    goto :goto_0

    .line 3638
    nop

    :sswitch_data_0
    .sparse-switch
        0x64610000 -> :sswitch_0
        0x66690000 -> :sswitch_1
        0x69730000 -> :sswitch_2
        0x6e620000 -> :sswitch_3
        0x73760000 -> :sswitch_1
    .end sparse-switch
.end method

.method private lookupCharForEstonian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3986
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_ET:[S

    .line 3988
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 3990
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3992
    aget-short v2, v1, v0

    .line 4020
    :goto_0
    return v2

    .line 3996
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4020
    const/16 v2, 0x80

    goto :goto_0

    .line 4000
    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    .line 4004
    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    .line 4008
    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    .line 4012
    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    .line 3996
    :sswitch_data_0
    .sparse-switch
        0xe4 -> :sswitch_3
        0xf5 -> :sswitch_1
        0xf6 -> :sswitch_2
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupCharForGreek(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 4083
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_EL:[S

    .line 4085
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 4087
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4089
    aget-short v2, v1, v0

    .line 4093
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForHebrew(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3870
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HE:[S

    .line 3872
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x41

    .line 3874
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3876
    aget-short v2, v1, v0

    .line 3880
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForIcelandic(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3728
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_IS:[S

    .line 3730
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 3732
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3734
    aget-short v2, v1, v0

    .line 3752
    :goto_0
    return v2

    .line 3738
    :cond_0
    const/16 v2, 0xf0

    if-ne p1, v2, :cond_1

    .line 3740
    const/16 v2, 0xa

    goto :goto_0

    .line 3742
    :cond_1
    const/16 v2, 0xe6

    if-ne p1, v2, :cond_2

    .line 3744
    const/16 v2, 0x14

    goto :goto_0

    .line 3746
    :cond_2
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_3

    .line 3748
    const/16 v2, 0x1c

    goto :goto_0

    .line 3752
    :cond_3
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForKhmer(I)I
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 4212
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    .line 4213
    .local v0, "keyMap":[S
    const/16 v1, 0x61

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    .line 4214
    add-int/lit8 v1, p1, -0x61

    aget-short p1, v0, v1

    .line 4218
    .end local p1    # "keyCode":I
    :cond_0
    :goto_0
    return p1

    .line 4215
    .restart local p1    # "keyCode":I
    :cond_1
    const/16 v1, 0x41

    if-lt p1, v1, :cond_0

    const/16 v1, 0x4c

    if-gt p1, v1, :cond_0

    .line 4216
    add-int/lit8 p1, p1, -0x27

    goto :goto_0
.end method

.method private lookupCharForKorean(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3612
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_KO:[S

    .line 3614
    .local v1, "keyMap":[S
    add-int/lit16 v0, p1, -0x3131

    .line 3616
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3618
    aget-short v2, v1, v0

    .line 3622
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForLao(I)I
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    .line 4225
    .local v0, "keyMap":[S
    const/16 v1, 0x61

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    .line 4226
    add-int/lit8 v1, p1, -0x61

    aget-short p1, v0, v1

    .line 4230
    .end local p1    # "keyCode":I
    :cond_0
    :goto_0
    return p1

    .line 4227
    .restart local p1    # "keyCode":I
    :cond_1
    const/16 v1, 0x41

    if-ne p1, v1, :cond_0

    .line 4228
    add-int/lit8 p1, p1, -0x27

    goto :goto_0
.end method

.method private lookupCharForLithuanian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3925
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_LT:[S

    .line 3927
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 3929
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3931
    aget-short v2, v1, v0

    .line 3979
    :goto_0
    return v2

    .line 3935
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3979
    const/16 v2, 0x80

    goto :goto_0

    .line 3939
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3943
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3947
    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 3951
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    .line 3955
    :sswitch_4
    const/4 v2, 0x4

    goto :goto_0

    .line 3959
    :sswitch_5
    const/4 v2, 0x5

    goto :goto_0

    .line 3963
    :sswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 3967
    :sswitch_7
    const/4 v2, 0x7

    goto :goto_0

    .line 3971
    :sswitch_8
    const/16 v2, 0x8

    goto :goto_0

    .line 3935
    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_0
        0x10d -> :sswitch_1
        0x117 -> :sswitch_3
        0x119 -> :sswitch_2
        0x12f -> :sswitch_4
        0x161 -> :sswitch_5
        0x16b -> :sswitch_7
        0x173 -> :sswitch_6
        0x17e -> :sswitch_8
    .end sparse-switch
.end method

.method private lookupCharForRussian(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3786
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_RU:[S

    .line 3788
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x41

    .line 3790
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3792
    aget-short v2, v1, v0

    .line 3796
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForTHAI(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3887
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TH:[S

    .line 3889
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 3891
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3893
    aget-short v2, v1, v0

    .line 3897
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForTurkish(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 4100
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR:[S

    .line 4102
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 4104
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4106
    aget-short v2, v1, v0

    .line 4138
    :goto_0
    return v2

    .line 4110
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4138
    const/16 v2, 0x80

    goto :goto_0

    .line 4114
    :sswitch_0
    const/4 v2, 0x7

    goto :goto_0

    .line 4118
    :sswitch_1
    const/16 v2, 0xa

    goto :goto_0

    .line 4122
    :sswitch_2
    const/16 v2, 0xb

    goto :goto_0

    .line 4126
    :sswitch_3
    const/16 v2, 0x15

    goto :goto_0

    .line 4130
    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    .line 4134
    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    .line 4110
    nop

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_5
        0xf6 -> :sswitch_4
        0xfc -> :sswitch_2
        0x11f -> :sswitch_1
        0x131 -> :sswitch_0
        0x15f -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForTurkishF(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 4145
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR_F:[S

    .line 4147
    .local v1, "keyMap":[S
    add-int/lit8 v0, p1, -0x61

    .line 4149
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4151
    aget-short v2, v1, v0

    .line 4183
    :goto_0
    return v2

    .line 4155
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4183
    const/16 v2, 0x80

    goto :goto_0

    .line 4159
    :sswitch_0
    const/4 v2, 0x3

    goto :goto_0

    .line 4163
    :sswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 4167
    :sswitch_2
    const/16 v2, 0x10

    goto :goto_0

    .line 4171
    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    .line 4175
    :sswitch_4
    const/16 v2, 0x19

    goto :goto_0

    .line 4179
    :sswitch_5
    const/16 v2, 0x1c

    goto :goto_0

    .line 4155
    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_5
        0xf6 -> :sswitch_4
        0xfc -> :sswitch_2
        0x11f -> :sswitch_1
        0x131 -> :sswitch_0
        0x15f -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForVIETNAMESE(I)I
    .locals 3
    .param p1, "wKey"    # I

    .prologue
    .line 3904
    const/4 v1, 0x0

    .line 3906
    .local v1, "keyMap":[S
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_VI:[S

    .line 3910
    add-int/lit8 v0, p1, -0x61

    .line 3912
    .local v0, "keyIndex":I
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3914
    aget-short v2, v1, v0

    .line 3918
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private processKey(I)S
    .locals 7
    .param p1, "wKeyIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 3265
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v5, v4, :cond_1

    .line 3267
    new-array v0, v5, [S

    .line 3269
    .local v0, "sFunctionKey":[S
    const/4 v2, 0x0

    .line 3271
    .local v2, "wStatus":S
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v1

    .line 3274
    .local v1, "wKeytoMapVal":I
    int-to-short v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v2

    .line 3276
    if-eqz v2, :cond_0

    .line 3278
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDB_ProcessKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    .end local v0    # "sFunctionKey":[S
    .end local v1    # "wKeytoMapVal":I
    .end local v2    # "wStatus":S
    :cond_0
    :goto_0
    return v2

    .line 3304
    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v4, :cond_2

    .line 3306
    new-array v0, v5, [S

    .line 3308
    .restart local v0    # "sFunctionKey":[S
    const/4 v2, 0x0

    .line 3310
    .restart local v2    # "wStatus":S
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v1

    .line 3313
    .restart local v1    # "wKeytoMapVal":I
    int-to-short v4, v1

    invoke-static {v4, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SB[S)S

    move-result v2

    .line 3315
    if-eqz v2, :cond_0

    .line 3317
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDB_ProcessKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "sFunctionKey":[S
    .end local v1    # "wKeytoMapVal":I
    .end local v2    # "wStatus":S
    :cond_2
    move v2, v3

    .line 3345
    goto :goto_0
.end method

.method private readDBdataFromFile(B)Z
    .locals 13
    .param p1, "dbType"    # B

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1212
    const/4 v4, 0x0

    .line 1214
    .local v4, "file":Ljava/io/File;
    const-string v5, ""

    .line 1216
    .local v5, "fileName":Ljava/lang/String;
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1218
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "xT9DB"

    invoke-virtual {v11, v12, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1221
    .local v2, "dir":Ljava/io/File;
    const/4 v0, 0x0

    .line 1224
    .local v0, "buffer":[B
    if-nez p1, :cond_4

    .line 1226
    const-string v5, "xT9UdbData.dat"

    .line 1228
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    .line 1263
    :goto_0
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1266
    .restart local v4    # "file":Ljava/io/File;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1268
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1270
    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loading XT9 DB file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_0
    const/4 v6, 0x0

    .line 1280
    .local v6, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 1285
    .local v8, "returnOfRead":I
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 1287
    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes loaded!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1303
    :cond_1
    if-eqz v7, :cond_2

    .line 1305
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_1
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "returnOfRead":I
    :cond_3
    :goto_2
    move v9, v10

    .line 1342
    :goto_3
    return v9

    .line 1230
    :cond_4
    if-ne p1, v10, :cond_5

    .line 1232
    const-string v5, "xT9CdbData.dat"

    .line 1234
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    goto :goto_0

    .line 1236
    :cond_5
    const/4 v11, 0x2

    if-ne p1, v11, :cond_6

    .line 1238
    const-string v5, "xT9ASdbData.dat"

    .line 1240
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    goto :goto_0

    .line 1242
    :cond_6
    const/4 v11, 0x3

    if-ne p1, v11, :cond_7

    .line 1244
    const-string v5, "xT9KUdbData.dat"

    .line 1246
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    goto :goto_0

    .line 1248
    :cond_7
    const/4 v11, 0x4

    if-ne p1, v11, :cond_8

    .line 1250
    const-string v5, "xT9DLMData.dat"

    .line 1252
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    goto :goto_0

    .line 1256
    :cond_8
    const-string v10, "SamsungIME"

    const-string v11, "Invalid DB type!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1291
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 1293
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not load the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1303
    if-eqz v6, :cond_3

    .line 1305
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1309
    :catch_1
    move-exception v3

    .line 1311
    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1301
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1303
    :goto_5
    if-eqz v6, :cond_9

    .line 1305
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1301
    :cond_9
    :goto_6
    throw v9

    .line 1325
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_a
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 1327
    :catch_2
    move-exception v3

    .line 1329
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1309
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .line 1311
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1309
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "returnOfRead":I
    :catch_4
    move-exception v3

    .line 1311
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1301
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "returnOfRead":I
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 1291
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private recaptureForVietnamese(Ljava/lang/String;)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 7208
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 7211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 7214
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7217
    .local v0, "currentChar":C
    const-string v3, "bcd\u0111fghjklmnpqrstvwxz0123456789"

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 7220
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    .line 7211
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7226
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7229
    .local v2, "nfd":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    .line 7232
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 7233
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_1

    .line 7243
    .end local v0    # "currentChar":C
    .end local v2    # "nfd":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setAutoAppend(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 2272
    const/4 v0, 0x0

    .line 2274
    .local v0, "wStatus":I
    if-eqz p1, :cond_1

    .line 2276
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoAppendInList()S

    move-result v0

    .line 2285
    :goto_0
    if-eqz v0, :cond_0

    .line 2287
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetAutoAppendInList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_0
    return-void

    .line 2280
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearAutoAppendInList()S

    move-result v0

    goto :goto_0
.end method

.method private setAutoSubstitution(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 2296
    const/4 v0, 0x0

    .line 2298
    .local v0, "wStatus":S
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    .line 2301
    if-eqz p1, :cond_2

    .line 2303
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 2311
    :goto_0
    if-eqz v0, :cond_0

    .line 2313
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetLDBAutoSubstitution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_0
    if-eqz p1, :cond_3

    .line 2320
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 2328
    :goto_1
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2330
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetUserDefinedAutoSubstitution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_1
    return-void

    .line 2307
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearLDBAutoSubstitution()S

    move-result v0

    goto :goto_0

    .line 2324
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearUserDefinedAutoSubstitution()S

    move-result v0

    goto :goto_1
.end method

.method private setInputLanguage(I)S
    .locals 5
    .param p1, "validLangId"    # I

    .prologue
    const/16 v4, 0xe1

    const/4 v1, 0x0

    .line 2525
    const/4 v2, 0x1

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v3, :cond_3

    .line 2529
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "BILINGUAL_INPUT_LANGUAGE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguage:I

    .line 2533
    const/4 v0, 0x0

    .line 2536
    .local v0, "wStatus":S
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    .line 2538
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguage:I

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguageId:S

    .line 2541
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v2, v4, :cond_0

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguageId:S

    if-eq v2, v4, :cond_0

    .line 2545
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 2558
    :cond_0
    if-eqz v0, :cond_2

    .line 2560
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    .line 2572
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    .line 2575
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    .line 2607
    .end local v0    # "wStatus":S
    :cond_1
    :goto_1
    return v1

    .line 2564
    .restart local v0    # "wStatus":S
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->changeKDBNum(I)V

    goto :goto_0

    .line 2577
    .end local v0    # "wStatus":S
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v2, :cond_1

    .line 2579
    const/4 v0, 0x0

    .line 2582
    .restart local v0    # "wStatus":S
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    .line 2585
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v2, v4, :cond_4

    .line 2587
    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 2592
    :cond_4
    if-eqz v0, :cond_5

    .line 2594
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :goto_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    goto :goto_1

    .line 2598
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->changeKDBNum(I)V

    goto :goto_2
.end method

.method private setInputMode(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 3096
    const/4 v0, 0x0

    .line 3098
    .local v0, "inputMode":I
    if-eqz p1, :cond_0

    .line 3100
    const/4 v0, 0x1

    .line 3104
    :cond_0
    const/4 v3, 0x0

    .line 3107
    .local v3, "wStatus":S
    new-array v1, v4, [S

    .line 3109
    .local v1, "pwFirstPageNum":[S
    new-array v2, v4, [S

    .line 3111
    .local v2, "pwSecondPageNum":[S
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v3

    .line 3113
    if-eqz v3, :cond_1

    .line 3115
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_GetPageNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    :cond_1
    sget v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_AMBIG:I

    if-eq v0, v4, :cond_2

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_4

    .line 3122
    :cond_2
    const/4 v3, 0x0

    .line 3124
    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetAmbigMode(SS)S

    move-result v3

    .line 3126
    if-eqz v3, :cond_3

    .line 3128
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_SetAmbigMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :cond_3
    :goto_0
    return-void

    .line 3132
    :cond_4
    sget v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_MULTITAP:I

    if-ne v0, v4, :cond_3

    .line 3134
    const/4 v3, 0x0

    .line 3136
    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetMultiTapMode(SS)S

    move-result v3

    .line 3138
    if-eqz v3, :cond_3

    .line 3140
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_SetMultiTapMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNextWordPrediction(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 2196
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_4

    .line 2200
    const/4 v0, 0x0

    .line 2202
    .local v0, "wStatus":I
    if-eqz p1, :cond_2

    .line 2204
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetNextWordPrediction()S

    move-result v0

    .line 2206
    if-eqz v0, :cond_0

    .line 2208
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetContextBasedPrediction()S

    move-result v0

    .line 2214
    if-eqz v0, :cond_1

    .line 2216
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetContextBasedPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    .end local v0    # "wStatus":I
    :cond_1
    :goto_0
    return-void

    .line 2222
    .restart local v0    # "wStatus":I
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearNextWordPrediction()S

    move-result v0

    .line 2224
    if-eqz v0, :cond_3

    .line 2226
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWClearNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearContextBasedPrediction()S

    move-result v0

    .line 2232
    if-eqz v0, :cond_1

    .line 2234
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWClearContextBasedPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2240
    .end local v0    # "wStatus":I
    :cond_4
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_1

    .line 2244
    const/4 v0, 0x0

    .line 2246
    .restart local v0    # "wStatus":I
    if-eqz p1, :cond_5

    .line 2248
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetDBPrediction()S

    move-result v0

    .line 2257
    :goto_1
    if-eqz v0, :cond_1

    .line 2259
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetDBPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2252
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearDBPrediction()S

    move-result v0

    goto :goto_1
.end method

.method private setRegionalCorrectionOn(Z)V
    .locals 7
    .param p1, "set"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2396
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v5, v1, :cond_7

    .line 2398
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_0

    .line 2400
    const/4 p1, 0x0

    .line 2404
    :cond_0
    const/4 v0, 0x0

    .line 2406
    .local v0, "wStatus":S
    if-eqz p1, :cond_4

    .line 2408
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    .line 2416
    :goto_0
    if-eqz v0, :cond_1

    .line 2418
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_SetRegionalMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_1
    if-eqz p1, :cond_5

    .line 2424
    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 2426
    if-eqz v0, :cond_2

    .line 2428
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_2
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    .line 2434
    if-eqz v0, :cond_3

    .line 2436
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    .end local v0    # "wStatus":S
    :cond_3
    :goto_1
    return-void

    .line 2412
    .restart local v0    # "wStatus":S
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_0

    .line 2442
    :cond_5
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 2444
    if-eqz v0, :cond_6

    .line 2446
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_6
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    .line 2452
    if-eqz v0, :cond_3

    .line 2454
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2460
    .end local v0    # "wStatus":S
    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_3

    .line 2462
    const/4 v0, 0x0

    .line 2464
    .restart local v0    # "wStatus":S
    if-eqz p1, :cond_a

    .line 2466
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    .line 2474
    :goto_2
    if-eqz v0, :cond_8

    .line 2476
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_SetRegionalMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_8
    if-eqz p1, :cond_b

    .line 2482
    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 2484
    if-eqz v0, :cond_9

    .line 2486
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_9
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSelectionListMode(B)S

    move-result v0

    .line 2492
    if-eqz v0, :cond_3

    .line 2494
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2470
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_2

    .line 2500
    :cond_b
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    .line 2502
    if-eqz v0, :cond_c

    .line 2504
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_c
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSelectionListMode(B)S

    move-result v0

    .line 2510
    if-eqz v0, :cond_3

    .line 2512
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setUDBDelayedReorder(Z)S
    .locals 3
    .param p1, "set"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1685
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_2

    .line 1687
    if-eqz p1, :cond_1

    .line 1689
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    .line 1710
    :cond_0
    :goto_0
    return v0

    .line 1693
    :cond_1
    invoke-static {v0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    goto :goto_0

    .line 1697
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    .line 1699
    if-eqz p1, :cond_3

    .line 1701
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder()S

    move-result v0

    goto :goto_0

    .line 1705
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearUDBDelayedReorder()S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletion(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 2339
    const/4 v0, 0x0

    .line 2341
    .local v0, "wStatus":S
    if-eqz p1, :cond_1

    .line 2343
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetDBCompletion()S

    move-result v0

    .line 2352
    :goto_0
    if-eqz v0, :cond_0

    .line 2354
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetDBCompletion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_0
    return-void

    .line 2347
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearDBCompletion()S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletionPoint(S)V
    .locals 4
    .param p1, "point"    # S

    .prologue
    .line 2363
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    .line 2365
    const/4 v0, 0x0

    .line 2367
    .local v0, "wStatus":S
    invoke-static {p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordCompletionPoint(S)S

    move-result v0

    .line 2370
    if-eqz v0, :cond_0

    .line 2372
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetWordCompletionPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    .end local v0    # "wStatus":S
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    .line 2378
    const/4 v0, 0x0

    .line 2380
    .restart local v0    # "wStatus":S
    invoke-static {p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetWordCompletionPoint(S)S

    move-result v0

    .line 2383
    if-eqz v0, :cond_0

    .line 2385
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetWordCompletionPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toUpperCaseOfTurkish(I)C
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 4190
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 4192
    const/16 v0, 0x130

    .line 4204
    :goto_0
    return v0

    .line 4194
    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    .line 4196
    const/16 v0, 0x49

    goto :goto_0

    .line 4198
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4200
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    .line 4204
    :cond_2
    int-to-char v0, p1

    goto :goto_0
.end method


# virtual methods
.method public DLMAddWord([CS)S
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 7847
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMAddWord([CS)S

    move-result v0

    return v0
.end method

.method public addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "shortcut"    # Ljava/lang/CharSequence;
    .param p2, "substitution"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x14

    .line 6785
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    .line 6787
    .local v2, "shortcutBuf":[S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6789
    .local v0, "outSubstitution":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    .line 6791
    .local v1, "retCode":I
    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    .line 6793
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    .line 6795
    .local v3, "substitutionBuf":[S
    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    .line 6801
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 6803
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper addAutoSubstitution ET9AWASDBAddEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 6859
    .end local v3    # "substitutionBuf":[S
    :cond_0
    :goto_0
    return v4

    .line 6811
    :cond_1
    const/16 v5, 0x26

    if-ne v1, v5, :cond_5

    .line 6813
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    move-result v1

    .line 6815
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v4, v1

    .line 6817
    goto :goto_0

    .line 6821
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    .line 6823
    const/16 v5, 0x15

    if-ne v1, v5, :cond_3

    .line 6825
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    .line 6827
    .restart local v3    # "substitutionBuf":[S
    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    .line 6833
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 6835
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper addAutoSubstitution ET9AWASDBAddEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 6839
    goto :goto_0

    .line 6843
    .end local v3    # "substitutionBuf":[S
    :cond_3
    if-eqz v1, :cond_0

    :cond_4
    move v4, v1

    .line 6859
    goto :goto_0

    .line 6849
    :cond_5
    if-eqz v1, :cond_0

    move v4, v1

    .line 6855
    goto :goto_0
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "myword"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x20

    const/16 v3, 0x14

    const/4 v5, 0x4

    .line 6436
    const/4 v1, 0x0

    .line 6437
    .local v1, "retCode":I
    if-eqz p1, :cond_5

    .line 6438
    const/4 v0, 0x0

    .line 6440
    .local v0, "isKorean":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 6442
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    .line 6446
    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    .line 6448
    .local v2, "word":[S
    if-eqz v0, :cond_7

    .line 6450
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 6452
    if-ne v1, v5, :cond_2

    .line 6454
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBAddWord([SS)S

    move-result v1

    .line 6456
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 6458
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9KUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 6564
    .end local v0    # "isKorean":Z
    .end local v2    # "word":[S
    :cond_1
    :goto_0
    return v3

    .line 6464
    .restart local v0    # "isKorean":Z
    .restart local v2    # "word":[S
    :cond_2
    if-ne v1, v6, :cond_6

    .line 6466
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v1

    .line 6468
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    move v3, v1

    .line 6470
    goto :goto_0

    .line 6474
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 6476
    if-ne v1, v5, :cond_4

    .line 6478
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBAddWord([SS)S

    move-result v1

    .line 6480
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 6482
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9KUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 6484
    goto :goto_0

    .line 6488
    :cond_4
    if-eqz v1, :cond_1

    .end local v0    # "isKorean":Z
    .end local v2    # "word":[S
    :cond_5
    move v3, v1

    .line 6564
    goto :goto_0

    .line 6494
    .restart local v0    # "isKorean":Z
    .restart local v2    # "word":[S
    :cond_6
    if-eqz v1, :cond_1

    move v3, v1

    .line 6500
    goto :goto_0

    .line 6507
    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 6509
    if-ne v1, v5, :cond_8

    .line 6511
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v1

    .line 6513
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 6515
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9AWUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 6517
    goto :goto_0

    .line 6521
    :cond_8
    if-ne v1, v6, :cond_b

    .line 6523
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    move-result v1

    .line 6525
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    move v3, v1

    .line 6527
    goto :goto_0

    .line 6531
    :cond_9
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 6533
    if-ne v1, v5, :cond_a

    .line 6535
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v1

    .line 6537
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 6539
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9AWUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 6541
    goto/16 :goto_0

    .line 6545
    :cond_a
    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 6551
    :cond_b
    if-eqz v1, :cond_1

    move v3, v1

    .line 6557
    goto/16 :goto_0
.end method

.method public clearContext()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5421
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 5423
    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 5425
    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 5427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    .line 5429
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v0

    return v0
.end method

.method public convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 6285
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 6287
    .local v1, "target":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 6289
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 6287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6293
    :cond_0
    return-object v1
.end method

.method public convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 6268
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 6270
    .local v1, "target":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 6272
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 6270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6276
    :cond_0
    return-object v1
.end method

.method public convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # [C
    .param p2, "length"    # I

    .prologue
    .line 6251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6253
    .local v1, "target":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 6255
    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6259
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # [S
    .param p2, "length"    # I

    .prologue
    .line 6242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6243
    .local v1, "target":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 6244
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6246
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public deleteAutoSubstitution(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "shortcut"    # Ljava/lang/CharSequence;

    .prologue
    .line 6927
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    .line 6929
    .local v2, "shortcutBuf":[S
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6931
    .local v3, "substitution":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    .line 6933
    .local v0, "retCode":I
    if-nez v0, :cond_0

    .line 6935
    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 6937
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 6939
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteAutoSubstitution ET9AWASDBDeleteEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 6987
    .end local v0    # "retCode":I
    .local v1, "retCode":I
    :goto_0
    return v1

    .line 6947
    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_0
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 6949
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    move-result v0

    .line 6951
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v1, v0

    .line 6953
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .line 6957
    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    .line 6959
    if-nez v0, :cond_2

    .line 6961
    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 6963
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 6965
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteAutoSubstitution ET9AWASDBDeleteEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 6971
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_2
    move v1, v0

    .line 6977
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_3
    move v1, v0

    .line 6983
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0

    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_4
    move v1, v0

    .line 6987
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0
.end method

.method public deleteMyWord(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "myword"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x20

    .line 6588
    const/4 v1, 0x0

    .line 6589
    .local v1, "retCode":I
    if-eqz p1, :cond_9

    .line 6590
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    .line 6592
    .local v3, "word":[S
    const/4 v0, 0x0

    .line 6594
    .local v0, "isKorean":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 6596
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    .line 6600
    :cond_0
    if-eqz v0, :cond_4

    .line 6602
    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBDeleteWord([SS)S

    move-result v1

    .line 6604
    if-ne v1, v5, :cond_2

    .line 6606
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v1

    .line 6608
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v2, v1

    .line 6695
    .end local v0    # "isKorean":Z
    .end local v1    # "retCode":I
    .end local v3    # "word":[S
    .local v2, "retCode":I
    :goto_0
    return v2

    .line 6614
    .end local v2    # "retCode":I
    .restart local v0    # "isKorean":Z
    .restart local v1    # "retCode":I
    .restart local v3    # "word":[S
    :cond_1
    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBDeleteWord([SS)S

    move-result v1

    .line 6616
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 6618
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9KUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 6620
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto :goto_0

    .line 6624
    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_2
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 6626
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9KUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 6628
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto :goto_0

    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_3
    move v2, v1

    .line 6632
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto :goto_0

    .line 6638
    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 6640
    if-nez v1, :cond_5

    .line 6642
    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    move-result v1

    .line 6644
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 6646
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9AWUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 6650
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto :goto_0

    .line 6654
    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_5
    if-ne v1, v5, :cond_8

    .line 6656
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    move-result v1

    .line 6658
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    move v2, v1

    .line 6660
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto/16 :goto_0

    .line 6664
    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_6
    invoke-virtual {p0, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    .line 6666
    if-nez v1, :cond_7

    .line 6668
    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    move-result v1

    .line 6670
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 6672
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9AWUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 6676
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto/16 :goto_0

    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_7
    move v2, v1

    .line 6682
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto/16 :goto_0

    .end local v2    # "retCode":I
    .restart local v1    # "retCode":I
    :cond_8
    move v2, v1

    .line 6688
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto/16 :goto_0

    .end local v0    # "isKorean":Z
    .end local v2    # "retCode":I
    .end local v3    # "word":[S
    .restart local v1    # "retCode":I
    :cond_9
    move v2, v1

    .line 6695
    .end local v1    # "retCode":I
    .restart local v2    # "retCode":I
    goto/16 :goto_0
.end method

.method public deleteWordFromLDB([CS)S
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 7869
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMDeleteWord([CS)S

    move-result v0

    return v0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 6
    .param p1, "bCommitSpace"    # Z

    .prologue
    const/high16 v5, 0x76690000

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 7249
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 7251
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 7302
    :goto_0
    return v2

    .line 7259
    :cond_0
    if-eqz p1, :cond_2

    .line 7261
    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7263
    .local v0, "charBeforeCorsor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 7265
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7267
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7269
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    goto :goto_0

    .line 7281
    .end local v0    # "charBeforeCorsor":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7283
    .restart local v0    # "charBeforeCorsor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 7285
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7287
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v3, v5, :cond_3

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7289
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    .line 7300
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v2

    .line 7302
    .local v2, "totalWord":I
    goto :goto_0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x12

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 7311
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v7, v4, :cond_4

    .line 7313
    const/4 v2, 0x0

    .line 7315
    .local v2, "wStatus":I
    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v4, v5, :cond_3

    .line 7317
    int-to-byte v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v2

    .line 7319
    if-eqz v2, :cond_0

    .line 7321
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSelectHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7325
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 7327
    new-array v0, v7, [S

    .line 7336
    .local v0, "HangulLen":[S
    int-to-byte v4, p1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v6, v6

    int-to-short v6, v6

    invoke-static {v4, v5, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S)S

    move-result v2

    .line 7340
    if-eqz v2, :cond_1

    .line 7342
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KGetHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7346
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v4, v4, v3

    int-to-char v4, v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7350
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v3, v0, v3

    invoke-static {v4, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v2

    .line 7352
    if-eqz v2, :cond_2

    .line 7354
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KNoteHangulDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7451
    .end local v0    # "HangulLen":[S
    .end local v2    # "wStatus":I
    :cond_2
    :goto_0
    return v2

    .line 7362
    .restart local v2    # "wStatus":I
    :cond_3
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    .line 7364
    .local v1, "pCurrentActiveWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;
    int-to-byte v4, p1

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v2

    .line 7366
    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v3, v4, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7370
    iget-object v3, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    int-to-long v4, v4

    iget-short v6, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    int-to-long v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordDone([SJJ)S

    move-result v2

    goto :goto_0

    .line 7380
    .end local v1    # "pCurrentActiveWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;
    .end local v2    # "wStatus":I
    :cond_4
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v4, :cond_8

    .line 7382
    const/4 v2, 0x0

    .line 7384
    .restart local v2    # "wStatus":I
    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v4, v5, :cond_7

    .line 7386
    int-to-byte v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v2

    .line 7388
    if-eqz v2, :cond_5

    .line 7390
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSelectHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7394
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 7396
    new-array v0, v7, [S

    .line 7401
    .restart local v0    # "HangulLen":[S
    int-to-byte v4, p1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v6, v6

    int-to-short v6, v6

    invoke-static {v4, v5, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S

    move-result v2

    .line 7409
    if-eqz v2, :cond_6

    .line 7411
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KGetHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7415
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v4, v4, v3

    int-to-char v4, v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7419
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v3, v0, v3

    invoke-static {v4, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v2

    .line 7421
    if-eqz v2, :cond_2

    .line 7423
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KNoteHangulDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7431
    .end local v0    # "HangulLen":[S
    :cond_7
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    .line 7433
    .restart local v1    # "pCurrentActiveWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;
    int-to-byte v4, p1

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v2

    .line 7435
    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v3, v4, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7439
    iget-object v3, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v2

    goto/16 :goto_0

    .end local v1    # "pCurrentActiveWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;
    .end local v2    # "wStatus":I
    :cond_8
    move v2, v3

    .line 7451
    goto/16 :goto_0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 10
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "length"    # S
    .param p3, "force"    # Z

    .prologue
    .line 6996
    const/4 v7, 0x1

    iget v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v7, v8, :cond_8

    .line 6998
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_RECAPTURE"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    .line 7000
    .local v3, "isRecaptureOn":Z
    const/4 v5, 0x0

    .line 7002
    .local v5, "wStatus":I
    if-nez v3, :cond_0

    if-eqz p3, :cond_3

    .line 7004
    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v6

    .line 7007
    .local v6, "wordbuf":[C
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->breakContext()V

    .line 7009
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    .line 7013
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    .line 7015
    .local v2, "isKorMode":Z
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    .line 7017
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 7019
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iput-short p2, v7, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    .line 7021
    const/16 v7, 0x40

    if-le p2, v7, :cond_1

    .line 7023
    const/16 p2, 0x40

    .line 7027
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 7029
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-char v8, v6, v1

    int-to-short v8, v8

    aput-short v8, v7, v1

    .line 7027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7033
    :cond_2
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    .line 7035
    .local v4, "simpleWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDecodeHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S

    .line 7037
    iget-object v7, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v8, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    int-to-char v8, v8

    invoke-static {v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KCompatibilityJamoToJamo([CC)S

    .line 7039
    iget-object v7, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v8, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-direct {p0, v7, v8, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->exceptionKorRecapture([CSZ)I

    move-result v5

    .line 7041
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 7043
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exceptionKorRecapture : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    .line 7201
    .end local v1    # "i":I
    .end local v2    # "isKorMode":Z
    .end local v3    # "isRecaptureOn":Z
    .end local v4    # "simpleWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
    .end local v5    # "wStatus":I
    .end local v6    # "wordbuf":[C
    :cond_3
    :goto_1
    return v5

    .line 7055
    .restart local v2    # "isKorMode":Z
    .restart local v3    # "isRecaptureOn":Z
    .restart local v5    # "wStatus":I
    .restart local v6    # "wordbuf":[C
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7057
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7070
    :cond_5
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_7

    .line 7073
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->recaptureForVietnamese(Ljava/lang/String;)V

    .line 7097
    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    .line 7099
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    .line 7101
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    .line 7103
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto :goto_1

    .line 7061
    :catch_0
    move-exception v0

    .line 7063
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, "SamsungIME"

    const-string v8, "StringIndexOutOfBoundsException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7065
    const/4 v5, -0x1

    goto :goto_1

    .line 7078
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_7
    invoke-direct {p0, v6, p2, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->exceptionKorRecapture([CSZ)I

    move-result v5

    .line 7080
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 7082
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exceptionKorRecapture : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7084
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto :goto_1

    .line 7109
    .end local v2    # "isKorMode":Z
    .end local v3    # "isRecaptureOn":Z
    .end local v5    # "wStatus":I
    .end local v6    # "wordbuf":[C
    :cond_8
    iget v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v7, :cond_e

    .line 7111
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v7

    if-nez v7, :cond_9

    .line 7115
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    .line 7117
    const/4 v5, 0x0

    goto :goto_1

    .line 7121
    :cond_9
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    .line 7123
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_RECAPTURE"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    .line 7125
    .restart local v3    # "isRecaptureOn":Z
    const/4 v5, 0x0

    .line 7127
    .restart local v5    # "wStatus":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->breakContext()V

    .line 7129
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    .line 7131
    if-eqz v3, :cond_3

    .line 7133
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v6

    .line 7136
    .restart local v6    # "wordbuf":[C
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x12

    if-ne v7, v8, :cond_a

    .line 7138
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    .line 7140
    .restart local v4    # "simpleWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
    const/4 v7, 0x0

    invoke-static {v6, p2, v4, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9_K_Hangul2Jamo([CSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S

    .line 7143
    iget-object v7, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v8, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-static {v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS)S

    move-result v5

    .line 7145
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    .line 7147
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9KDB_ReselectWord : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7155
    .end local v4    # "simpleWord":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7157
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    .line 7162
    :cond_b
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_d

    .line 7165
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->recaptureForVietnamese(Ljava/lang/String;)V

    .line 7187
    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    .line 7189
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    .line 7191
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    .line 7193
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto/16 :goto_1

    .line 7170
    :cond_d
    invoke-static {v6, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v5

    .line 7172
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    .line 7174
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9KDB_ReselectWord : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7176
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto/16 :goto_1

    .line 7201
    .end local v3    # "isRecaptureOn":Z
    .end local v5    # "wStatus":I
    .end local v6    # "wordbuf":[C
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public doResetMultitap()I
    .locals 1

    .prologue
    .line 7479
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    return v0
.end method

.method public findWordFromDLM([CS)Z
    .locals 2
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 7908
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMFindWord([CS)S

    move-result v0

    .line 7910
    .local v0, "wStatus":S
    if-nez v0, :cond_0

    .line 7912
    const/4 v1, 0x1

    .line 7918
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 7832
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v0

    .line 7834
    .local v0, "shortbuf":[S
    const/4 v2, 0x1

    new-array v1, v2, [S

    .line 7836
    .local v1, "shortbuflength":[S
    const/4 v2, 0x0

    array-length v3, v0

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 7838
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    const/16 v3, 0x40

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextCustomWord([S[S[SS[S)S

    move-result v2

    return v2
.end method

.method public getAutoSubstitutionsList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "shortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p2, "substitutionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v1, 0x40

    const/4 v6, 0x0

    .line 6706
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    .line 6708
    const/4 v8, 0x0

    .line 6710
    .local v8, "retCode":I
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v0, v6

    .line 6712
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    .line 6714
    const/16 v0, 0x26

    if-ne v8, v0, :cond_1

    .line 6716
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    move-result v8

    .line 6718
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    move v9, v8

    .line 6776
    .end local v8    # "retCode":I
    .local v9, "retCode":I
    :goto_0
    return v9

    .line 6724
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v0, v6

    .line 6726
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    .line 6728
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 6730
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntryCount error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 6736
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto :goto_0

    .line 6740
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_1
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 6742
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntryCount error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 6746
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto :goto_0

    .line 6750
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aget-short v0, v0, v6

    if-ge v7, v0, :cond_4

    .line 6752
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutLengthBuf:[S

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionLengthBuf:[S

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    .line 6758
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 6760
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntry error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 6764
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto :goto_0

    .line 6768
    .end local v9    # "retCode":I
    .restart local v8    # "retCode":I
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6770
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6750
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v9, v8

    .line 6776
    .end local v8    # "retCode":I
    .restart local v9    # "retCode":I
    goto/16 :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 4
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x0

    .line 5268
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 5270
    .local v0, "inputType":I
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5278
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 5288
    :goto_0
    return v2

    .line 5282
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5284
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 2
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 5297
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5299
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5301
    return v1
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7961
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSequenceCount()I
    .locals 1

    .prologue
    .line 8029
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    .line 8030
    const/4 v0, 0x0

    .line 8032
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    goto :goto_0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v2, 0xe0

    .line 5606
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v3, v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v2, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    .line 5610
    .local v2, "size":I
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 5612
    const/4 v3, 0x0

    .line 5625
    :goto_0
    return-object v3

    .line 5616
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5618
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v0, v3, :cond_2

    .line 5620
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5625
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 5761
    const/4 v0, 0x0

    .line 5763
    .local v0, "lang":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 5765
    .local v2, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 5768
    .local v1, "locale":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 6172
    const/16 v0, 0x9

    .line 6179
    :goto_0
    return v0

    .line 5772
    :sswitch_0
    const/4 v0, 0x1

    .line 5774
    goto :goto_0

    .line 5778
    :sswitch_1
    const/16 v0, 0x39

    .line 5780
    goto :goto_0

    .line 5784
    :sswitch_2
    const/16 v0, 0x4b

    .line 5786
    goto :goto_0

    .line 5790
    :sswitch_3
    const/16 v0, 0x57

    .line 5792
    goto :goto_0

    .line 5796
    :sswitch_4
    const/16 v0, 0x63

    .line 5798
    goto :goto_0

    .line 5802
    :sswitch_5
    const/16 v0, 0x6a

    .line 5804
    goto :goto_0

    .line 5808
    :sswitch_6
    const/16 v0, 0x6d

    .line 5810
    goto :goto_0

    .line 5814
    :sswitch_7
    const/16 v0, 0x74

    .line 5816
    goto :goto_0

    .line 5820
    :sswitch_8
    const/16 v0, 0x7c

    .line 5822
    goto :goto_0

    .line 5826
    :sswitch_9
    const/16 v0, 0x85

    .line 5828
    goto :goto_0

    .line 5832
    :sswitch_a
    const/16 v0, 0x84

    .line 5834
    goto :goto_0

    .line 5838
    :sswitch_b
    const/16 v0, 0x5a

    .line 5840
    goto :goto_0

    .line 5844
    :sswitch_c
    const/16 v0, 0x47

    .line 5846
    goto :goto_0

    .line 5850
    :sswitch_d
    const/4 v0, 0x2

    .line 5852
    goto :goto_0

    .line 5856
    :sswitch_e
    const/16 v0, 0xe2

    .line 5858
    goto :goto_0

    .line 5862
    :sswitch_f
    const/16 v0, 0xe1

    .line 5864
    goto :goto_0

    .line 5868
    :sswitch_10
    const/16 v0, 0xe0

    .line 5870
    goto :goto_0

    .line 5874
    :sswitch_11
    const/16 v0, 0x59

    .line 5876
    goto :goto_0

    .line 5880
    :sswitch_12
    const/4 v0, 0x5

    .line 5882
    goto :goto_0

    .line 5886
    :sswitch_13
    const/4 v0, 0x6

    .line 5888
    goto :goto_0

    .line 5892
    :sswitch_14
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5894
    const/16 v0, 0xc

    goto :goto_0

    .line 5898
    :cond_0
    const/16 v0, 0x13

    .line 5902
    goto :goto_0

    .line 5906
    :sswitch_15
    const/16 v0, 0x9

    .line 5908
    goto :goto_0

    .line 5912
    :sswitch_16
    const/16 v0, 0x9

    .line 5914
    goto :goto_0

    .line 5918
    :sswitch_17
    const/16 v0, 0x25

    .line 5920
    goto :goto_0

    .line 5924
    :sswitch_18
    const/16 v0, 0xb

    .line 5926
    goto :goto_0

    .line 5934
    :sswitch_19
    const/16 v0, 0xc

    .line 5936
    goto :goto_0

    .line 5940
    :sswitch_1a
    const/16 v0, 0x60

    .line 5942
    goto :goto_0

    .line 5946
    :sswitch_1b
    const/4 v0, 0x7

    .line 5948
    goto :goto_0

    .line 5952
    :sswitch_1c
    const/16 v0, 0x8

    .line 5954
    goto :goto_0

    .line 5958
    :sswitch_1d
    const/16 v0, 0xd

    .line 5960
    goto :goto_0

    .line 5964
    :sswitch_1e
    const/16 v0, 0xe

    .line 5966
    goto :goto_0

    .line 5970
    :sswitch_1f
    const/16 v0, 0xf

    .line 5972
    goto :goto_0

    .line 5976
    :sswitch_20
    const/16 v0, 0x21

    .line 5978
    goto :goto_0

    .line 5982
    :sswitch_21
    const/16 v0, 0x10

    .line 5984
    goto :goto_0

    .line 5988
    :sswitch_22
    const/16 v0, 0x11

    .line 5990
    goto :goto_0

    .line 5994
    :sswitch_23
    const/16 v0, 0x61

    .line 5996
    goto :goto_0

    .line 6000
    :sswitch_24
    const/16 v0, 0x12

    .line 6002
    goto :goto_0

    .line 6006
    :sswitch_25
    const/16 v0, 0x26

    .line 6008
    goto :goto_0

    .line 6012
    :sswitch_26
    const/16 v0, 0x27

    .line 6014
    goto/16 :goto_0

    .line 6018
    :sswitch_27
    const/16 v0, 0x3e

    .line 6020
    goto/16 :goto_0

    .line 6024
    :sswitch_28
    const/16 v0, 0x14

    .line 6026
    goto/16 :goto_0

    .line 6030
    :sswitch_29
    const/16 v0, 0x29

    .line 6032
    goto/16 :goto_0

    .line 6036
    :sswitch_2a
    const/16 v0, 0x15

    .line 6038
    goto/16 :goto_0

    .line 6046
    :sswitch_2b
    const/16 v0, 0x16

    .line 6048
    goto/16 :goto_0

    .line 6052
    :sswitch_2c
    const/16 v0, 0x18

    .line 6054
    goto/16 :goto_0

    .line 6058
    :sswitch_2d
    const/16 v0, 0x19

    .line 6060
    goto/16 :goto_0

    .line 6064
    :sswitch_2e
    const/16 v0, 0x80

    .line 6066
    goto/16 :goto_0

    .line 6070
    :sswitch_2f
    const/16 v0, 0x1b

    .line 6072
    goto/16 :goto_0

    .line 6076
    :sswitch_30
    const/16 v0, 0x24

    .line 6078
    goto/16 :goto_0

    .line 6086
    :sswitch_31
    const/16 v0, 0xa

    .line 6088
    goto/16 :goto_0

    .line 6092
    :sswitch_32
    const/16 v0, 0x1d

    .line 6094
    goto/16 :goto_0

    .line 6098
    :sswitch_33
    const/16 v0, 0x1e

    .line 6100
    goto/16 :goto_0

    .line 6104
    :sswitch_34
    const/16 v0, 0x1f

    .line 6106
    goto/16 :goto_0

    .line 6110
    :sswitch_35
    const/16 v0, 0x22

    .line 6112
    goto/16 :goto_0

    .line 6116
    :sswitch_36
    const/16 v0, 0x20

    .line 6118
    goto/16 :goto_0

    .line 6122
    :sswitch_37
    const/16 v0, 0x2a

    .line 6124
    goto/16 :goto_0

    .line 6128
    :sswitch_38
    const/4 v0, 0x3

    .line 6130
    goto/16 :goto_0

    .line 6134
    :sswitch_39
    const/16 v0, 0x55

    .line 6136
    goto/16 :goto_0

    .line 6140
    :sswitch_3a
    const/16 v0, 0x2d

    .line 6142
    goto/16 :goto_0

    .line 6146
    :sswitch_3b
    const/16 v0, 0x2f

    .line 6148
    goto/16 :goto_0

    .line 6152
    :sswitch_3c
    const/16 v0, 0x54

    .line 6154
    goto/16 :goto_0

    .line 6158
    :sswitch_3d
    const/16 v0, 0x1c

    .line 6160
    goto/16 :goto_0

    .line 6163
    :sswitch_3e
    const/16 v0, 0x2c

    .line 6164
    goto/16 :goto_0

    .line 6167
    :sswitch_3f
    const/16 v0, 0x2b

    .line 6168
    goto/16 :goto_0

    .line 5768
    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_c
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_2
        0x63610000 -> :sswitch_38
        0x63730000 -> :sswitch_12
        0x64610000 -> :sswitch_13
        0x64650000 -> :sswitch_1b
        0x656c0000 -> :sswitch_1c
        0x656e4742 -> :sswitch_15
        0x656e5553 -> :sswitch_16
        0x65730000 -> :sswitch_31
        0x65734553 -> :sswitch_31
        0x65735553 -> :sswitch_31
        0x65740000 -> :sswitch_17
        0x65750000 -> :sswitch_3a
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_19
        0x66724341 -> :sswitch_19
        0x66724652 -> :sswitch_19
        0x67610000 -> :sswitch_3c
        0x676c0000 -> :sswitch_39
        0x67750000 -> :sswitch_3
        0x68690000 -> :sswitch_1
        0x68720000 -> :sswitch_11
        0x68750000 -> :sswitch_1e
        0x68790000 -> :sswitch_b
        0x69640000 -> :sswitch_20
        0x69730000 -> :sswitch_1f
        0x69740000 -> :sswitch_21
        0x69770000 -> :sswitch_1d
        0x6a610000 -> :sswitch_22
        0x6b610000 -> :sswitch_1a
        0x6b6b0000 -> :sswitch_23
        0x6b6d0000 -> :sswitch_3e
        0x6b6e0000 -> :sswitch_4
        0x6b6f0000 -> :sswitch_24
        0x6c6f0000 -> :sswitch_3f
        0x6c740000 -> :sswitch_26
        0x6c760000 -> :sswitch_25
        0x6d6b0000 -> :sswitch_3b
        0x6d6c0000 -> :sswitch_5
        0x6d720000 -> :sswitch_6
        0x6d730000 -> :sswitch_27
        0x6e620000 -> :sswitch_28
        0x6e6c0000 -> :sswitch_14
        0x70610000 -> :sswitch_7
        0x706c0000 -> :sswitch_2a
        0x70740000 -> :sswitch_2b
        0x70744252 -> :sswitch_2b
        0x70745054 -> :sswitch_2b
        0x726f0000 -> :sswitch_2c
        0x72750000 -> :sswitch_2d
        0x73690000 -> :sswitch_8
        0x736b0000 -> :sswitch_2f
        0x736c0000 -> :sswitch_30
        0x73710000 -> :sswitch_3d
        0x73720000 -> :sswitch_2e
        0x73760000 -> :sswitch_32
        0x74610000 -> :sswitch_a
        0x74650000 -> :sswitch_9
        0x74680000 -> :sswitch_33
        0x74720000 -> :sswitch_34
        0x756b0000 -> :sswitch_35
        0x75720000 -> :sswitch_36
        0x76690000 -> :sswitch_37
        0x7a68434e -> :sswitch_f
        0x7a68484b -> :sswitch_e
        0x7a685457 -> :sswitch_10
    .end sparse-switch
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 13
    .param p1, "keyCode"    # I

    .prologue
    .line 7966
    const/4 v8, 0x1

    .line 7967
    .local v8, "wStatus":S
    const/16 v9, 0x20

    new-array v3, v9, [S

    .line 7968
    .local v3, "multiTapSequence":[S
    const/4 v9, 0x1

    new-array v6, v9, [S

    .line 7969
    .local v6, "totalSymbols":[S
    const/4 v9, 0x1

    new-array v0, v9, [B

    .line 7970
    .local v0, "currentSymbol":[B
    const/4 v9, 0x1

    new-array v5, v9, [S

    .line 7971
    .local v5, "sFunctionKey":[S
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7973
    .local v4, "multiTapStr":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v7

    .line 7975
    .local v7, "wKeytoMapVal":I
    const/16 v9, 0x80

    if-ne v7, v9, :cond_1

    .line 8007
    :cond_0
    :goto_0
    return-object v4

    .line 7979
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    .line 7981
    .local v2, "isPredictionOn":Z
    if-eqz v2, :cond_2

    .line 7982
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    .line 7985
    :cond_2
    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v9, v10, :cond_3

    .line 7986
    int-to-short v9, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v8

    .line 7990
    :goto_1
    if-eqz v8, :cond_4

    .line 7991
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_ProcessKey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7988
    :cond_3
    int-to-short v9, v7

    const/4 v10, 0x0

    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SB[S)S

    move-result v8

    goto :goto_1

    .line 7994
    :cond_4
    const/16 v9, 0x20

    invoke-static {v3, v9, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 7996
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    .line 7998
    if-eqz v2, :cond_5

    .line 7999
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    .line 8002
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v9, 0x0

    aget-short v9, v6, v9

    if-ge v1, v9, :cond_0

    array-length v9, v3

    if-ge v1, v9, :cond_0

    .line 8003
    aget-short v9, v3, v1

    const/16 v10, 0x30

    if-lt v9, v10, :cond_6

    aget-short v9, v3, v1

    const/16 v10, 0x39

    if-le v9, v10, :cond_7

    .line 8004
    :cond_6
    aget-short v9, v3, v1

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8002
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getMyWordsList(Ljava/util/ArrayList;Z)I
    .locals 8
    .param p2, "isKorean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "mywordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v7, 0x40

    const/16 v5, 0x20

    const/4 v6, 0x0

    .line 6302
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    .line 6304
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v1

    .line 6306
    .local v1, "ret":I
    if-eqz v1, :cond_0

    .line 6308
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    .line 6310
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    .line 6314
    :cond_0
    const/4 v2, 0x0

    .line 6316
    .local v2, "retCode":I
    if-eqz p2, :cond_5

    .line 6318
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    .line 6320
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBGetWordCount([S)S

    move-result v2

    .line 6322
    if-ne v2, v5, :cond_2

    .line 6324
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v2

    .line 6326
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    move v3, v2

    .line 6428
    .end local v2    # "retCode":I
    .local v3, "retCode":I
    :goto_0
    return v3

    .line 6332
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    .line 6334
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBGetWordCount([S)S

    move-result v2

    .line 6336
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 6338
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9KUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6342
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto :goto_0

    .line 6346
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_2
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 6348
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9KUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6350
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto :goto_0

    .line 6354
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aget-short v4, v4, v6

    if-ge v0, v4, :cond_a

    .line 6356
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    invoke-static {v4, v7, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBGetWord([SS[SB)S

    .line 6358
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 6360
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9KUDBGetWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6362
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto :goto_0

    .line 6366
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    aget-short v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6372
    .end local v0    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    .line 6374
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v2

    .line 6376
    if-ne v2, v5, :cond_7

    .line 6378
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    move-result v2

    .line 6380
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    move v3, v2

    .line 6382
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto/16 :goto_0

    .line 6386
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    .line 6388
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v2

    .line 6390
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 6392
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9AWUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6396
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto/16 :goto_0

    .line 6400
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_7
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 6402
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9AWUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6406
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto/16 :goto_0

    .line 6410
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aget-short v4, v4, v6

    if-ge v0, v4, :cond_a

    .line 6412
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    invoke-static {v4, v7, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBGetWord([SS[SB)S

    .line 6414
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 6416
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9AWUDBGetWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6418
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto/16 :goto_0

    .line 6422
    .end local v3    # "retCode":I
    .restart local v2    # "retCode":I
    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    aget-short v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v3, v2

    .line 6428
    .end local v2    # "retCode":I
    .restart local v3    # "retCode":I
    goto/16 :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5636
    .local p1, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5638
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefixCount()B

    move-result v3

    .line 5640
    .local v3, "prefixCount":B
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    .line 5642
    .local v0, "cpSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 5644
    int-to-short v6, v1

    invoke-static {v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefix(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v5

    .line 5646
    .local v5, "wStatus":S
    if-nez v5, :cond_1

    .line 5648
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0xe0

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5651
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-byte v6, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v2, v6, :cond_0

    .line 5653
    iget-object v6, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v6, v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5651
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5657
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5642
    .end local v2    # "j":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5663
    .end local v5    # "wStatus":S
    :cond_2
    const/4 v6, 0x0

    return v6
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6229
    .local p2, "predictList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    .line 6231
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getSuggestion(Ljava/util/ArrayList;)I

    .line 6234
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 7
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x0

    .line 5223
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    .line 5225
    .local v2, "isPredictionOn":Z
    if-nez v2, :cond_1

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_1

    .line 5259
    :cond_0
    return v6

    .line 5232
    :cond_1
    if-nez p1, :cond_2

    .line 5234
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5239
    .restart local p1    # "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 5242
    .local v3, "totalWordsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 5244
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5246
    .local v1, "inputWord":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 5248
    sget-object v4, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getXt9Version()I
    .locals 9

    .prologue
    .line 618
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-eqz v6, :cond_0

    .line 619
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    .line 658
    :goto_0
    return v6

    .line 622
    :cond_0
    const/16 v3, 0x64

    .line 624
    .local v3, "wBufMaxSize":S
    new-array v1, v3, [S

    .line 626
    .local v1, "psCodeVerBuf":[S
    new-array v2, v3, [S

    .line 628
    .local v2, "pwBufSize":[S
    const-string v5, ""

    .line 632
    .local v5, "xt9Version":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getXt9Version([SS[S)S

    move-result v4

    .line 634
    .local v4, "wStatus":S
    if-eqz v4, :cond_1

    .line 636
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXt9Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v6, -0x1

    goto :goto_0

    .line 642
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v6, 0xc

    if-ge v0, v6, :cond_2

    .line 644
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-short v7, v1, v0

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_2
    const-string v6, "XT9 V09.06"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 652
    const/4 v6, 0x2

    goto :goto_0

    .line 654
    :cond_3
    const-string v6, "XT9 V09"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 655
    const/4 v6, 0x1

    goto :goto_0

    .line 658
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getXt9Version([SS[S)S
    .locals 1
    .param p1, "psCodeVerBuf"    # [S
    .param p2, "wBufMaxSize"    # S
    .param p3, "pwBufSize"    # [S

    .prologue
    .line 7878
    invoke-static {p1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9GetCodeVersion([SS[S)S

    move-result v0

    return v0
.end method

.method public init()I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, -0x1

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 486
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v2, :cond_0

    .line 488
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getXt9Version()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    .line 496
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xt9 init mXt9Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v0, :cond_1

    .line 500
    const-string v2, "SamsungIME"

    const-string v3, "getXt9Version error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 506
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v6, v2, :cond_2

    .line 591
    :goto_0
    return v0

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p0}, Lcom/diotek/ime/framework/common/InputManager;->setXt9DBController(Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;)V

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    .line 518
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    .line 521
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v5, v0, :cond_7

    .line 523
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    if-nez v0, :cond_6

    .line 525
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetDataSize()I

    move-result v0

    sput v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    .line 527
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    if-nez v0, :cond_4

    .line 529
    sget v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    new-array v0, v0, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    .line 533
    :cond_4
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 535
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 537
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 539
    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 541
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 543
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLinguistic()V

    .line 545
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKDB()V

    .line 547
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    .line 557
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    .line 559
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    :cond_5
    move v0, v1

    .line 591
    goto :goto_0

    .line 551
    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initSubLinguistic()V

    goto :goto_1

    .line 561
    :cond_7
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_5

    .line 563
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    if-nez v0, :cond_8

    .line 565
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 567
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 569
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 571
    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    .line 573
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLinguistic()V

    .line 575
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKDB()V

    .line 577
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    :goto_2
    move v0, v1

    .line 585
    goto :goto_0

    .line 581
    :cond_8
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initSubLinguistic()V

    goto :goto_2
.end method

.method public initDLM()S
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1642
    const/4 v1, 0x0

    .line 1644
    .local v1, "wStatus":S
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_DLM_ENABLE"

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 1648
    .local v0, "isDLMEnable":Z
    if-eqz v0, :cond_1

    .line 1650
    sget-object v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    sget v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v1

    .line 1652
    if-eqz v1, :cond_0

    .line 1654
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWDLMInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setUDBDelayedReorder(Z)S

    .line 1678
    return v1

    .line 1662
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v1

    .line 1664
    if-eqz v1, :cond_0

    .line 1666
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWDLMInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inputKey(I)I
    .locals 12
    .param p1, "code"    # I

    .prologue
    const/16 v11, 0xe1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3153
    const/4 v5, 0x0

    .line 3154
    .local v5, "wStatus":S
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    .line 3156
    .local v3, "strokeModeOn":Z
    const/4 v8, -0x5

    if-ne p1, v8, :cond_5

    .line 3158
    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v8, v11, :cond_2

    .line 3160
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPUnselectPhrase()S

    move-result v5

    .line 3162
    const/16 v8, 0x18

    if-ne v5, v8, :cond_1

    .line 3164
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v5

    .line 3166
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    .line 3168
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9ClearOneSymb : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearContext()S

    move-result v5

    .line 3196
    :cond_1
    :goto_0
    iget v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v8

    if-ge v8, v7, :cond_7

    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v7, v11, :cond_7

    .line 3258
    :goto_1
    return v6

    .line 3178
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v5

    .line 3180
    const/4 v8, 0x6

    if-ne v5, v8, :cond_3

    .line 3182
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    move-result v5

    .line 3184
    goto :goto_1

    .line 3186
    :cond_3
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    .line 3188
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9ClearOneSymb : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    move-result v5

    goto :goto_0

    .line 3207
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isInputNumberOnComposing()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    move v0, v7

    .line 3209
    .local v0, "isNumberText":Z
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3211
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    .line 3258
    .end local v0    # "isNumberText":Z
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v6

    goto :goto_1

    :cond_8
    move v0, v6

    .line 3207
    goto :goto_2

    .line 3213
    .restart local v0    # "isNumberText":Z
    :cond_9
    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v8, v11, :cond_a

    if-eqz v3, :cond_a

    .line 3215
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v4

    .line 3217
    .local v4, "wKeytoMapVal":I
    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_3

    .line 3219
    .end local v4    # "wKeytoMapVal":I
    :cond_a
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    if-eq v8, v7, :cond_b

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    if-eq v8, v7, :cond_c

    if-eqz v0, :cond_d

    .line 3223
    :cond_c
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_3

    .line 3227
    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->processKey(I)S

    move-result v5

    .line 3230
    if-eqz v5, :cond_7

    .line 3232
    new-array v2, v7, [C

    .line 3234
    .local v2, "pwJamo":[C
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 3236
    .local v1, "isPredictionOn":Z
    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v9, 0x12

    if-ne v8, v9, :cond_e

    if-eqz v1, :cond_e

    .line 3238
    int-to-char v8, p1

    aput-char v8, v2, v6

    .line 3240
    invoke-static {v2, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KCompatibilityJamoToJamo([CC)S

    move-result v5

    .line 3242
    if-nez v5, :cond_e

    .line 3244
    aget-char p1, v2, v6

    .line 3250
    :cond_e
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_3
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 8
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "pbAddSpace"    # [Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 7552
    const/4 v3, 0x1

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v3, v4, :cond_5

    .line 7554
    if-nez p1, :cond_1

    .line 7616
    :cond_0
    :goto_0
    return v2

    .line 7560
    :cond_1
    array-length v2, p1

    new-array v1, v2, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 7562
    .local v1, "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 7564
    if-eqz p1, :cond_2

    aget-object v2, p1, v0

    if-nez v2, :cond_3

    .line 7568
    :cond_2
    aput-object v7, v1, v0

    .line 7562
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7572
    :cond_3
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v3, v3

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 7581
    :cond_4
    invoke-static {v1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ShouldAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v2

    goto :goto_0

    .line 7583
    .end local v0    # "i":I
    .end local v1    # "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_0

    .line 7585
    if-eqz p1, :cond_0

    .line 7591
    array-length v2, p1

    new-array v1, v2, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 7593
    .restart local v1    # "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_8

    .line 7595
    if-eqz p1, :cond_6

    aget-object v2, p1, v0

    if-nez v2, :cond_7

    .line 7599
    :cond_6
    aput-object v7, v1, v0

    .line 7593
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7603
    :cond_7
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v3, v3

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v2, v1, v0

    goto :goto_4

    .line 7612
    :cond_8
    invoke-static {v1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_IsAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 8013
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I
    .locals 7
    .param p1, "shortcut"    # [S
    .param p2, "outSubstitution"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 6868
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    .line 6870
    const/4 v0, 0x0

    .line 6872
    .local v0, "retCode":I
    new-array v2, v6, [S

    .line 6874
    .local v2, "substitutionBuf":[S
    const/4 v4, 0x2

    new-array v3, v4, [S

    .line 6876
    .local v3, "substitutionLengthBuf":[S
    array-length v4, p1

    int-to-short v4, v4

    invoke-static {p1, v4, v2, v6, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    .line 6880
    if-nez v0, :cond_1

    .line 6882
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6884
    aget-short v4, v3, v5

    invoke-virtual {p0, v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 6888
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 6890
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    .line 6892
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    move v1, v0

    .line 6918
    .end local v0    # "retCode":I
    .local v1, "retCode":I
    :goto_0
    return v1

    .line 6898
    .end local v1    # "retCode":I
    .restart local v0    # "retCode":I
    :cond_0
    array-length v4, p1

    int-to-short v4, v4

    invoke-static {p1, v4, v2, v6, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    .line 6904
    if-nez v0, :cond_1

    .line 6906
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6908
    aget-short v4, v3, v5

    invoke-virtual {p0, v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v0

    .line 6918
    .end local v0    # "retCode":I
    .restart local v1    # "retCode":I
    goto :goto_0
.end method

.method public isExistInMyWords([SZ)I
    .locals 3
    .param p1, "myword"    # [S
    .param p2, "isKorean"    # Z

    .prologue
    .line 6570
    const/4 v0, 0x0

    .line 6571
    .local v0, "retCode":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    .line 6572
    array-length v1, p1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    .line 6581
    :cond_0
    :goto_0
    return v0

    .line 6573
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    .line 6574
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    .line 6575
    if-eqz p2, :cond_2

    .line 6576
    array-length v1, p1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBFindWord([SS)S

    move-result v0

    goto :goto_0

    .line 6578
    :cond_2
    array-length v1, p1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    goto :goto_0
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 5570
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 5572
    const/4 v0, 0x1

    .line 5576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8024
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 8019
    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 10
    .param p1, "code"    # I

    .prologue
    const/16 v9, 0x39

    const/4 v4, 0x0

    const v8, 0x7a68434e

    const/16 v7, 0x30

    const/4 v3, 0x1

    .line 5453
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 5455
    .local v1, "range":I
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 5456
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    .line 5458
    .local v2, "strokeModeOn":Z
    if-eq v1, v3, :cond_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    :cond_0
    move v3, v4

    .line 5561
    :cond_1
    :goto_0
    return v3

    .line 5467
    :cond_2
    if-eqz v0, :cond_3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_3

    const/4 v5, 0x7

    if-ne v0, v5, :cond_8

    :cond_3
    if-nez v1, :cond_8

    .line 5471
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_4

    const/16 v5, 0x7b

    if-eq p1, v5, :cond_1

    .line 5477
    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_5

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5485
    :cond_5
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v5, v8, :cond_7

    .line 5487
    const/16 v5, 0x61

    if-lt p1, v5, :cond_6

    const/16 v5, 0x7a

    if-le p1, v5, :cond_1

    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v5

    if-eq p1, v5, :cond_1

    .line 5495
    :cond_7
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6c6f0000

    if-ne v5, v6, :cond_8

    .line 5496
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoUnicode(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5503
    :cond_8
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6d0000

    if-ne v5, v6, :cond_9

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isKhmerChar(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5507
    :cond_9
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b610000

    if-ne v5, v6, :cond_a

    if-eq p1, v3, :cond_1

    .line 5513
    :cond_a
    if-eq v0, v3, :cond_b

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_b
    if-nez v1, :cond_12

    .line 5517
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v5, v8, :cond_d

    if-eqz v2, :cond_d

    .line 5519
    const/16 v5, 0x31

    if-lt p1, v5, :cond_c

    const/16 v5, 0x35

    if-le p1, v5, :cond_1

    :cond_c
    const/16 v5, 0x2a

    if-eq p1, v5, :cond_1

    .line 5523
    const/16 v5, 0x3a

    if-ne p1, v5, :cond_f

    move v3, v4

    .line 5525
    goto :goto_0

    .line 5529
    :cond_d
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v4, v8, :cond_f

    .line 5531
    const/16 v4, 0x32

    if-lt p1, v4, :cond_e

    if-le p1, v9, :cond_1

    :cond_e
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v4

    if-eq p1, v4, :cond_1

    .line 5540
    :cond_f
    if-le p1, v7, :cond_10

    if-le p1, v9, :cond_1

    .line 5547
    :cond_10
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_11

    if-eq p1, v7, :cond_1

    const/16 v4, -0x3a

    if-eq p1, v4, :cond_1

    .line 5553
    :cond_11
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_12

    if-eq p1, v7, :cond_1

    .line 5561
    :cond_12
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public processTrace([Landroid/graphics/PointF;IB)S
    .locals 11
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "bCurrIndexInList"    # B

    .prologue
    .line 7627
    const/4 v4, 0x1

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v4, v5, :cond_7

    .line 7629
    if-nez p1, :cond_1

    .line 7631
    const/16 v2, 0x1b

    .line 7749
    :cond_0
    :goto_0
    return v2

    .line 7636
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "XT9_GESTURE_GAP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mGap:I

    .line 7640
    array-length v4, p1

    new-array v3, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 7642
    .local v3, "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    array-length v4, p1

    new-array v1, v4, [J

    .line 7644
    .local v1, "pdwTimeMS":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 7646
    if-eqz p1, :cond_2

    aget-object v4, p1, v0

    if-nez v4, :cond_3

    .line 7650
    :cond_2
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 7644
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7654
    :cond_3
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v5, v5

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-long v7, v7

    const-wide/16 v9, 0xbb8

    add-long/2addr v7, v9

    iget v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mGap:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v4, v3, v0

    .line 7658
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    goto :goto_2

    .line 7665
    :cond_4
    invoke-static {v3, p2, v1, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[JB)S

    move-result v2

    .line 7669
    .local v2, "retCode":S
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 7671
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto :goto_0

    .line 7675
    :cond_5
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 7677
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper processTrace ET9KDB_ProcessTrace error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7683
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    if-nez v4, :cond_0

    .line 7685
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto :goto_0

    .line 7691
    .end local v0    # "i":I
    .end local v1    # "pdwTimeMS":[J
    .end local v2    # "retCode":S
    .end local v3    # "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    :cond_7
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v4, :cond_e

    .line 7693
    if-nez p1, :cond_8

    .line 7695
    const/16 v2, 0x1b

    goto :goto_0

    .line 7700
    :cond_8
    array-length v4, p1

    new-array v3, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 7702
    .restart local v3    # "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_b

    .line 7704
    if-eqz p1, :cond_9

    aget-object v4, p1, v0

    if-nez v4, :cond_a

    .line 7708
    :cond_9
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 7702
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7712
    :cond_a
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v5, v5

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-long v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v4, v3, v0

    goto :goto_4

    .line 7721
    :cond_b
    invoke-static {v3, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;IB)S

    move-result v2

    .line 7725
    .restart local v2    # "retCode":S
    const/4 v4, 0x5

    if-ne v2, v4, :cond_c

    .line 7727
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto/16 :goto_0

    .line 7731
    :cond_c
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    .line 7733
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper processTrace ET9KDB_ProcessTrace error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7739
    :cond_d
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    if-nez v4, :cond_0

    .line 7741
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto/16 :goto_0

    .line 7749
    .end local v0    # "i":I
    .end local v2    # "retCode":S
    .end local v3    # "tracePoints":[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 7459
    const/4 v0, 0x0

    .line 7460
    .local v0, "wStatus":I
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 7461
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v0

    .line 7466
    :goto_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 7467
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processWhenPickSuggestionManually : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7470
    :cond_0
    return v0

    .line 7463
    :cond_1
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstSelWord(B)S

    move-result v0

    goto :goto_0
.end method

.method public reflashSelectList()I
    .locals 1

    .prologue
    .line 7896
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    .line 7898
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7488
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v0, :cond_1

    .line 7490
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7492
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7494
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7496
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7498
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7512
    :cond_0
    :goto_0
    return-void

    .line 7500
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    .line 7502
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7504
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7506
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7508
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    goto :goto_0
.end method

.method public resetDLMData()S
    .locals 1

    .prologue
    .line 7887
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMReset()S

    move-result v0

    return v0
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 7822
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    .line 7824
    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 11

    .prologue
    .line 6190
    const/4 v7, 0x0

    .line 6192
    .local v7, "wStatus":S
    const/4 v4, 0x0

    .line 6194
    .local v4, "mohuPairBitMask":S
    const/4 v5, 0x0

    .line 6196
    .local v5, "nIndex":I
    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v9, 0xe1

    if-ne v8, v9, :cond_3

    .line 6198
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v6, v5

    .end local v5    # "nIndex":I
    .local v6, "nIndex":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6200
    .local v1, "i":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6202
    sget-object v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "nIndex":I
    .restart local v5    # "nIndex":I
    aget-short v8, v8, v6

    or-int/2addr v8, v4

    int-to-short v4, v8

    .line 6198
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "nIndex":I
    .restart local v6    # "nIndex":I
    goto :goto_0

    .line 6206
    :cond_0
    sget-object v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "nIndex":I
    .restart local v5    # "nIndex":I
    aget-short v8, v8, v6

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v4

    int-to-short v4, v8

    goto :goto_1

    .line 6212
    .end local v1    # "i":Ljava/lang/String;
    .end local v5    # "nIndex":I
    .restart local v6    # "nIndex":I
    :cond_1
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetMohuPairs(S)S

    move-result v7

    .line 6214
    if-eqz v7, :cond_2

    .line 6216
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9CPSetMohuPairs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v6

    .line 6222
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "nIndex":I
    .restart local v5    # "nIndex":I
    :cond_3
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 4
    .param p1, "nPhoneticIndex"    # I

    .prologue
    .line 5587
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetActivePrefix(B)S

    move-result v0

    .line 5589
    .local v0, "wStatus":S
    if-eqz v0, :cond_0

    .line 5591
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9CPSetActivePrefix : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5595
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    .line 5597
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    .line 7952
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 7784
    return-void
.end method

.method public setKeyboardOffset(II)V
    .locals 2
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 7770
    const/4 v0, 0x1

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v0, v1, :cond_1

    .line 7772
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardOffset(SS)S

    .line 7777
    :cond_0
    :goto_0
    return-void

    .line 7774
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setKeyboardSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 7758
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardSize(SS)S

    .line 7760
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setKeyboardOffset(II)V

    .line 7762
    return-void
.end method

.method public setOptionsByState()I
    .locals 9

    .prologue
    const v8, 0x656e4742

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2031
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v4, v3, :cond_b

    .line 2035
    const/4 v2, 0x0

    .line 2037
    .local v2, "wStatus":S
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 2039
    .local v0, "isPredictionOn":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v3, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    .line 2041
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputLanguage(I)S

    .line 2043
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    .line 2045
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setNextWordPrediction(Z)V

    .line 2049
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoAppend(Z)V

    .line 2051
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    .line 2054
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 2058
    .local v1, "isWordCompletionOn":Z
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v3, v4

    :goto_3
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletion(Z)V

    .line 2061
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2063
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    invoke-interface {v3, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletionPoint(S)V

    .line 2070
    :cond_0
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_4
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setRegionalCorrectionOn(Z)V

    .line 2076
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2099
    :cond_1
    :goto_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpaceSegmentation()S

    move-result v2

    .line 2101
    if-eqz v2, :cond_2

    .line 2103
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSetSpaceSegmentation : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initDLM()S

    .line 2189
    .end local v0    # "isPredictionOn":Z
    .end local v1    # "isWordCompletionOn":Z
    .end local v2    # "wStatus":S
    :cond_3
    :goto_6
    return v5

    .restart local v0    # "isPredictionOn":Z
    .restart local v2    # "wStatus":S
    :cond_4
    move v3, v5

    .line 2045
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 2049
    goto :goto_1

    :cond_6
    move v3, v5

    .line 2051
    goto :goto_2

    .restart local v1    # "isWordCompletionOn":Z
    :cond_7
    move v3, v5

    .line 2058
    goto :goto_3

    :cond_8
    move v3, v5

    .line 2070
    goto :goto_4

    .line 2079
    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_1

    .line 2081
    invoke-static {v5, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v2

    .line 2083
    if-eqz v2, :cond_a

    .line 2085
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_Validate : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_a
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v2

    .line 2091
    if-eqz v2, :cond_1

    .line 2093
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSetSelectionListMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2111
    .end local v0    # "isPredictionOn":Z
    .end local v1    # "isWordCompletionOn":Z
    .end local v2    # "wStatus":S
    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_3

    .line 2115
    const/4 v2, 0x0

    .line 2117
    .restart local v2    # "wStatus":S
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 2119
    .restart local v0    # "isPredictionOn":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v3, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    .line 2121
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputLanguage(I)S

    .line 2123
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    .line 2125
    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_7
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setNextWordPrediction(Z)V

    .line 2129
    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_8
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoAppend(Z)V

    .line 2131
    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_9
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    .line 2134
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 2138
    .restart local v1    # "isWordCompletionOn":Z
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    move v3, v4

    :goto_a
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletion(Z)V

    .line 2141
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 2143
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    invoke-interface {v3, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletionPoint(S)V

    .line 2150
    :cond_c
    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_b
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setRegionalCorrectionOn(Z)V

    .line 2156
    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2179
    :cond_d
    :goto_c
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initCDB()S

    .line 2181
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    .line 2183
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    goto/16 :goto_6

    .end local v1    # "isWordCompletionOn":Z
    :cond_e
    move v3, v5

    .line 2125
    goto :goto_7

    :cond_f
    move v3, v5

    .line 2129
    goto :goto_8

    :cond_10
    move v3, v5

    .line 2131
    goto :goto_9

    .restart local v1    # "isWordCompletionOn":Z
    :cond_11
    move v3, v5

    .line 2138
    goto :goto_a

    :cond_12
    move v3, v5

    .line 2150
    goto :goto_b

    .line 2161
    :cond_13
    invoke-static {v5, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v2

    .line 2163
    if-eqz v2, :cond_14

    .line 2165
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_Validate : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_14
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSelectionListMode(B)S

    move-result v2

    .line 2171
    if-eqz v2, :cond_d

    .line 2173
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSysSetSelectionListMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public updateAcuteAccentState(Z)V
    .locals 4
    .param p1, "isAcuteAccent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 7791
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x656c0000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x6c760000

    if-ne v1, v2, :cond_2

    .line 7793
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 7795
    .local v0, "inputType":I
    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 7801
    :cond_1
    if-eqz p1, :cond_3

    .line 7803
    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    .line 7815
    .end local v0    # "inputType":I
    :cond_2
    :goto_0
    return-void

    .line 7807
    .restart local v0    # "inputType":I
    :cond_3
    invoke-static {v3, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    goto :goto_0
.end method

.method public updateEngine()I
    .locals 3

    .prologue
    .line 5438
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v2, 0x656e4742

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    .line 5440
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputLanguage(I)S

    .line 5442
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initSubLinguistic()V

    .line 5444
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectList()I
    .locals 19

    .prologue
    .line 4238
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    if-nez v14, :cond_0

    .line 4240
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    .line 4244
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v14, v15, :cond_f

    .line 4246
    const/4 v13, 0x0

    .line 4247
    .local v13, "wStatus":S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v11

    .line 4249
    .local v11, "strokeModeOn":Z
    const/4 v14, 0x1

    new-array v4, v14, [B

    .line 4251
    .local v4, "bTotalWords":[B
    const/4 v14, 0x1

    new-array v2, v14, [B

    .line 4253
    .local v2, "bDefaultListIndex":[B
    const/4 v14, 0x1

    new-array v10, v14, [S

    .line 4255
    .local v10, "pwGestureValue":[S
    const/4 v12, 0x0

    .line 4257
    .local v12, "totalWordsCount":I
    const/4 v5, 0x0

    .line 4259
    .local v5, "defaultListIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    .line 4261
    .local v7, "inputmode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "FIRST_PREDICTIVE_WORD_ACTIVATE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 4263
    .local v8, "isFirstActive":Z
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_b

    .line 4265
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    .line 4267
    .local v1, "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 4269
    invoke-static {v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v13

    .line 4271
    if-nez v13, :cond_1

    .line 4273
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    .line 4275
    if-eqz v13, :cond_3

    .line 4277
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    const/4 v12, -0x1

    .line 4596
    .end local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    .end local v2    # "bDefaultListIndex":[B
    .end local v4    # "bTotalWords":[B
    .end local v5    # "defaultListIndex":I
    .end local v7    # "inputmode":I
    .end local v8    # "isFirstActive":Z
    .end local v10    # "pwGestureValue":[S
    .end local v11    # "strokeModeOn":Z
    .end local v12    # "totalWordsCount":I
    .end local v13    # "wStatus":S
    :goto_0
    return v12

    .line 4285
    .restart local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    .restart local v2    # "bDefaultListIndex":[B
    .restart local v4    # "bTotalWords":[B
    .restart local v5    # "defaultListIndex":I
    .restart local v7    # "inputmode":I
    .restart local v8    # "isFirstActive":Z
    .restart local v10    # "pwGestureValue":[S
    .restart local v11    # "strokeModeOn":Z
    .restart local v12    # "totalWordsCount":I
    .restart local v13    # "wStatus":S
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v13

    .line 4287
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_2

    if-eqz v13, :cond_2

    .line 4289
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9ClearOneSymb : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    :cond_2
    invoke-static {v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v13

    .line 4295
    if-nez v13, :cond_3

    .line 4297
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    .line 4299
    if-eqz v13, :cond_3

    .line 4301
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    const/4 v12, -0x1

    goto :goto_0

    .line 4312
    :cond_3
    if-nez v13, :cond_a

    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-lez v14, :cond_a

    .line 4314
    new-instance v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 4316
    .local v9, "phraseUnicode":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    const/4 v14, 0x1

    new-array v3, v14, [B

    .line 4318
    .local v3, "bSelectedSymb":[B
    const/4 v14, 0x0

    invoke-static {v9, v14, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v13

    .line 4321
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/2addr v14, v15

    const/16 v15, 0xe0

    if-ge v14, v15, :cond_a

    .line 4323
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-lez v14, :cond_4

    .line 4325
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v6, v14, :cond_4

    .line 4327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    .line 4325
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4333
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v6, v14, :cond_a

    .line 4335
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 4337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v15, 0x27

    aput-char v15, v14, v16

    .line 4333
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4339
    :cond_6
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v15, 0x19

    if-eq v14, v15, :cond_5

    .line 4343
    if-eqz v11, :cond_9

    .line 4345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->STROKE_CHARSET:[C

    move-object/from16 v17, v0

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v14, v0, :cond_7

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x6

    move/from16 v0, v18

    if-le v14, v0, :cond_8

    :cond_7
    const/4 v14, 0x0

    :goto_4
    aget-char v14, v17, v14

    aput-char v14, v15, v16

    goto :goto_3

    :cond_8
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 4349
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    goto :goto_3

    .line 4360
    .end local v3    # "bSelectedSymb":[B
    .end local v6    # "i":I
    .end local v9    # "phraseUnicode":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    :cond_a
    const/4 v5, 0x0

    .line 4362
    const/16 v12, 0x1e

    .line 4365
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4367
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    .line 4371
    .end local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    :cond_b
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_d

    .line 4373
    invoke-static {v4, v2, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v13

    .line 4383
    :goto_5
    const/4 v14, 0x0

    aget-byte v12, v4, v14

    .line 4385
    const/4 v14, 0x0

    aget-byte v5, v2, v14

    .line 4391
    if-nez v8, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v14

    if-nez v14, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v14, :cond_e

    const/4 v14, 0x1

    if-eq v7, v14, :cond_e

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_e

    .line 4401
    const/4 v5, 0x0

    .line 4403
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4405
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    .line 4377
    :cond_d
    invoke-static {v4, v2, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B[S)S

    move-result v13

    goto :goto_5

    .line 4409
    :cond_e
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4411
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    .line 4419
    .end local v2    # "bDefaultListIndex":[B
    .end local v4    # "bTotalWords":[B
    .end local v5    # "defaultListIndex":I
    .end local v7    # "inputmode":I
    .end local v8    # "isFirstActive":Z
    .end local v10    # "pwGestureValue":[S
    .end local v11    # "strokeModeOn":Z
    .end local v12    # "totalWordsCount":I
    .end local v13    # "wStatus":S
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v14, :cond_1e

    .line 4421
    const/4 v13, 0x0

    .line 4422
    .restart local v13    # "wStatus":S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v11

    .line 4424
    .restart local v11    # "strokeModeOn":Z
    const/4 v14, 0x1

    new-array v4, v14, [B

    .line 4426
    .restart local v4    # "bTotalWords":[B
    const/4 v14, 0x1

    new-array v2, v14, [B

    .line 4428
    .restart local v2    # "bDefaultListIndex":[B
    const/4 v12, 0x0

    .line 4430
    .restart local v12    # "totalWordsCount":I
    const/4 v5, 0x0

    .line 4432
    .restart local v5    # "defaultListIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    .line 4434
    .restart local v7    # "inputmode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "FIRST_PREDICTIVE_WORD_ACTIVATE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 4436
    .restart local v8    # "isFirstActive":Z
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_1a

    .line 4438
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    .line 4440
    .restart local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 4442
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList()S

    move-result v13

    .line 4444
    if-nez v13, :cond_10

    .line 4446
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    .line 4448
    if-eqz v13, :cond_12

    .line 4450
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 4458
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v13

    .line 4460
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_11

    if-eqz v13, :cond_11

    .line 4462
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9ClearOneSymb : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList()S

    move-result v13

    .line 4468
    if-nez v13, :cond_12

    .line 4470
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    .line 4472
    if-eqz v13, :cond_12

    .line 4474
    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 4485
    :cond_12
    if-nez v13, :cond_19

    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-lez v14, :cond_19

    .line 4487
    new-instance v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 4489
    .restart local v9    # "phraseUnicode":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    const/4 v14, 0x1

    new-array v3, v14, [B

    .line 4491
    .restart local v3    # "bSelectedSymb":[B
    const/4 v14, 0x0

    invoke-static {v9, v14, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v13

    .line 4494
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/2addr v14, v15

    const/16 v15, 0xe0

    if-ge v14, v15, :cond_19

    .line 4496
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-lez v14, :cond_13

    .line 4498
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v6, v14, :cond_13

    .line 4500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    .line 4498
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 4506
    .end local v6    # "i":I
    :cond_13
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v6, v14, :cond_19

    .line 4508
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v15

    if-ne v14, v15, :cond_15

    .line 4510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v15, 0x27

    aput-char v15, v14, v16

    .line 4506
    :cond_14
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 4512
    :cond_15
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v15, 0x19

    if-eq v14, v15, :cond_14

    .line 4516
    if-eqz v11, :cond_18

    .line 4518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->STROKE_CHARSET:[C

    move-object/from16 v17, v0

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v14, v0, :cond_16

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x6

    move/from16 v0, v18

    if-le v14, v0, :cond_17

    :cond_16
    const/4 v14, 0x0

    :goto_9
    aget-char v14, v17, v14

    aput-char v14, v15, v16

    goto :goto_8

    :cond_17
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    .line 4522
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    goto :goto_8

    .line 4533
    .end local v3    # "bSelectedSymb":[B
    .end local v6    # "i":I
    .end local v9    # "phraseUnicode":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    :cond_19
    const/4 v5, 0x0

    .line 4535
    const/16 v12, 0x1e

    .line 4538
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4540
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    .line 4544
    .end local v1    # "CPSpell":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
    :cond_1a
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_1c

    .line 4546
    invoke-static {v4, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B)S

    move-result v13

    .line 4556
    :goto_a
    const/4 v14, 0x0

    aget-byte v12, v4, v14

    .line 4558
    const/4 v14, 0x0

    aget-byte v5, v2, v14

    .line 4564
    if-nez v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v14

    if-nez v14, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v14, :cond_1d

    const/4 v14, 0x1

    if-eq v7, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v14

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_1d

    .line 4576
    const/4 v5, 0x0

    .line 4578
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4580
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    .line 4550
    :cond_1c
    invoke-static {v4, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B)S

    move-result v13

    goto :goto_a

    .line 4584
    :cond_1d
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 4586
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    .line 4596
    .end local v2    # "bDefaultListIndex":[B
    .end local v4    # "bTotalWords":[B
    .end local v5    # "defaultListIndex":I
    .end local v7    # "inputmode":I
    .end local v8    # "isFirstActive":Z
    .end local v11    # "strokeModeOn":Z
    .end local v12    # "totalWordsCount":I
    .end local v13    # "wStatus":S
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public updateShiftState()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5672
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 5674
    .local v3, "isUpperCase":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    .line 5676
    .local v1, "isCapslock":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    .line 5678
    .local v2, "isShiftPressed":Z
    const/4 v4, 0x0

    .line 5681
    .local v4, "nResult":I
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->invokeTimeOut()V

    .line 5683
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 5685
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 5687
    .local v0, "inputType":I
    if-eqz v0, :cond_0

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    .line 5693
    :cond_0
    if-eqz v3, :cond_3

    .line 5695
    invoke-static {v7, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    .line 5707
    .end local v0    # "inputType":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 5709
    if-eqz v2, :cond_4

    .line 5711
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    .line 5713
    iput-byte v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    .line 5748
    :goto_1
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 5750
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateShiftState() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    :cond_2
    return-void

    .line 5699
    .restart local v0    # "inputType":I
    :cond_3
    invoke-static {v6, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    goto :goto_0

    .line 5717
    .end local v0    # "inputType":I
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    .line 5719
    iput-byte v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1

    .line 5723
    :cond_5
    if-eqz v3, :cond_7

    .line 5725
    if-eqz v2, :cond_6

    .line 5727
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    .line 5729
    iput-byte v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1

    .line 5733
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    move-result v4

    .line 5735
    iput-byte v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1

    .line 5741
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    .line 5743
    iput-byte v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0xe1

    const/16 v9, 0x65

    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 5312
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v7, v5, :cond_4

    .line 5316
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v5, v6, :cond_1

    .line 5318
    int-to-short v5, p1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSelectPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    .line 5321
    .local v3, "wStatus":S
    if-ne v3, v8, :cond_2

    .line 5323
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v3

    .line 5355
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    .line 5412
    .end local v3    # "wStatus":S
    :cond_1
    :goto_0
    return v4

    .line 5325
    .restart local v3    # "wStatus":S
    :cond_2
    if-ne v3, v9, :cond_0

    .line 5327
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 5329
    .local v2, "phrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    new-array v0, v7, [B

    .line 5331
    .local v0, "bSelectedSymb":[B
    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v3

    .line 5334
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 5336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-byte v5, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v5, :cond_3

    .line 5338
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v7, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    iput-byte v8, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v6, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v7

    .line 5336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5343
    :cond_3
    if-nez v3, :cond_1

    .line 5345
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPCommitSelection()S

    .line 5347
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto :goto_0

    .line 5361
    .end local v0    # "bSelectedSymb":[B
    .end local v1    # "i":I
    .end local v2    # "phrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    .end local v3    # "wStatus":S
    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v5, :cond_1

    .line 5365
    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v5, v6, :cond_1

    .line 5367
    int-to-short v5, p1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSelectPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    .line 5370
    .restart local v3    # "wStatus":S
    if-ne v3, v8, :cond_6

    .line 5372
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    invoke-static {v5, v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SBB)S

    move-result v3

    .line 5404
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    goto :goto_0

    .line 5374
    :cond_6
    if-ne v3, v9, :cond_5

    .line 5376
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    .line 5378
    .restart local v2    # "phrase":Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
    new-array v0, v7, [B

    .line 5380
    .restart local v0    # "bSelectedSymb":[B
    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v3

    .line 5383
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    .line 5385
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-byte v5, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v5, :cond_7

    .line 5387
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v7, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    iput-byte v8, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v6, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v7

    .line 5385
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5392
    :cond_7
    if-nez v3, :cond_1

    .line 5394
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPCommitSelection()S

    .line 5396
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto/16 :goto_0
.end method

.method public writeDBdataToFile(B)V
    .locals 13
    .param p1, "dbType"    # B

    .prologue
    const/4 v11, 0x0

    .line 1351
    const/4 v5, 0x0

    .line 1353
    .local v5, "file":Ljava/io/File;
    const-string v6, ""

    .line 1355
    .local v6, "fileName":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1357
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "xT9DB"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 1360
    .local v3, "dir":Ljava/io/File;
    const/4 v0, 0x0

    .line 1362
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 1365
    .local v2, "dbSize":I
    if-nez p1, :cond_3

    .line 1367
    const-string v6, "xT9UdbData.dat"

    .line 1369
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    .line 1371
    const/16 v2, 0x5000

    .line 1414
    :goto_0
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1417
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1421
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1437
    const/4 v7, 0x0

    .line 1441
    .local v7, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .local v8, "os":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v0, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1463
    if-eqz v8, :cond_1

    .line 1467
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 1469
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 1471
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1493
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1a

    :cond_1
    :goto_2
    move-object v7, v8

    .line 1514
    .end local v8    # "os":Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 1373
    :cond_3
    const/4 v9, 0x1

    if-ne p1, v9, :cond_4

    .line 1375
    const-string v6, "xT9CdbData.dat"

    .line 1377
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    .line 1379
    const/16 v2, 0x800

    goto :goto_0

    .line 1381
    :cond_4
    const/4 v9, 0x2

    if-ne p1, v9, :cond_5

    .line 1383
    const-string v6, "xT9ASdbData.dat"

    .line 1385
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    .line 1387
    const/16 v2, 0x2800

    goto :goto_0

    .line 1389
    :cond_5
    const/4 v9, 0x3

    if-ne p1, v9, :cond_6

    .line 1391
    const-string v6, "xT9KUdbData.dat"

    .line 1393
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    .line 1395
    const/16 v2, 0x5000

    goto :goto_0

    .line 1397
    :cond_6
    const/4 v9, 0x4

    if-ne p1, v9, :cond_7

    .line 1399
    const-string v6, "xT9DLMData.dat"

    .line 1401
    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    .line 1403
    sget v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    goto :goto_0

    .line 1407
    :cond_7
    const-string v9, "SamsungIME"

    const-string v10, "Invalid DB type!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1423
    :catch_0
    move-exception v4

    .line 1425
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1445
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 1447
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1463
    if-eqz v7, :cond_2

    .line 1467
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 1469
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 1471
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/SyncFailedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1493
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 1495
    :catch_2
    move-exception v4

    .line 1497
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1453
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1455
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not write on the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1463
    if-eqz v7, :cond_2

    .line 1467
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 1469
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 1471
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/SyncFailedException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1493
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 1495
    :catch_4
    move-exception v4

    .line 1497
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 1463
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v7, :cond_8

    .line 1467
    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 1469
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V

    .line 1471
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/SyncFailedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1493
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 1463
    :cond_8
    :goto_8
    throw v9

    .line 1473
    :catch_5
    move-exception v4

    .line 1475
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_d
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not sync the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1493
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_8

    .line 1495
    :catch_6
    move-exception v4

    .line 1497
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_9
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1481
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 1483
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_f
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1493
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_8

    .line 1495
    :catch_8
    move-exception v4

    .line 1497
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    .line 1491
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 1493
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 1491
    :goto_a
    throw v9

    .line 1495
    :catch_9
    move-exception v4

    .line 1497
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1495
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 1497
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9

    .line 1473
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v4

    .line 1475
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_12
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1493
    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto/16 :goto_3

    .line 1495
    :catch_c
    move-exception v4

    .line 1497
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 1481
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_d
    move-exception v4

    .line 1483
    .local v4, "e":Ljava/io/IOException;
    :try_start_14
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1493
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    goto/16 :goto_3

    .line 1495
    :catch_e
    move-exception v4

    .line 1497
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 1491
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    .line 1493
    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 1491
    :goto_b
    throw v9

    .line 1495
    :catch_f
    move-exception v4

    .line 1497
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1473
    :catch_10
    move-exception v4

    .line 1475
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_17
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1493
    :try_start_18
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    goto/16 :goto_3

    .line 1495
    :catch_11
    move-exception v4

    .line 1497
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 1481
    :catch_12
    move-exception v4

    .line 1483
    :try_start_19
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 1493
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    goto/16 :goto_3

    .line 1495
    :catch_13
    move-exception v4

    .line 1497
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 1491
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    .line 1493
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 1491
    :goto_c
    throw v9

    .line 1495
    :catch_14
    move-exception v4

    .line 1497
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1473
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v4

    .line 1475
    .local v4, "e":Ljava/io/SyncFailedException;
    :try_start_1c
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1493
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_16

    goto/16 :goto_2

    .line 1495
    :catch_16
    move-exception v4

    .line 1497
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1481
    .end local v4    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v4

    .line 1483
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_1e
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 1493
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18

    goto/16 :goto_2

    .line 1495
    :catch_18
    move-exception v4

    .line 1497
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 1491
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v9

    .line 1493
    :try_start_20
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19

    .line 1491
    :goto_e
    throw v9

    .line 1495
    :catch_19
    move-exception v4

    .line 1497
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1495
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v4

    .line 1497
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d

    .line 1463
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v9

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 1453
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 1445
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7519
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v0, :cond_1

    .line 7521
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7523
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7525
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7527
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7529
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7543
    :cond_0
    :goto_0
    return-void

    .line 7531
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    .line 7533
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7535
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7537
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    .line 7539
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    goto :goto_0
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "dwBufLen"    # I
    .param p3, "dwLdbNum"    # I
    .param p4, "bHighQuality"    # Z
    .param p5, "bSentenceBased"    # Z

    .prologue
    .line 7859
    invoke-static {p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMScanBuf([CIIZ)S

    move-result v0

    return v0
.end method
